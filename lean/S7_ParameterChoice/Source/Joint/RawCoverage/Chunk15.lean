import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group1
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group2
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group8
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group17
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group30
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group43
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group49
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group58
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group65
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group82
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group121
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group148
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group149
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group150
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group168

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows15 : List CoverageRow := [
  (480, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows8 JointRemainingRoutes.length8 JointRemainingRoutes.checked8 17]),
  (481, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows121 JointRemainingRoutes.length121 JointRemainingRoutes.checked121 18, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows58 JointRemainingRoutes.length58 JointRemainingRoutes.checked58 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows49 JointRemainingRoutes.length49 JointRemainingRoutes.checked49 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows17 JointRemainingRoutes.length17 JointRemainingRoutes.checked17 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows17 JointRemainingRoutes.length17 JointRemainingRoutes.checked17 6, .leaf 620]),
  (482, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows82 JointRemainingRoutes.length82 JointRemainingRoutes.checked82 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows58 JointRemainingRoutes.length58 JointRemainingRoutes.checked58 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 22, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 23, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 24, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 25, .leaf 621, .leaf 622]),
  (483, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows30 JointRemainingRoutes.length30 JointRemainingRoutes.checked30 4, .leaf 623, .leaf 624]),
  (484, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows65 JointRemainingRoutes.length65 JointRemainingRoutes.checked65 24, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows8 JointRemainingRoutes.length8 JointRemainingRoutes.checked8 18, .leaf 625]),
  (485, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 26, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows8 JointRemainingRoutes.length8 JointRemainingRoutes.checked8 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows17 JointRemainingRoutes.length17 JointRemainingRoutes.checked17 7]),
  (486, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows82 JointRemainingRoutes.length82 JointRemainingRoutes.checked82 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 27, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 28, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 29, .leaf 626]),
  (487, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 30]),
  (488, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows1 JointRemainingRoutes.length1 JointRemainingRoutes.checked1 31, .leaf 627, .leaf 628]),
  (489, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows43 JointRemainingRoutes.length43 JointRemainingRoutes.checked43 0]),
  (490, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows30 JointRemainingRoutes.length30 JointRemainingRoutes.checked30 5, .leaf 629]),
  (491, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows30 JointRemainingRoutes.length30 JointRemainingRoutes.checked30 6]),
  (492, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows8 JointRemainingRoutes.length8 JointRemainingRoutes.checked8 20, .leaf 630]),
  (493, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows2 JointRemainingRoutes.length2 JointRemainingRoutes.checked2 0]),
  (494, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows2 JointRemainingRoutes.length2 JointRemainingRoutes.checked2 1, .leaf 631]),
  (495, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows2 JointRemainingRoutes.length2 JointRemainingRoutes.checked2 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows8 JointRemainingRoutes.length8 JointRemainingRoutes.checked8 21]),
  (496, [.leaf 632]),
  (497, [.leaf 633]),
  (498, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows8 JointRemainingRoutes.length8 JointRemainingRoutes.checked8 22, .leaf 634]),
  (499, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows2 JointRemainingRoutes.length2 JointRemainingRoutes.checked2 3, .leaf 635]),
  (500, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows58 JointRemainingRoutes.length58 JointRemainingRoutes.checked58 13]),
  (501, [.leaf 636, .leaf 637]),
  (502, [.leaf 638]),
  (503, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows17 JointRemainingRoutes.length17 JointRemainingRoutes.checked17 8]),
  (504, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows2 JointRemainingRoutes.length2 JointRemainingRoutes.checked2 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows8 JointRemainingRoutes.length8 JointRemainingRoutes.checked8 23]),
  (505, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows2 JointRemainingRoutes.length2 JointRemainingRoutes.checked2 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows2 JointRemainingRoutes.length2 JointRemainingRoutes.checked2 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows2 JointRemainingRoutes.length2 JointRemainingRoutes.checked2 7, .leaf 639]),
  (506, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows168 JointRemainingRoutes.length168 JointRemainingRoutes.checked168 3]),
  (507, [.cached 489, .cached 503]),
  (508, [.cached 539, .cached 553]),
  (509, [.cached 604, .cached 609, .cached 612]),
  (510, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows148 JointRemainingRoutes.length148 JointRemainingRoutes.checked148 8, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows148 JointRemainingRoutes.length148 JointRemainingRoutes.checked148 18, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows149 JointRemainingRoutes.length149 JointRemainingRoutes.checked149 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows149 JointRemainingRoutes.length149 JointRemainingRoutes.checked149 11]),
  (511, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows150 JointRemainingRoutes.length150 JointRemainingRoutes.checked150 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows150 JointRemainingRoutes.length150 JointRemainingRoutes.checked150 13])]

theorem coverageChecked15 : coverageRows15.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked15
end DiagonalRamsey.JointRawSelector
