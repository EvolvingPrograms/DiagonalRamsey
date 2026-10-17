import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group0
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group6
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group15
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group26
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group27
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group36
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group41
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group47
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group48
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group55
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group56
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group64
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group70
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group74
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group80
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group87
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group94
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group100
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group104
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group147
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group148

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows6 : List CoverageRow := [
  (192, [.cached 183, .cached 215, .cached 239, .cached 251, .cached 267]),
  (193, [.cached 184, .cached 216]),
  (194, [.cached 252]),
  (195, [.cached 285]),
  (196, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 11]),
  (197, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 28, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows74 JointRemainingRoutes.length74 JointRemainingRoutes.checked74 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 18]),
  (198, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47 27, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 29]),
  (199, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 20]),
  (200, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 12]),
  (201, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 18]),
  (202, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows87 JointRemainingRoutes.length87 JointRemainingRoutes.checked87 3]),
  (203, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26 28]),
  (204, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47 28]),
  (205, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows74 JointRemainingRoutes.length74 JointRemainingRoutes.checked74 16]),
  (206, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26 29, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 13]),
  (207, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 30]),
  (208, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows80 JointRemainingRoutes.length80 JointRemainingRoutes.checked80 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows87 JointRemainingRoutes.length87 JointRemainingRoutes.checked87 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows94 JointRemainingRoutes.length94 JointRemainingRoutes.checked94 10, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows100 JointRemainingRoutes.length100 JointRemainingRoutes.checked100 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows104 JointRemainingRoutes.length104 JointRemainingRoutes.checked104 12]),
  (209, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows15 JointRemainingRoutes.length15 JointRemainingRoutes.checked15 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26 30, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47 29]),
  (210, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 19]),
  (211, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows74 JointRemainingRoutes.length74 JointRemainingRoutes.checked74 17]),
  (212, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows15 JointRemainingRoutes.length15 JointRemainingRoutes.checked15 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows26 JointRemainingRoutes.length26 JointRemainingRoutes.checked26 31, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47 30, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows55 JointRemainingRoutes.length55 JointRemainingRoutes.checked55 31]),
  (213, [.cached 77, .cached 116, .cached 151]),
  (214, [.cached 217, .cached 240, .cached 253, .cached 268]),
  (215, [.cached 289]),
  (216, [.cached 0, .cached 42, .cached 78, .cached 117, .cached 152, .cached 185]),
  (217, [.cached 254]),
  (218, [.cached 293]),
  (219, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows15 JointRemainingRoutes.length15 JointRemainingRoutes.checked15 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows27 JointRemainingRoutes.length27 JointRemainingRoutes.checked27 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows47 JointRemainingRoutes.length47 JointRemainingRoutes.checked47 31, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows56 JointRemainingRoutes.length56 JointRemainingRoutes.checked56 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows64 JointRemainingRoutes.length64 JointRemainingRoutes.checked64 20]),
  (220, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows87 JointRemainingRoutes.length87 JointRemainingRoutes.checked87 5]),
  (221, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows148 JointRemainingRoutes.length148 JointRemainingRoutes.checked148 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 14, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 18, .leaf 408]),
  (222, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows0 JointRemainingRoutes.length0 JointRemainingRoutes.checked0 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows6 JointRemainingRoutes.length6 JointRemainingRoutes.checked6 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows15 JointRemainingRoutes.length15 JointRemainingRoutes.checked15 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows27 JointRemainingRoutes.length27 JointRemainingRoutes.checked27 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows36 JointRemainingRoutes.length36 JointRemainingRoutes.checked36 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows41 JointRemainingRoutes.length41 JointRemainingRoutes.checked41 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows48 JointRemainingRoutes.length48 JointRemainingRoutes.checked48 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows56 JointRemainingRoutes.length56 JointRemainingRoutes.checked56 1]),
  (223, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows70 JointRemainingRoutes.length70 JointRemainingRoutes.checked70 22])]

theorem coverageChecked6 : coverageRows6.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked6
end DiagonalRamsey.JointRawSelector
