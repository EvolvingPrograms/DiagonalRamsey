import S7_ParameterChoice.Control.Table

/-!
# Checked control cells
The finite rational interval obligations are divided into twelve batches of
sixteen cells. Every batch is reduced by the Lean kernel; the final theorem
reassembles them into the uniformly indexed table obligation.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.ControlChecks

open ControlTable

def index (b : Fin 12) (j : Fin 16) : Fin cells :=
  ⟨16 * b.val + j.val, by have hb := b.isLt; have hj := j.isLt; dsimp [cells]; omega⟩

def BatchChecks (b : Fin 12) : Prop := ∀ j : Fin 16, CellChecks (index b j)

private instance (i : Fin cells) : Decidable (CellChecks i) := by
  unfold CellChecks
  infer_instance

private instance (b : Fin 12) : Decidable (BatchChecks b) := by
  unfold BatchChecks
  infer_instance

set_option maxHeartbeats 0 in
theorem batch00 : BatchChecks 0 := by decide +kernel

#print axioms batch00

set_option maxHeartbeats 0 in
theorem batch01 : BatchChecks 1 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch02 : BatchChecks 2 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch03 : BatchChecks 3 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch04 : BatchChecks 4 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch05 : BatchChecks 5 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch06 : BatchChecks 6 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch07 : BatchChecks 7 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch08 : BatchChecks 8 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch09 : BatchChecks 9 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch10 : BatchChecks 10 := by decide +kernel

set_option maxHeartbeats 0 in
theorem batch11 : BatchChecks 11 := by decide +kernel

/-- **All control cells checked.** Division and remainder identify each
of the 192 cells with exactly one checked sixteen-cell batch. -/
theorem all_cells_checked : AllCellsChecked := by
  have hb (b : Fin 12) : BatchChecks b := by
    fin_cases b
    · exact batch00
    · exact batch01
    · exact batch02
    · exact batch03
    · exact batch04
    · exact batch05
    · exact batch06
    · exact batch07
    · exact batch08
    · exact batch09
    · exact batch10
    · exact batch11
  intro i
  let b : Fin 12 := ⟨i.val / 16, by have hi := i.isLt; dsimp [cells] at hi; omega⟩
  let j : Fin 16 := ⟨i.val % 16, Nat.mod_lt _ (by decide)⟩
  have hij : index b j = i := by
    apply Fin.ext
    dsimp [index, b, j]
    omega
  simpa only [hij] using hb b j

#print axioms batch01
#print axioms batch02
#print axioms batch03
#print axioms batch04
#print axioms batch05
#print axioms batch06
#print axioms batch07
#print axioms batch08
#print axioms batch09
#print axioms batch10
#print axioms batch11
#print axioms all_cells_checked

end DiagonalRamsey.ControlChecks
