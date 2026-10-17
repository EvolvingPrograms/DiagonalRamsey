import S7_ParameterChoice.Source.Joint.LeafRun
import S7_ParameterChoice.Source.Joint.LeafBenchmark
import S7_ParameterChoice.Source.Joint.Checks.Terminals
import S7_ParameterChoice.Source.Joint.Checks.Leaves

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal0_checked : terminal0.check = true := by
  exact JointLeafBenchmark.terminal_checked

theorem benchmark_checked : benchmark.check = true := by
  have h : benchmark.leaf.geometryCheck benchmark.terminal.controls bCoefficients benchmark.profile = true :=
    JointLeafBenchmark.geometry_checked
  have hw : benchmark.window.coversKnots benchmark.profile = true ∧
      benchmark.window.startQ+benchmark.window.count ≤ benchmark.profile.toD.xs.length := by decide +kernel
  simp only [Entry.check, h, hw.1, hw.2, decide_true, Bool.true_and]

theorem all_terminals_checked : terminals.all Terminal.check = true := by
  simp only [terminals, List.all_append, List.all_cons, List.all_nil,
    terminal0_checked, terminals0_checked, terminals1_checked, terminals2_checked, terminals3_checked, terminals4_checked, terminals5_checked, terminals6_checked, terminals7_checked, terminals8_checked, terminals9_checked, terminals10_checked, terminals11_checked, terminals12_checked, terminals13_checked, terminals14_checked, terminals15_checked, terminals16_checked, terminals17_checked, terminals18_checked, terminals19_checked, terminals20_checked, terminals21_checked, terminals22_checked, terminals23_checked, terminals24_checked, terminals25_checked, terminals26_checked, terminals27_checked, terminals28_checked, terminals29_checked, terminals30_checked, terminals31_checked, terminals32_checked, terminals33_checked, terminals34_checked, terminals35_checked, terminals36_checked, terminals37_checked, terminals38_checked, terminals39_checked, Bool.and_true]

theorem all_runs_checked : entries.all Entry.check = true := by
  simp only [entries, List.all_append, List.all_cons, List.all_nil,
    benchmark_checked, entries0_checked, entries1_checked, entries2_checked, entries3_checked, entries4_checked, entries5_checked, entries6_checked, entries7_checked, entries8_checked, entries9_checked, entries10_checked, entries11_checked, entries12_checked, entries13_checked, entries14_checked, entries15_checked, entries16_checked, entries17_checked, entries18_checked, entries19_checked, entries20_checked, entries21_checked, entries22_checked, entries23_checked, entries24_checked, entries25_checked, entries26_checked, entries27_checked, entries28_checked, entries29_checked, entries30_checked, entries31_checked, entries32_checked, entries33_checked, entries34_checked, entries35_checked, entries36_checked, entries37_checked, entries38_checked, entries39_checked, entries40_checked, entries41_checked, entries42_checked, entries43_checked, entries44_checked, entries45_checked, entries46_checked, entries47_checked, entries48_checked, entries49_checked, Bool.and_true]

theorem terminal_checked (i : TerminalIndex) : (terminal i).check = true :=
  List.all_eq_true.mp all_terminals_checked _ (List.getElem_mem _)

theorem checked (i : Index) : (entry i).check = true :=
  List.all_eq_true.mp all_runs_checked _ (List.getElem_mem _)

/-- **All grouped leaf runs.** The 1,456 numerical run certificates cover
8,797 original leaf intervals. Analytic control soundness remains an explicit,
separate hypothesis; source admissibility is never assumed. -/
theorem pieces_pieceOK
    (hcert : ∀ t : TerminalIndex, (terminal t).control.toD.CertOK) (i : Index) :
    ∃ K, ∀ j : Fin ((entry i).window.count-1),
      PieceOK raw closed A B (raw (entry i).rawIndex)
        (JointRecipes.rpLo (entry i).rawIndex ((entry i).pieceIndex (checked i) j))
        (JointRecipes.rpHi (entry i).rawIndex ((entry i).pieceIndex (checked i) j)) K :=
  (entry i).pieces_pieceOK (hcert (entry i).terminalId)
    (terminal_checked (entry i).terminalId) (checked i)

/-- An original raw knot piece belongs to the checked leaf family exactly
when its original index lies in one of the grouped run windows. -/
def Covered (r : RawIndex) (j : Fin (JointRecipes.nRP r)) : Prop :=
  ∃ i : Index, (entry i).rawIndex = r ∧
    ∃ k : Fin ((entry i).window.count-1),
      ((entry i).pieceIndex (checked i) k).val = j.val

/-- **Indexed leaf coverage.** Every original piece selected by `Covered`
has the proper-host implication, conditional only on the actual leaf controls. -/
theorem covered_pieceOK
    (hcert : ∀ t : TerminalIndex, (terminal t).control.toD.CertOK)
    (r : RawIndex) (j : Fin (JointRecipes.nRP r)) (h : Covered r j) :
    ∃ K, PieceOK raw closed A B (raw r)
      (JointRecipes.rpLo r j) (JointRecipes.rpHi r j) K := by
  obtain ⟨i, hr, k, hk⟩ := h
  subst r
  have hj : (entry i).pieceIndex (checked i) k = j := Fin.ext hk
  obtain ⟨K, hK⟩ := pieces_pieceOK hcert i
  exact ⟨K, hj ▸ hK k⟩

#print axioms covered_pieceOK

#print axioms all_terminals_checked
#print axioms all_runs_checked
#print axioms pieces_pieceOK

end DiagonalRamsey.JointLeaf
