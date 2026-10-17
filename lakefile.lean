import Lake
open Lake DSL

package diagonalRamsey where
  srcDir := "."
  weakLeanArgs := #["-j4"]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "520045ab14e26149ee970e2e617ca04b09bde5d6"

lean_lib Proof where
  roots := #[`S1_Definitions, `S2_MaximalConfigurations, `S3_TwoCellReduction,
    `S4_ScalarOptimization, `S5_LocalAlternative, `S6_GlobalConstruction,
    `S7_ParameterChoice, `S8_RamseyBound, `Support]
  globs := #[.submodules `S1_Definitions, .submodules `S2_MaximalConfigurations,
    .submodules `S3_TwoCellReduction, .submodules `S4_ScalarOptimization,
    .submodules `S5_LocalAlternative, .submodules `S6_GlobalConstruction,
    .submodules `S7_ParameterChoice, .submodules `S8_RamseyBound, .submodules `Support]

lean_lib Comparison where
  srcDir := "Challenges"

@[default_target] target proof : Unit := do
  let some mod ← findModule? `S8_RamseyBound.L4_MainTheorem
    | error "Missing diagonal Ramsey theorem"
  return (← mod.leanArts.fetch).map fun _ => ()
