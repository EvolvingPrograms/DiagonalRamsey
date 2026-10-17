import S7_ParameterChoice.Source.Joint.Controls.EnvelopeGeometry

/-! Local replacement for the quadratic envelope corner checker. Pivot discovery
scans vertex lines using equality, then checks only the two neighboring slopes.
The rational corner inequalities follow from the shared ordered-polygon law. -/

set_option autoImplicit false

namespace DiagonalRamsey.JointEnvelopeCheck

open RamseyAnalytic RamseyAnalytic.ControlGeometry
open JointEnvelopeGeometry

private def zeroCell : Cell := ⟨0, 0, 0, 0⟩

def degreeAt (D : ControlCertificate.Data) (i : ℕ) : Cell :=
  D.degrees.getD i zeroCell

def vertexQ (D : ControlCertificate.Data) (i : ℕ) : ℚ :=
  if i < D.degrees.length then (degreeAt D i).left
  else (degreeAt D (D.degrees.length - 1)).right

def vertexH (D : ControlCertificate.Data) (i : ℕ) : ℚ :=
  if i < D.degrees.length then
    (degreeAt D i).slope * (degreeAt D i).left + (degreeAt D i).intercept
  else
    (degreeAt D (D.degrees.length - 1)).slope *
      (degreeAt D (D.degrees.length - 1)).right +
      (degreeAt D (D.degrees.length - 1)).intercept

def degreeM (D : ControlCertificate.Data) (i : ℕ) : ℚ := (degreeAt D i).slope

def cellEq (a b : Cell) : Bool :=
  decide (a.left = b.left ∧ a.right = b.right ∧
    a.slope = b.slope ∧ a.intercept = b.intercept)

theorem cellEq_sound {a b : Cell} (h : cellEq a b = true) : a = b := by
  cases a
  cases b
  simp_all [cellEq]

/-- Original inexpensive geometry premises, with the all-pairs corner clause
removed. Their mathematical statements and decision procedures are unchanged. -/
def CheapGeometryChecks (D : ControlCertificate.Data) : Prop :=
  0 < D.cutoff ∧ 0 < D.degrees.length ∧
  chain 0 D.degrees D.μ = true ∧ chain 0 D.cells D.cutoff = true ∧
  D.degrees.all (fun d => decide (0 ≤ d.left ∧ 0 ≤ d.right)) = true ∧
  D.cells.all (fun i => decide (0 ≤ i.left ∧ i.left ≤ i.right)) = true ∧
  D.degrees.all (fun d => decide (
    (d.slope+D.w-D.w*D.cutoff)*d.left+d.intercept ≤ 0 ∧
    (d.slope+D.w-D.w*D.cutoff)*d.right+d.intercept ≤ 0)) = true

instance (D : ControlCertificate.Data) : Decidable (CheapGeometryChecks D) := by
  unfold CheapGeometryChecks
  infer_instance

def segmentMatches (D : ControlCertificate.Data) (i : ℕ) : Bool :=
  cellEq (degreeAt D i) (segmentCell (vertexQ D) (vertexH D) (degreeM D) i)

def pivotMatches (D : ControlCertificate.Data) (I : Cell) (k : ℕ) : Bool :=
  cellEq I (vertexCell D.w (vertexQ D) (vertexH D) k I.left I.right) &&
  pivotCheck D.degrees.length k (degreeM D) (D.w - D.w * I.left) &&
  pivotCheck D.degrees.length k (degreeM D) (D.w - D.w * I.right)

/-- Arithmetic ordering and continuity are checked once. Each integration cell
then locates a matching vertex line by equality and checks its local brackets. -/
def localGeometryChecks (D : ControlCertificate.Data) : Bool :=
  decide (CheapGeometryChecks D) &&
  orderedCheck D.degrees.length (vertexQ D) (vertexH D) (degreeM D) &&
  (List.range D.degrees.length).all (segmentMatches D) &&
  D.cells.all (fun I => (List.range (D.degrees.length + 1)).any (pivotMatches D I))

theorem geometryChecks_of_local (D : ControlCertificate.Data)
    (h : localGeometryChecks D = true) : ControlCertificate.GeometryChecks D := by
  simp only [localGeometryChecks, Bool.and_eq_true] at h
  have hc : CheapGeometryChecks D := of_decide_eq_true h.1.1.1
  rcases hc with ⟨hcut, hn, hchain, hichain, hdnon, hinon, htail⟩
  refine ⟨hcut, hn, hchain, hichain, hdnon, hinon, ?_, htail⟩
  apply List.all_eq_true.mpr
  intro I hI
  obtain ⟨k, _, hk⟩ := List.any_eq_true.mp (List.all_eq_true.mp h.2 I hI)
  simp only [pivotMatches, Bool.and_eq_true] at hk
  have hIe := cellEq_sound hk.1.1
  apply List.all_eq_true.mpr
  intro d hd
  obtain ⟨i, hi, hid⟩ := List.mem_iff_getElem.mp hd
  have hdi : degreeAt D i = d := by
    simpa only [degreeAt, List.getD_eq_getElem?_getD,
      List.getElem?_eq_getElem hi, Option.getD_some] using hid
  have hdmatch := cellEq_sound
    (List.all_eq_true.mp h.1.2 i (List.mem_range.mpr hi))
  rw [← hdi, hdmatch, hIe]
  exact cornerCheck_of_checks D.degrees.length k (vertexQ D) (vertexH D)
    (degreeM D) D.w I.left I.right h.1.1.2 hk.1.2 hk.2 i hi

#print axioms geometryChecks_of_local

end DiagonalRamsey.JointEnvelopeCheck
