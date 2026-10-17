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
  simp only [coverageRows, List.all_append,
    coverageChecked0, coverageChecked1, coverageChecked2, coverageChecked3, coverageChecked4, coverageChecked5,
    coverageChecked6, coverageChecked7, coverageChecked8, coverageChecked9, coverageChecked10, coverageChecked11,
    coverageChecked12, coverageChecked13, coverageChecked14, coverageChecked15, coverageChecked16, coverageChecked17,
    coverageChecked18, coverageChecked19, coverageChecked20, coverageChecked21, coverageChecked22, coverageChecked23,
    coverageChecked24, coverageChecked25, coverageChecked26, coverageChecked27, coverageChecked28, coverageChecked29,
    coverageChecked30, coverageChecked31, coverageChecked32, coverageChecked33, coverageChecked34, coverageChecked35,
    coverageChecked36, coverageChecked37, coverageChecked38, coverageChecked39, coverageChecked40, coverageChecked41,
    coverageChecked42, coverageChecked43, coverageChecked44, coverageChecked45,
    Bool.and_self]

theorem original_indices : coverageRows.map Prod.fst = List.finRange 1469 := by decide +kernel

#print axioms coverage_checked
#print axioms original_indices
end DiagonalRamsey.JointRawSelector
