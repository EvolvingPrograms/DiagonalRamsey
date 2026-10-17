import S7_ParameterChoice.Source.Joint.Transfers.Complementary.Complementary
import S7_ParameterChoice.Source.Joint.Transfers.FastClosed

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointComplementaryChecks

open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

def donors : Fin 2 → ProfF
  | ⟨0, _⟩ => JointData.rawDatum 515
  | ⟨_+1, _⟩ => JointData.rawDatum 580

/-- **Largest complementary run.** The exact integer checker supplies
`C4_0_18` from red `R4_8_23` and blue `R4_42_200`, using 80 union breakpoints.
This measures the existing checker before further reflection machinery. -/
def benchmark : ClosedPF 2 :=
  .complRaw 0 1 ⟨23, 79⟩ ⟨31, 79⟩ [⟨23, 79⟩, ⟨40, 138⟩, ⟨80, 276⟩, ⟨20, 68⟩, ⟨16, 54⟩, ⟨40, 136⟩, ⟨80, 272⟩, ⟨5, 16⟩, ⟨80, 270⟩, ⟨8, 26⟩, ⟨80, 268⟩, ⟨20, 66⟩, ⟨80, 266⟩, ⟨3, 9⟩, ⟨40, 132⟩, ⟨16, 52⟩, ⟨10, 32⟩, ⟨80, 262⟩, ⟨40, 130⟩, ⟨80, 260⟩, ⟨4, 12⟩, ⟨80, 258⟩, ⟨40, 128⟩, ⟨80, 256⟩, ⟨5, 15⟩, ⟨16, 50⟩, ⟨40, 126⟩, ⟨80, 252⟩, ⟨20, 62⟩, ⟨80, 250⟩, ⟨8, 24⟩, ⟨80, 248⟩, ⟨10, 30⟩, ⟨80, 246⟩, ⟨13, 39⟩, ⟨40, 122⟩, ⟨16, 48⟩, ⟨20, 60⟩, ⟨80, 242⟩, ⟨40, 120⟩, ⟨80, 240⟩, ⟨1, 2⟩, ⟨80, 238⟩, ⟨40, 118⟩, ⟨27, 79⟩, ⟨80, 236⟩, ⟨20, 58⟩, ⟨16, 46⟩, ⟨40, 116⟩, ⟨80, 232⟩, ⟨10, 28⟩, ⟨80, 230⟩, ⟨8, 22⟩, ⟨80, 228⟩, ⟨7, 19⟩, ⟨20, 56⟩, ⟨80, 226⟩, ⟨40, 112⟩, ⟨16, 44⟩, ⟨5, 13⟩, ⟨80, 222⟩, ⟨40, 110⟩, ⟨80, 220⟩, ⟨29, 79⟩, ⟨4, 10⟩, ⟨80, 218⟩, ⟨40, 108⟩, ⟨80, 216⟩, ⟨10, 26⟩, ⟨16, 42⟩, ⟨40, 106⟩, ⟨3, 7⟩, ⟨80, 212⟩, ⟨20, 52⟩, ⟨80, 210⟩, ⟨8, 20⟩, ⟨80, 208⟩, ⟨5, 12⟩, ⟨80, 206⟩, ⟨31, 79⟩]

theorem benchmark_checked : benchmark.check donors (JointData.closedDatum 435) = true := by
  decide +kernel

theorem benchmark_valid :
    (ClosedPiece.complRaw (515 : RawIndex) 580).Valid raw (closed 435)
      (benchmark.lo.toQ : ℝ) (benchmark.hi.toQ : ℝ) := by
  have h := ClosedPF.valid_of_check donors (JointData.closedDatum 435) benchmark benchmark_checked
  have hR : JointFamily.rawDatum (515 : RawIndex) = (JointData.rawDatum 515).toD := rfl
  have hS : JointFamily.rawDatum (580 : RawIndex) = (JointData.rawDatum 580).toD := rfl
  simpa only [ClosedPiece.Valid, JointFamily.raw, JointFamily.closed, hR, hS,
    JointFamily.closedDatum, benchmark, ClosedPF.toD, ClosedPD.toPiece,
    ClosedPF.lo, ClosedPF.hi, donors] using h

def targetWindow : AlignedWindow := ⟨0, 5, 9, ⟨23,79⟩, ⟨31,79⟩⟩

theorem target_checked : targetWindow.coversKnots (JointData.closedDatum 435) = true ∧
    targetWindow.startQ+targetWindow.count ≤ (JointData.closedDatum 435).toD.xs.length := by
  decide +kernel

def pieceIndex (j : Fin 8) : Fin (JointRecipes.nCP 435) :=
  ⟨5+j.val, by have := j.isLt; change 5+j.val < 283; omega⟩

/-- The single complementary certificate supplies original intervals 5 through 12. -/
theorem benchmark_pieces (j : Fin 8) :
    (ClosedPiece.complRaw (515 : RawIndex) 580).Valid raw (closed 435)
      (JointRecipes.cpLo 435 (pieceIndex j)) (JointRecipes.cpHi 435 (pieceIndex j)) := by
  have hQF : (JointData.closedDatum 435).ok (JointData.closedMinimum 435) = true :=
    List.all_eq_true.mp JointData.closed_checked _
      (List.getElem_mem (show (435 : Fin 947).val < JointData.closedEntries.length from (435 : Fin 947).isLt))
  have hQ := ProfF.ok_imp _ _ hQF
  simp only [ProfD.ok, Bool.and_eq_true, decide_eq_true_eq] at hQ
  have hb := targetWindow.knot_bounds _ hQ.1.1.1.1.2 target_checked.2 target_checked.1 j.val
    (by have := j.isLt; change j.val+1 < 9; omega)
  have hp := knotIntervals_get (JointFamily.closedDatum 435).xs (pieceIndex j)
  apply JointRecipes.ClosedPiece.valid_restrict _ _ benchmark_valid
  · change (targetWindow.lo.toQ : ℝ) ≤
      (((JointRecipes.knotIntervals (JointFamily.closedDatum 435).xs).get (pieceIndex j)).1 : ℝ)
    rw [hp]
    exact hb.1
  · change (((JointRecipes.knotIntervals (JointFamily.closedDatum 435).xs).get (pieceIndex j)).2 : ℝ) ≤
      targetWindow.hi.toQ
    rw [hp]
    exact hb.2

#print axioms benchmark_checked
#print axioms benchmark_valid
#print axioms benchmark_pieces

end DiagonalRamsey.JointComplementaryChecks
