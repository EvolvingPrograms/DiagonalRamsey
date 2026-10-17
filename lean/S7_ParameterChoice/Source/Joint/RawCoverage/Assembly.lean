import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk0
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk1
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk2
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk3
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk4
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk5
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk6
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk7
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk8
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk9
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk10
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk11
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk12
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk13
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk14
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk15
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk16
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk17
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk18
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk19
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk20
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk21
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk22
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk23
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk24
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk25
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk26
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk27
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk28
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk29
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk30
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk31
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk32
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk33
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk34
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk35
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk36
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk37
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk38
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk39
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk40
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk41
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk42
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk43
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk44
import S7_ParameterChoice.Source.Joint.RawCoverage.Chunk45

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector
open JointFamily JointRecipes

def coverageRows : List CoverageRow := coverageRows0 ++ coverageRows1 ++ coverageRows2 ++ coverageRows3 ++ coverageRows4 ++ coverageRows5 ++ coverageRows6 ++ coverageRows7 ++ coverageRows8 ++ coverageRows9 ++ coverageRows10 ++ coverageRows11 ++ coverageRows12 ++ coverageRows13 ++ coverageRows14 ++ coverageRows15 ++ coverageRows16 ++ coverageRows17 ++ coverageRows18 ++ coverageRows19 ++ coverageRows20 ++ coverageRows21 ++ coverageRows22 ++ coverageRows23 ++ coverageRows24 ++ coverageRows25 ++ coverageRows26 ++ coverageRows27 ++ coverageRows28 ++ coverageRows29 ++ coverageRows30 ++ coverageRows31 ++ coverageRows32 ++ coverageRows33 ++ coverageRows34 ++ coverageRows35 ++ coverageRows36 ++ coverageRows37 ++ coverageRows38 ++ coverageRows39 ++ coverageRows40 ++ coverageRows41 ++ coverageRows42 ++ coverageRows43 ++ coverageRows44 ++ coverageRows45

theorem coverage_checked : coverageRows.all CoverageRow.check = true := by
  apply List.all_eq_true.mpr
  intro row hrow
  simp only [coverageRows, List.mem_append] at hrow
  rcases hrow with (((((((((((((((((((((((((((((((((((((((((((((h0 | h1) | h2) | h3) | h4) | h5) | h6) | h7) | h8) | h9) | h10) | h11) | h12) | h13) | h14) | h15) | h16) | h17) | h18) | h19) | h20) | h21) | h22) | h23) | h24) | h25) | h26) | h27) | h28) | h29) | h30) | h31) | h32) | h33) | h34) | h35) | h36) | h37) | h38) | h39) | h40) | h41) | h42) | h43) | h44) | h45)
  · exact List.all_eq_true.mp coverageChecked0 row h0
  · exact List.all_eq_true.mp coverageChecked1 row h1
  · exact List.all_eq_true.mp coverageChecked2 row h2
  · exact List.all_eq_true.mp coverageChecked3 row h3
  · exact List.all_eq_true.mp coverageChecked4 row h4
  · exact List.all_eq_true.mp coverageChecked5 row h5
  · exact List.all_eq_true.mp coverageChecked6 row h6
  · exact List.all_eq_true.mp coverageChecked7 row h7
  · exact List.all_eq_true.mp coverageChecked8 row h8
  · exact List.all_eq_true.mp coverageChecked9 row h9
  · exact List.all_eq_true.mp coverageChecked10 row h10
  · exact List.all_eq_true.mp coverageChecked11 row h11
  · exact List.all_eq_true.mp coverageChecked12 row h12
  · exact List.all_eq_true.mp coverageChecked13 row h13
  · exact List.all_eq_true.mp coverageChecked14 row h14
  · exact List.all_eq_true.mp coverageChecked15 row h15
  · exact List.all_eq_true.mp coverageChecked16 row h16
  · exact List.all_eq_true.mp coverageChecked17 row h17
  · exact List.all_eq_true.mp coverageChecked18 row h18
  · exact List.all_eq_true.mp coverageChecked19 row h19
  · exact List.all_eq_true.mp coverageChecked20 row h20
  · exact List.all_eq_true.mp coverageChecked21 row h21
  · exact List.all_eq_true.mp coverageChecked22 row h22
  · exact List.all_eq_true.mp coverageChecked23 row h23
  · exact List.all_eq_true.mp coverageChecked24 row h24
  · exact List.all_eq_true.mp coverageChecked25 row h25
  · exact List.all_eq_true.mp coverageChecked26 row h26
  · exact List.all_eq_true.mp coverageChecked27 row h27
  · exact List.all_eq_true.mp coverageChecked28 row h28
  · exact List.all_eq_true.mp coverageChecked29 row h29
  · exact List.all_eq_true.mp coverageChecked30 row h30
  · exact List.all_eq_true.mp coverageChecked31 row h31
  · exact List.all_eq_true.mp coverageChecked32 row h32
  · exact List.all_eq_true.mp coverageChecked33 row h33
  · exact List.all_eq_true.mp coverageChecked34 row h34
  · exact List.all_eq_true.mp coverageChecked35 row h35
  · exact List.all_eq_true.mp coverageChecked36 row h36
  · exact List.all_eq_true.mp coverageChecked37 row h37
  · exact List.all_eq_true.mp coverageChecked38 row h38
  · exact List.all_eq_true.mp coverageChecked39 row h39
  · exact List.all_eq_true.mp coverageChecked40 row h40
  · exact List.all_eq_true.mp coverageChecked41 row h41
  · exact List.all_eq_true.mp coverageChecked42 row h42
  · exact List.all_eq_true.mp coverageChecked43 row h43
  · exact List.all_eq_true.mp coverageChecked44 row h44
  · exact List.all_eq_true.mp coverageChecked45 row h45

theorem original_indices : coverageRows.map Prod.fst = List.finRange 1469 := by decide +kernel

#print axioms coverage_checked
#print axioms original_indices
end DiagonalRamsey.JointRawSelector
