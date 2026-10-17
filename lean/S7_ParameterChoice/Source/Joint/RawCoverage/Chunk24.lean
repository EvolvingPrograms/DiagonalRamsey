import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group76
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group83
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group90
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group96
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group101
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group102
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group109
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group126
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group128
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group133
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group136
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group140
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group143
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group144
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group145
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group146
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group147
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group151
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group152
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group153
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group161
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group163
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group171
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group174
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group176
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group181
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group183
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group185
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group187
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group191
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group195
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group198
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group227
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group228
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group257
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group262
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group271
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group272
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group275
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group276
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group280
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group281
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group285
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group286
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group288
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group290
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group340
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group343
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group346
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group349
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group352
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group355
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group358

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows24 : List CoverageRow := [
  (768, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows227 JointRemainingRoutes.length227 JointRemainingRoutes.checked227 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows228 JointRemainingRoutes.length228 JointRemainingRoutes.checked228 0]),
  (769, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows257 JointRemainingRoutes.length257 JointRemainingRoutes.checked257 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows262 JointRemainingRoutes.length262 JointRemainingRoutes.checked262 0]),
  (770, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows271 JointRemainingRoutes.length271 JointRemainingRoutes.checked271 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows275 JointRemainingRoutes.length275 JointRemainingRoutes.checked275 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows280 JointRemainingRoutes.length280 JointRemainingRoutes.checked280 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows285 JointRemainingRoutes.length285 JointRemainingRoutes.checked285 0]),
  (771, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows340 JointRemainingRoutes.length340 JointRemainingRoutes.checked340 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows343 JointRemainingRoutes.length343 JointRemainingRoutes.checked343 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows346 JointRemainingRoutes.length346 JointRemainingRoutes.checked346 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows349 JointRemainingRoutes.length349 JointRemainingRoutes.checked349 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows352 JointRemainingRoutes.length352 JointRemainingRoutes.checked352 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows355 JointRemainingRoutes.length355 JointRemainingRoutes.checked355 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows358 JointRemainingRoutes.length358 JointRemainingRoutes.checked358 0]),
  (772, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows272 JointRemainingRoutes.length272 JointRemainingRoutes.checked272 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows276 JointRemainingRoutes.length276 JointRemainingRoutes.checked276 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows281 JointRemainingRoutes.length281 JointRemainingRoutes.checked281 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows286 JointRemainingRoutes.length286 JointRemainingRoutes.checked286 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows288 JointRemainingRoutes.length288 JointRemainingRoutes.checked288 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows290 JointRemainingRoutes.length290 JointRemainingRoutes.checked290 0]),
  (773, [.cached 557, .cached 564, .cached 569, .cached 578, .cached 585, .cached 593, .cached 599]),
  (774, [.cached 616, .cached 623, .cached 629]),
  (775, [.cached 634, .cached 636]),
  (776, [.cached 641, .cached 647]),
  (777, [.cached 455, .cached 467, .cached 479, .cached 493, .cached 507, .cached 516, .cached 530, .cached 542]),
  (778, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows136 JointRemainingRoutes.length136 JointRemainingRoutes.checked136 16, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows140 JointRemainingRoutes.length140 JointRemainingRoutes.checked140 27, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows143 JointRemainingRoutes.length143 JointRemainingRoutes.checked143 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows144 JointRemainingRoutes.length144 JointRemainingRoutes.checked144 25, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows145 JointRemainingRoutes.length145 JointRemainingRoutes.checked145 25, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows146 JointRemainingRoutes.length146 JointRemainingRoutes.checked146 20, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 7, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows147 JointRemainingRoutes.length147 JointRemainingRoutes.checked147 22]),
  (779, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows187 JointRemainingRoutes.length187 JointRemainingRoutes.checked187 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows191 JointRemainingRoutes.length191 JointRemainingRoutes.checked191 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows195 JointRemainingRoutes.length195 JointRemainingRoutes.checked195 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows198 JointRemainingRoutes.length198 JointRemainingRoutes.checked198 2]),
  (780, [.cached 376]),
  (781, [.cached 443, .cached 456, .cached 468, .cached 480]),
  (782, [.cached 642, .cached 648]),
  (783, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows126 JointRemainingRoutes.length126 JointRemainingRoutes.checked126 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows128 JointRemainingRoutes.length128 JointRemainingRoutes.checked128 29, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows133 JointRemainingRoutes.length133 JointRemainingRoutes.checked133 18, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows136 JointRemainingRoutes.length136 JointRemainingRoutes.checked136 17]),
  (784, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows171 JointRemainingRoutes.length171 JointRemainingRoutes.checked171 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows174 JointRemainingRoutes.length174 JointRemainingRoutes.checked174 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows176 JointRemainingRoutes.length176 JointRemainingRoutes.checked176 0]),
  (785, [.cached 330]),
  (786, [.cached 737, .cached 739, .cached 741, .cached 743, .cached 745, .cached 747, .cached 749, .cached 750, .cached 751, .cached 752, .cached 753]),
  (787, [.cached 331, .cached 340, .cached 350, .cached 362, .cached 377, .cached 389, .cached 399, .cached 407]),
  (788, [.cached 309]),
  (789, [.cached 341, .cached 351, .cached 363]),
  (790, [.cached 683, .cached 689, .cached 695]),
  (791, [.cached 315, .cached 322, .cached 332, .cached 342, .cached 352]),
  (792, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows181 JointRemainingRoutes.length181 JointRemainingRoutes.checked181 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows183 JointRemainingRoutes.length183 JointRemainingRoutes.checked183 2, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows185 JointRemainingRoutes.length185 JointRemainingRoutes.checked185 0]),
  (793, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows101 JointRemainingRoutes.length101 JointRemainingRoutes.checked101 31]),
  (794, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows96 JointRemainingRoutes.length96 JointRemainingRoutes.checked96 27, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows102 JointRemainingRoutes.length102 JointRemainingRoutes.checked102 0]),
  (795, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows109 JointRemainingRoutes.length109 JointRemainingRoutes.checked109 21]),
  (796, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows151 JointRemainingRoutes.length151 JointRemainingRoutes.checked151 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows151 JointRemainingRoutes.length151 JointRemainingRoutes.checked151 11, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows152 JointRemainingRoutes.length152 JointRemainingRoutes.checked152 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows152 JointRemainingRoutes.length152 JointRemainingRoutes.checked152 13, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows153 JointRemainingRoutes.length153 JointRemainingRoutes.checked153 10]),
  (797, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows161 JointRemainingRoutes.length161 JointRemainingRoutes.checked161 4, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows163 JointRemainingRoutes.length163 JointRemainingRoutes.checked163 0]),
  (798, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows83 JointRemainingRoutes.length83 JointRemainingRoutes.checked83 27, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows90 JointRemainingRoutes.length90 JointRemainingRoutes.checked90 19]),
  (799, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows76 JointRemainingRoutes.length76 JointRemainingRoutes.checked76 26])]

theorem coverageChecked24 : coverageRows24.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked24
end DiagonalRamsey.JointRawSelector
