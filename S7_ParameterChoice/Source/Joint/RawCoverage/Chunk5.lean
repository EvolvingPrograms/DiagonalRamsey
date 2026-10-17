import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch008
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch009
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Batch010

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows5 : List CoverageRow := [
  (160, [.leaf 351, .leaf 352]),
  (161, [.leaf 353]),
  (162, [.leaf 354, .leaf 355, .leaf 356]),
  (163, [.leaf 357, .leaf 358, .leaf 359]),
  (164, [.leaf 360, .leaf 361]),
  (165, [.leaf 362]),
  (166, [.leaf 363, .leaf 364, .leaf 365, .leaf 366]),
  (167, [.leaf 367]),
  (168, [.leaf 368, .leaf 369, .leaf 370, .leaf 371, .leaf 372]),
  (169, [.leaf 373]),
  (170, [.leaf 374]),
  (171, [.leaf 375, .leaf 376, .leaf 377, .leaf 378]),
  (172, [.leaf 379]),
  (173, [.leaf 380, .leaf 381, .leaf 382, .leaf 383]),
  (174, [.leaf 384]),
  (175, [.leaf 385, .leaf 386]),
  (176, [.leaf 387, .leaf 388, .leaf 389]),
  (177, [.leaf 390, .leaf 391, .leaf 392, .leaf 393, .leaf 394]),
  (178, [.leaf 395, .leaf 396, .leaf 397]),
  (179, [.leaf 398]),
  (180, [.leaf 399, .leaf 400, .leaf 401]),
  (181, [.leaf 402]),
  (182, [.leaf 403]),
  (183, [.leaf 404, .leaf 405, .leaf 406]),
  (184, [.leaf 407]),
  (185, [.cached 292]),
  (186, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows87 JointRemainingRoutes.length87 JointRemainingRoutes.checked87 2]),
  (187, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows74 JointRemainingRoutes.length74 JointRemainingRoutes.checked74 14]),
  (188, [.cached 266]),
  (189, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 16]),
  (190, [.cached 238]),
  (191, [.cached 214])]

theorem coverageChecked5 : coverageRows5.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked5
end DiagonalRamsey.JointRawSelector
