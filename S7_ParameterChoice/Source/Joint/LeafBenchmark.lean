import S7_ParameterChoice.Source.Joint.FastLeaf

/-! Largest grouped leaf run: unchanged terminal data from the original
`rp1431_0` through `rp1431_82`; analytic control soundness remains explicit.
Generated reproducibly by `757.leaf-benchmark.py`. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeafBenchmark
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

def rawIndex : RawIndex := 1221
def profile : ProfF := JointData.rawDatum 1221
def control : CtrlF := ⟨⟨299999, 999999⟩, ⟨7, 9⟩, ⟨1, 7⟩, ⟨999, 999⟩, ⟨39804236067, 249999999999⟩, ⟨-459371894347803259, 249999999999999999⟩, ⟨-1203972804326035993, 999999999999999999⟩⟩
def controls : Fin 1 → CtrlF := fun _ => control
def aCoefficients (i : SourceIndex) : FQ := FQ.ofRat (sourceAq i)
def bCoefficients (i : SourceIndex) : FQ := FQ.ofRat (sourceBq i)
def leaf : LeafF 1 2716 :=
  ⟨⟨0, 2419, ⟨79600511683503, 499999999999999⟩, ⟨699999999999, 999999999999⟩, ⟨1, 999999999999⟩, ⟨114849223587994003, 62499999999999999⟩, ⟨356674943940260951, 999999999999999999⟩⟩, ⟨1, 399999999⟩,
    ⟨301, 79⟩, ⟨24, 4⟩,
    [⟨301, 79⟩, ⟨151, 39⟩, ⟨303, 79⟩, ⟨19, 4⟩, ⟨61, 15⟩, ⟨153, 39⟩, ⟨307, 79⟩, ⟨77, 19⟩, ⟨309, 79⟩, ⟨31, 7⟩, ⟨311, 79⟩, ⟨39, 9⟩, ⟨313, 79⟩, ⟨157, 39⟩, ⟨63, 15⟩, ⟨79, 19⟩, ⟨317, 79⟩, ⟨159, 39⟩, ⟨319, 79⟩, ⟨4, 0⟩, ⟨321, 79⟩, ⟨161, 39⟩, ⟨323, 79⟩, ⟨81, 19⟩, ⟨65, 15⟩, ⟨163, 39⟩, ⟨327, 79⟩, ⟨41, 9⟩, ⟨329, 79⟩, ⟨33, 7⟩, ⟨331, 79⟩, ⟨83, 19⟩, ⟨333, 79⟩, ⟨167, 39⟩, ⟨67, 15⟩, ⟨21, 4⟩, ⟨337, 79⟩, ⟨169, 39⟩, ⟨339, 79⟩, ⟨17, 3⟩, ⟨341, 79⟩, ⟨171, 39⟩, ⟨343, 79⟩, ⟨43, 9⟩, ⟨69, 15⟩, ⟨173, 39⟩, ⟨347, 79⟩, ⟨87, 19⟩, ⟨349, 79⟩, ⟨35, 7⟩, ⟨351, 79⟩, ⟨22, 4⟩, ⟨353, 79⟩, ⟨177, 39⟩, ⟨71, 15⟩, ⟨89, 19⟩, ⟨357, 79⟩, ⟨179, 39⟩, ⟨359, 79⟩, ⟨9, 1⟩, ⟨361, 79⟩, ⟨181, 39⟩, ⟨363, 79⟩, ⟨91, 19⟩, ⟨73, 15⟩, ⟨183, 39⟩, ⟨367, 79⟩, ⟨23, 4⟩, ⟨369, 79⟩, ⟨37, 7⟩, ⟨371, 79⟩, ⟨93, 19⟩, ⟨373, 79⟩, ⟨187, 39⟩, ⟨75, 15⟩, ⟨47, 9⟩, ⟨377, 79⟩, ⟨189, 39⟩, ⟨379, 79⟩, ⟨19, 3⟩, ⟨381, 79⟩, ⟨191, 39⟩, ⟨383, 79⟩, ⟨24, 4⟩]⟩

theorem terminal_checked : leaf.terminal.check controls aCoefficients = true := by decide +kernel

theorem geometry_checked : leaf.geometryCheck controls bCoefficients profile = true := by decide +kernel

theorem profile_eq : raw rawIndex = profile.toD.toBP := by rfl

theorem endpoints_checked :
    leaf.lo.toQ = (rawDatum rawIndex).xs.headD 0 ∧
    leaf.hi.toQ = (rawDatum rawIndex).xs.getLastD 0 := by decide +kernel

/-- **Largest leaf run.** One checked terminal and one 84-knot comparison
give the proper-host implication on the entire 83-piece run. Only the
named analytic control certificate is an additional hypothesis. -/
theorem whole_pieceOK (hcontrol : control.toD.CertOK) :
    ∃ K, PieceOK raw closed A B (raw rawIndex)
      (raw rawIndex).lo (raw rawIndex).hi K := by
  have hP : profile.toD.toBP.Valid := profile_eq ▸ raw_valid rawIndex
  obtain ⟨K, hK⟩ := leaf.pieceOK controls (fun _ => hcontrol) aCoefficients bCoefficients
    (fun i => by simpa only [aCoefficients, FQ.toQ_ofRat] using (source_coefficients_pos i).1)
    (fun i => by simpa only [bCoefficients, FQ.toQ_ofRat] using (source_coefficients_pos i).2)
    raw closed profile hP terminal_checked geometry_checked
  refine ⟨K, ?_⟩
  have hlo : (leaf.lo.toQ : ℝ) = (raw rawIndex).lo := congrArg (fun q : ℚ => (q : ℝ)) endpoints_checked.1
  have hhi : (leaf.hi.toQ : ℝ) = (raw rawIndex).hi := congrArg (fun q : ℚ => (q : ℝ)) endpoints_checked.2
  have ha : (fun i => ((aCoefficients i).toQ : ℝ)) = A := by
    funext i
    exact congrArg (fun q : ℚ => (q : ℝ)) (FQ.toQ_ofRat (sourceAq i))
  have hb : (fun i => ((bCoefficients i).toQ : ℝ)) = B := by
    funext i
    exact congrArg (fun q : ℚ => (q : ℝ)) (FQ.toQ_ofRat (sourceBq i))
  rw [ha, hb, ← profile_eq, hlo, hhi] at hK
  exact hK

/-- **Original leaf indices.** The same proper-host constant works on
each of the 83 original adjacent-knot intervals, indexed without renumbering. -/
theorem pieces_pieceOK (hcontrol : control.toD.CertOK) :
    ∃ K, ∀ j : Fin (JointRecipes.nRP rawIndex),
      PieceOK raw closed A B (raw rawIndex)
        (JointRecipes.rpLo rawIndex j) (JointRecipes.rpHi rawIndex j) K := by
  obtain ⟨K, hK⟩ := whole_pieceOK hcontrol
  exact ⟨K, fun j => JointRecipes.pieceOK_restrict
    (JointRecipes.raw_interval_bounds rawIndex j).1
    (JointRecipes.raw_interval_bounds rawIndex j).2 hK⟩

theorem original_piece_count : JointRecipes.nRP rawIndex = 83 := by decide +kernel

#print axioms terminal_checked
#print axioms geometry_checked
#print axioms whole_pieceOK
#print axioms pieces_pieceOK

end DiagonalRamsey.JointLeafBenchmark
