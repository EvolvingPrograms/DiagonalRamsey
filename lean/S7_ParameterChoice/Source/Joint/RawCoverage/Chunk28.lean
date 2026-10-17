import S7_ParameterChoice.Source.Joint.RawCoverageLaw
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group141
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group143
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group153
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group154
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group155
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group156
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group158
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group159
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group160
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group161
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group163
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group207
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group208
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group245
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group248
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group251
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group253
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group254
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group255
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group258
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group259
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group263
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group264
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group273
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group277
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group278
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group282
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group283
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group335
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group337
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group341
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group344
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group347
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group350
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group353
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group356
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group359
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group361
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group363
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group365
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group368
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group370
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group372
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group374
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group376
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group378
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group380
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group407
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group411
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group415
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group419
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group423
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group427
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group431
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group438
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group441
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group444
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group447
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group450
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group452
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group454
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group456
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group457
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group458
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group459
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group460
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group461
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group462
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group463
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group466
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group470
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group474
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group478
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group482
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group486
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group490
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group494
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group499
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group504
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group509
import S7_ParameterChoice.Source.Joint.RemainingRoutes.Group514

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointRawSelector

def coverageRows28 : List CoverageRow := [
  (896, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows207 JointRemainingRoutes.length207 JointRemainingRoutes.checked207 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows208 JointRemainingRoutes.length208 JointRemainingRoutes.checked208 0]),
  (897, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows245 JointRemainingRoutes.length245 JointRemainingRoutes.checked245 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows248 JointRemainingRoutes.length248 JointRemainingRoutes.checked248 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows251 JointRemainingRoutes.length251 JointRemainingRoutes.checked251 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows253 JointRemainingRoutes.length253 JointRemainingRoutes.checked253 0]),
  (898, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows258 JointRemainingRoutes.length258 JointRemainingRoutes.checked258 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows263 JointRemainingRoutes.length263 JointRemainingRoutes.checked263 0]),
  (899, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows273 JointRemainingRoutes.length273 JointRemainingRoutes.checked273 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows277 JointRemainingRoutes.length277 JointRemainingRoutes.checked277 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows282 JointRemainingRoutes.length282 JointRemainingRoutes.checked282 0]),
  (900, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows335 JointRemainingRoutes.length335 JointRemainingRoutes.checked335 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows337 JointRemainingRoutes.length337 JointRemainingRoutes.checked337 0]),
  (901, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows341 JointRemainingRoutes.length341 JointRemainingRoutes.checked341 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows344 JointRemainingRoutes.length344 JointRemainingRoutes.checked344 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows347 JointRemainingRoutes.length347 JointRemainingRoutes.checked347 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows350 JointRemainingRoutes.length350 JointRemainingRoutes.checked350 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows353 JointRemainingRoutes.length353 JointRemainingRoutes.checked353 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows356 JointRemainingRoutes.length356 JointRemainingRoutes.checked356 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows359 JointRemainingRoutes.length359 JointRemainingRoutes.checked359 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows361 JointRemainingRoutes.length361 JointRemainingRoutes.checked361 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows363 JointRemainingRoutes.length363 JointRemainingRoutes.checked363 0]),
  (902, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows365 JointRemainingRoutes.length365 JointRemainingRoutes.checked365 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows368 JointRemainingRoutes.length368 JointRemainingRoutes.checked368 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows370 JointRemainingRoutes.length370 JointRemainingRoutes.checked370 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows372 JointRemainingRoutes.length372 JointRemainingRoutes.checked372 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows374 JointRemainingRoutes.length374 JointRemainingRoutes.checked374 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows376 JointRemainingRoutes.length376 JointRemainingRoutes.checked376 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows378 JointRemainingRoutes.length378 JointRemainingRoutes.checked378 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows380 JointRemainingRoutes.length380 JointRemainingRoutes.checked380 0]),
  (903, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows407 JointRemainingRoutes.length407 JointRemainingRoutes.checked407 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows411 JointRemainingRoutes.length411 JointRemainingRoutes.checked411 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows415 JointRemainingRoutes.length415 JointRemainingRoutes.checked415 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows419 JointRemainingRoutes.length419 JointRemainingRoutes.checked419 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows423 JointRemainingRoutes.length423 JointRemainingRoutes.checked423 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows427 JointRemainingRoutes.length427 JointRemainingRoutes.checked427 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows431 JointRemainingRoutes.length431 JointRemainingRoutes.checked431 0]),
  (904, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows438 JointRemainingRoutes.length438 JointRemainingRoutes.checked438 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows441 JointRemainingRoutes.length441 JointRemainingRoutes.checked441 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows444 JointRemainingRoutes.length444 JointRemainingRoutes.checked444 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows447 JointRemainingRoutes.length447 JointRemainingRoutes.checked447 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows450 JointRemainingRoutes.length450 JointRemainingRoutes.checked450 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows452 JointRemainingRoutes.length452 JointRemainingRoutes.checked452 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows454 JointRemainingRoutes.length454 JointRemainingRoutes.checked454 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows456 JointRemainingRoutes.length456 JointRemainingRoutes.checked456 0]),
  (905, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows457 JointRemainingRoutes.length457 JointRemainingRoutes.checked457 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows458 JointRemainingRoutes.length458 JointRemainingRoutes.checked458 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows459 JointRemainingRoutes.length459 JointRemainingRoutes.checked459 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows460 JointRemainingRoutes.length460 JointRemainingRoutes.checked460 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows461 JointRemainingRoutes.length461 JointRemainingRoutes.checked461 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows462 JointRemainingRoutes.length462 JointRemainingRoutes.checked462 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows463 JointRemainingRoutes.length463 JointRemainingRoutes.checked463 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows466 JointRemainingRoutes.length466 JointRemainingRoutes.checked466 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows470 JointRemainingRoutes.length470 JointRemainingRoutes.checked470 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows474 JointRemainingRoutes.length474 JointRemainingRoutes.checked474 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows478 JointRemainingRoutes.length478 JointRemainingRoutes.checked478 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows482 JointRemainingRoutes.length482 JointRemainingRoutes.checked482 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows486 JointRemainingRoutes.length486 JointRemainingRoutes.checked486 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows490 JointRemainingRoutes.length490 JointRemainingRoutes.checked490 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows494 JointRemainingRoutes.length494 JointRemainingRoutes.checked494 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows499 JointRemainingRoutes.length499 JointRemainingRoutes.checked499 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows504 JointRemainingRoutes.length504 JointRemainingRoutes.checked504 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows509 JointRemainingRoutes.length509 JointRemainingRoutes.checked509 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows514 JointRemainingRoutes.length514 JointRemainingRoutes.checked514 0]),
  (906, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows158 JointRemainingRoutes.length158 JointRemainingRoutes.checked158 3, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows158 JointRemainingRoutes.length158 JointRemainingRoutes.checked158 6, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows159 JointRemainingRoutes.length159 JointRemainingRoutes.checked159 1]),
  (907, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows160 JointRemainingRoutes.length160 JointRemainingRoutes.checked160 1, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows161 JointRemainingRoutes.length161 JointRemainingRoutes.checked161 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows163 JointRemainingRoutes.length163 JointRemainingRoutes.checked163 1]),
  (908, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows153 JointRemainingRoutes.length153 JointRemainingRoutes.checked153 12, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows154 JointRemainingRoutes.length154 JointRemainingRoutes.checked154 9, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows155 JointRemainingRoutes.length155 JointRemainingRoutes.checked155 5, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows156 JointRemainingRoutes.length156 JointRemainingRoutes.checked156 1]),
  (909, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows278 JointRemainingRoutes.length278 JointRemainingRoutes.checked278 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows283 JointRemainingRoutes.length283 JointRemainingRoutes.checked283 0]),
  (910, [.cached 495, .cached 509, .cached 518]),
  (911, [.cached 543, .cached 558, .cached 565, .cached 570]),
  (912, [.cached 586, .cached 594, .cached 600]),
  (913, [.cached 444, .cached 457, .cached 469, .cached 482, .cached 496]),
  (914, [.cached 519]),
  (915, [.cached 544, .cached 559]),
  (916, [.cached 723, .cached 725, .cached 727]),
  (917, [.cached 408, .cached 419, .cached 431]),
  (918, [.cached 560, .cached 566, .cached 571]),
  (919, [.cached 804, .cached 806, .cached 808, .cached 810, .cached 812, .cached 814, .cached 816, .cached 818, .cached 820, .cached 822, .cached 11]),
  (920, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows141 JointRemainingRoutes.length141 JointRemainingRoutes.checked141 15, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows143 JointRemainingRoutes.length143 JointRemainingRoutes.checked143 19]),
  (921, [.cached 364, .cached 378, .cached 390]),
  (922, [.cached 617, .cached 624]),
  (923, [.cached 658, .cached 662, .cached 667, .cached 675]),
  (924, [routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows254 JointRemainingRoutes.length254 JointRemainingRoutes.checked254 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows255 JointRemainingRoutes.length255 JointRemainingRoutes.checked255 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows259 JointRemainingRoutes.length259 JointRemainingRoutes.checked259 0, routeGroup JointRemainingRoutes.expTable_checked JointRemainingRoutes.rows264 JointRemainingRoutes.length264 JointRemainingRoutes.checked264 0]),
  (925, [.cached 353]),
  (926, [.cached 754, .cached 755, .cached 756, .cached 757, .cached 758, .cached 759, .cached 760]),
  (927, [.cached 379, .cached 391, .cached 400])]

theorem coverageChecked28 : coverageRows28.all CoverageRow.check = true := by decide +kernel

#print axioms coverageChecked28
end DiagonalRamsey.JointRawSelector
