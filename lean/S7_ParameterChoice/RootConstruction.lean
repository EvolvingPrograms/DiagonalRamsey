import S7_ParameterChoice.L4_Routes
import S7_ParameterChoice.RootExtension

/-! Joint host-order induction for the inherited family and the five exact new
raw profiles. Inherited proper-host pieces and the actual baseline remain
explicit until their independent finite packages are complete. -/
set_option autoImplicit false

namespace DiagonalRamsey.RootConstruction
open DiagRamsey RootRoutes

def nRP (i : RawIndex) : ℕ :=
  if h : i.val < 1469 then JointRecipes.nRP ⟨i.val, h⟩ else 1

noncomputable def rpLo (i : RawIndex) (j : Fin (nRP i)) : ℝ :=
  if h : i.val < 1469 then
    JointRecipes.rpLo ⟨i.val, h⟩ ⟨j.val, by simpa only [nRP, dif_pos h] using j.isLt⟩
  else (raw i).lo

noncomputable def rpHi (i : RawIndex) (j : Fin (nRP i)) : ℝ :=
  if h : i.val < 1469 then
    JointRecipes.rpHi ⟨i.val, h⟩ ⟨j.val, by simpa only [nRP, dif_pos h] using j.isLt⟩
  else (raw i).hi

theorem ratio_cover (i : RawIndex) (r : ℝ) (hlo : (raw i).lo ≤ r) (hhi : r ≤ (raw i).hi) :
    ∃ j, rpLo i j ≤ r ∧ r ≤ rpHi i j := by
  by_cases h : i.val < 1469
  · let old : JointFamily.RawIndex := ⟨i.val, h⟩
    have hp : raw i = JointFamily.raw old := by
      simp only [raw, rawDatum, dif_pos h, JointFamily.raw, old]
    obtain ⟨j, hj⟩ := JointRecipes.raw_ratio_cover old r (hp ▸ hlo) (hp ▸ hhi)
    refine ⟨⟨j.val, by simpa only [nRP, dif_pos h] using j.isLt⟩, ?_⟩
    simpa only [rpLo, rpHi, dif_pos h] using hj
  · refine ⟨⟨0, by simp only [nRP, dif_neg h]; omega⟩, ?_⟩
    simpa only [rpLo, rpHi, dif_neg h] using And.intro hlo hhi

theorem new_pieceOK (i : Fin 5) : ∃ K,
    PieceOK raw JointFamily.closed JointFamily.A JointFamily.B
      (raw (newIndex i)) (raw (newIndex i)).lo (raw (newIndex i)).hi K := by
  fin_cases i
  · exact child_pieceOK 0
  · exact child_pieceOK 1
  · exact child_pieceOK 2
  · exact child_pieceOK 3
  · exact root_pieceOK

/-- Original pieces use the stronger extended-family proper-host premise;
each of the five new profiles uses its checked whole-profile route. -/
theorem all_pieces
    (hold : ∀ i (j : Fin (JointRecipes.nRP i)), ∃ K,
      PieceOK JointFamily.raw JointFamily.closed JointFamily.A JointFamily.B
        (JointFamily.raw i) (JointRecipes.rpLo i j) (JointRecipes.rpHi i j) K) :
    ∀ i (j : Fin (nRP i)), ∃ K,
      PieceOK raw JointFamily.closed JointFamily.A JointFamily.B
        (raw i) (rpLo i j) (rpHi i j) K := by
  intro i j
  by_cases h : i.val < 1469
  · let old : JointFamily.RawIndex := ⟨i.val, h⟩
    let oldj : Fin (JointRecipes.nRP old) :=
      ⟨j.val, by simpa only [nRP, dif_pos h] using j.isLt⟩
    obtain ⟨K, hK⟩ := hold old oldj
    have ht := RootExtension.pieceOK_reindex_raw oldIndex old_profile hK
    refine ⟨K, ?_⟩
    have hp : raw i = JointFamily.raw old := by
      simp only [raw, rawDatum, dif_pos h, JointFamily.raw, old]
    rw [hp]
    simpa only [rpLo, rpHi, dif_pos h] using ht
  · let k : Fin 5 := ⟨i.val - 1469, by have := i.isLt; omega⟩
    have he : newIndex k = i := by
      apply Fin.ext
      change 1469 + (i.val - 1469) = i.val
      omega
    have hp := new_pieceOK k
    rw [he] at hp
    simpa only [rpLo, rpHi, dif_neg h] using hp

/-- The actual baseline and the complete inherited raw family suffice for the
exact root. All five new routes and every closed/source transfer are proved. -/
theorem dense_root_of_inputs
    (hfinite : LuWang.FiniteSourceBound LuWang.CurrentSourceGeometry.F)
    (hold : ∀ i (j : Fin (JointRecipes.nRP i)), ∃ K,
      PieceOK JointFamily.raw JointFamily.closed JointFamily.A JointFamily.B
        (JointFamily.raw i) (JointRecipes.rpLo i j) (JointRecipes.rpHi i j) K) :
    DenseProfile (rawExponent : ℝ) := by
  obtain ⟨C, hC, hr, _, _⟩ := RootExtension.joint_assertions raw raw_valid
    oldIndex old_profile nRP rpLo rpHi ratio_cover (all_pieces hold) hfinite
  apply denseProfile_of_bankProfile hC (hr (newIndex 4))
  · change rootDatum.toBP.p ≤ 1/2
    norm_num [rootDatum, DiagRamsey.V5.ProfD.toBP]
  · change rootDatum.toBP.lo ≤ 1
    norm_num [rootDatum, DiagRamsey.V5.ProfD.toBP]
  · change 1 ≤ rootDatum.toBP.hi
    norm_num [rootDatum, DiagRamsey.V5.ProfD.toBP]
  · change rootDatum.toBP.L 1 ≤ (rawExponent : ℝ)
    simp [rootDatum, DiagRamsey.V5.ProfD.toBP, DiagRamsey.PL.evalR]

#print axioms all_pieces
#print axioms dense_root_of_inputs
end DiagonalRamsey.RootConstruction
