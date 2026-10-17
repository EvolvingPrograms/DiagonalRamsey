# Proof maintenance

Preserve the literal eventual Ramsey bound and its graph semantics.
The only intended admission is Comparator's isolated challenge statement.
Production proofs use the Lean kernel and standard axioms; do not add
`sorry`, custom axioms, native proof oracles, or weaken hypotheses silently.

Follow the eight-section proof order. Update one section README at a time
and keep its mathematics consistent with the Lean statements. Credit inherited
arguments and data. Keep logs, caches and speculative research outside git.

Use the pinned toolchain. Run scoped checks during edits, then the complete
CI build and independent Comparator check before declaring a
renamed or changed proof verified. Commit completed tasks with mathematical notes.
