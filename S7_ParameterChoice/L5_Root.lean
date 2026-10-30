module

public import S7_ParameterChoice.RootConstruction
public import S7_ParameterChoice.Source.Baseline
public import S7_ParameterChoice.Source.Joint.Assembly.RawAssembly

@[expose] public section

/-! The exact four child constructions and twelve-call root are instantiated
with the actual baseline and complete original raw family. -/
set_option autoImplicit false
namespace DiagonalRamsey

theorem dense_root_profile_unconditional : DenseProfile (rawExponent : ℝ) :=
  RootConstruction.dense_root_of_inputs SourceBaseline.finiteSource JointRawAssembly.all_pieces

#print axioms dense_root_profile_unconditional
end DiagonalRamsey
