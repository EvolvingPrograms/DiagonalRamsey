import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group4
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group12
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group21
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group32
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group39
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group52
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group61
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group67
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group84
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group102
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group147
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group164
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group165
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group166
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group167
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group169
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group170
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group171
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group174
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group176
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group177
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group178
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group179
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group181
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group183
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group185
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group186
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group188
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group191
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group195
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group199
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group201
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group203
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group204

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows27 : List CoverageRow := [
  (864, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows102 JointRemainingRoutes.length102 JointRemainingRoutes.checked102 18, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows67 JointRemainingRoutes.length67 JointRemainingRoutes.checked67 17, .leaf 962, .leaf 963]),
  (865, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows84 JointRemainingRoutes.length84 JointRemainingRoutes.checked84 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows52 JointRemainingRoutes.length52 JointRemainingRoutes.checked52 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows52 JointRemainingRoutes.length52 JointRemainingRoutes.checked52 8, .leaf 964]),
  (866, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 25]),
  (867, [.cached 261, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows39 JointRemainingRoutes.length39 JointRemainingRoutes.checked39 20, .leaf 965]),
  (868, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows61 JointRemainingRoutes.length61 JointRemainingRoutes.checked61 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows21 JointRemainingRoutes.length21 JointRemainingRoutes.checked21 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows21 JointRemainingRoutes.length21 JointRemainingRoutes.checked21 21, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows21 JointRemainingRoutes.length21 JointRemainingRoutes.checked21 22, .leaf 966]),
  (869, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 17, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 18, .leaf 967, .leaf 968]),
  (870, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows32 JointRemainingRoutes.length32 JointRemainingRoutes.checked32 22, .leaf 969]),
  (871, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows21 JointRemainingRoutes.length21 JointRemainingRoutes.checked21 23, .leaf 970]),
  (872, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 19, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 21, .leaf 971]),
  (873, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows4 JointRemainingRoutes.length4 JointRemainingRoutes.checked4 22, .leaf 972, .leaf 973]),
  (874, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows32 JointRemainingRoutes.length32 JointRemainingRoutes.checked32 23, .leaf 974]),
  (875, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows12 JointRemainingRoutes.length12 JointRemainingRoutes.checked12 19, .leaf 975]),
  (876, [.leaf 976, .leaf 977]),
  (877, [.leaf 978]),
  (878, [.leaf 979]),
  (879, [.leaf 980, .leaf 981]),
  (880, [.leaf 982, .leaf 983]),
  (881, [.leaf 984, .leaf 985]),
  (882, [.leaf 986]),
  (883, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows12 JointRemainingRoutes.length12 JointRemainingRoutes.checked12 20, .leaf 987]),
  (884, [.leaf 988]),
  (885, [.leaf 989]),
  (886, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows12 JointRemainingRoutes.length12 JointRemainingRoutes.checked12 21, .leaf 990]),
  (887, [.leaf 991, .leaf 992]),
  (888, [.leaf 993]),
  (889, [.leaf 994, .leaf 995]),
  (890, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows164 JointRemainingRoutes.length164 JointRemainingRoutes.checked164 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows165 JointRemainingRoutes.length165 JointRemainingRoutes.checked165 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows166 JointRemainingRoutes.length166 JointRemainingRoutes.checked166 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows167 JointRemainingRoutes.length167 JointRemainingRoutes.checked167 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows167 JointRemainingRoutes.length167 JointRemainingRoutes.checked167 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows169 JointRemainingRoutes.length169 JointRemainingRoutes.checked169 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows170 JointRemainingRoutes.length170 JointRemainingRoutes.checked170 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows170 JointRemainingRoutes.length170 JointRemainingRoutes.checked170 3]),
  (891, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows171 JointRemainingRoutes.length171 JointRemainingRoutes.checked171 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows174 JointRemainingRoutes.length174 JointRemainingRoutes.checked174 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows176 JointRemainingRoutes.length176 JointRemainingRoutes.checked176 1]),
  (892, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows177 JointRemainingRoutes.length177 JointRemainingRoutes.checked177 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows178 JointRemainingRoutes.length178 JointRemainingRoutes.checked178 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows179 JointRemainingRoutes.length179 JointRemainingRoutes.checked179 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows181 JointRemainingRoutes.length181 JointRemainingRoutes.checked181 0]),
  (893, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows183 JointRemainingRoutes.length183 JointRemainingRoutes.checked183 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows185 JointRemainingRoutes.length185 JointRemainingRoutes.checked185 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows186 JointRemainingRoutes.length186 JointRemainingRoutes.checked186 2]),
  (894, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows188 JointRemainingRoutes.length188 JointRemainingRoutes.checked188 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows191 JointRemainingRoutes.length191 JointRemainingRoutes.checked191 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows195 JointRemainingRoutes.length195 JointRemainingRoutes.checked195 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows199 JointRemainingRoutes.length199 JointRemainingRoutes.checked199 0]),
  (895, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows201 JointRemainingRoutes.length201 JointRemainingRoutes.checked201 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows203 JointRemainingRoutes.length203 JointRemainingRoutes.checked203 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows204 JointRemainingRoutes.length204 JointRemainingRoutes.checked204 2])]

theorem coverageChecked27 : coverageRows27.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked27
end DiagonalRamsey.JointRawSelector
