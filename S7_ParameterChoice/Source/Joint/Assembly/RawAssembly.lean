module

public import S7_ParameterChoice.Source.Joint.Assembly.RawCoverage.Assembly
public import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControlsSound
public import S7_ParameterChoice.Source.Joint.Leaves.LeafControlsSound

@[expose] public section

set_option autoImplicit false
namespace DiagonalRamsey.JointRawAssembly
open DiagRamsey JointFamily JointRecipes

theorem all_pieces : ∀ (r : RawIndex) (j : Fin (nRP r)),
    ∃ K, PieceOK raw closed A B (raw r) (rpLo r j) (rpHi r j) K :=
  JointRawSelector.all_pieces_of_rows JointRawSelector.coverageRows
    JointRawSelector.coverage_checked JointRawSelector.original_indices
    JointLeafControlsSound.terminal_certOK JointInheritedControlsSound.all_cert

#print axioms all_pieces
end DiagonalRamsey.JointRawAssembly
