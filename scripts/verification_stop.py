#!/usr/bin/env python3
"""Request or observe a run-specific stop at the next Lean module boundary."""
import argparse
import json
import os
from pathlib import Path
import re
import subprocess
import time


def marker(run_id, attempt):
    if not re.fullmatch(r'[1-9][0-9]*', str(run_id)) or not re.fullmatch(r'[1-9][0-9]*', str(attempt)):
        raise ValueError('Run ID and attempt must be positive integers')
    return f'tags/verification-stop/{run_id}-{attempt}'


class StopControl:
    def __init__(self, path=None):
        self.path = Path(path) if path else None
        self.repo = os.environ.get('GITHUB_REPOSITORY')
        self.ref = (marker(os.environ['GITHUB_RUN_ID'], os.environ['GITHUB_RUN_ATTEMPT'])
                    if os.environ.get('VERIFY_REMOTE_STOP') == '1' else None)
        if self.ref and (not self.repo or not re.fullmatch(r'[\w.-]+/[\w.-]+', self.repo)):
            raise ValueError('Missing or invalid repository for stop control')
        self.next_poll = 0
        self.warned = False

    def requested(self):
        if self.path and self.path.is_file():
            return True
        if not self.ref or time.monotonic() < self.next_poll:
            return False
        self.next_poll = time.monotonic() + 30
        try:
            result = subprocess.run(
                ['gh', 'api', f'repos/{self.repo}/git/ref/{self.ref}'],
                capture_output=True, text=True, timeout=15)
            if result.returncode == 0:
                return json.loads(result.stdout).get('ref') == 'refs/' + self.ref
            if '(HTTP 404)' in result.stderr:
                return False
        except (OSError, subprocess.TimeoutExpired, ValueError):
            pass
        if not self.warned:
            print('Stop-control lookup unavailable; verification continues and will retry.', flush=True)
            self.warned = True
        return False

def request_stop(repo, run_id):
    run = json.loads(subprocess.check_output(
        ['gh', 'api', f'repos/{repo}/actions/runs/{run_id}'], text=True))
    if run['status'] != 'in_progress':
        raise ValueError('The selected run is not in progress')
    ref = marker(run_id, run['run_attempt'])
    endpoint = f'repos/{repo}/git/refs'
    # A lightweight tag is only a control marker; it does not change proof sources.
    subprocess.run(['gh', 'api', endpoint, '--method', 'POST',
                    '-f', 'ref=refs/' + ref, '-f', 'sha=' + run['head_sha']],
                   check=True, stdout=subprocess.DEVNULL)
    print(f'Stop requested for run {run_id}, attempt {run["run_attempt"]}. '
          'The updated parallel verifier finishes only its oldest active module, '
          'cancels the others, and retains the accepted cache. Older runs use their pinned stop behavior.')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('run_id', type=int)
    parser.add_argument('--repo', default='EvolvingPrograms/DiagonalRamsey')
    args = parser.parse_args()
    request_stop(args.repo, args.run_id)
