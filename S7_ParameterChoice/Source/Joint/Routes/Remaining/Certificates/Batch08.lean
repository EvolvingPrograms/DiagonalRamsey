import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked8 : rows8.all (Row.check expTable) = true := by decide +kernel

theorem length8 : rows8.length = 32 := by decide

def runs8 : List (Run expTable) := (List.finRange rows8.length).map (Run.ofGroup expTable rows8 checked8)

#print axioms checked8

theorem checked24 : rows24.all (Row.check expTable) = true := by decide +kernel

theorem length24 : rows24.length = 32 := by decide

def runs24 : List (Run expTable) := (List.finRange rows24.length).map (Run.ofGroup expTable rows24 checked24)

#print axioms checked24

theorem checked40 : rows40.all (Row.check expTable) = true := by decide +kernel

theorem length40 : rows40.length = 32 := by decide

def runs40 : List (Run expTable) := (List.finRange rows40.length).map (Run.ofGroup expTable rows40 checked40)

#print axioms checked40

theorem checked56 : rows56.all (Row.check expTable) = true := by decide +kernel

theorem length56 : rows56.length = 32 := by decide

def runs56 : List (Run expTable) := (List.finRange rows56.length).map (Run.ofGroup expTable rows56 checked56)

#print axioms checked56

theorem checked72 : rows72.all (Row.check expTable) = true := by decide +kernel

theorem length72 : rows72.length = 32 := by decide

def runs72 : List (Run expTable) := (List.finRange rows72.length).map (Run.ofGroup expTable rows72 checked72)

#print axioms checked72

theorem checked88 : rows88.all (Row.check expTable) = true := by decide +kernel

theorem length88 : rows88.length = 32 := by decide

def runs88 : List (Run expTable) := (List.finRange rows88.length).map (Run.ofGroup expTable rows88 checked88)

#print axioms checked88

theorem checked104 : rows104.all (Row.check expTable) = true := by decide +kernel

theorem length104 : rows104.length = 32 := by decide

def runs104 : List (Run expTable) := (List.finRange rows104.length).map (Run.ofGroup expTable rows104 checked104)

#print axioms checked104

theorem checked120 : rows120.all (Row.check expTable) = true := by decide +kernel

theorem length120 : rows120.length = 32 := by decide

def runs120 : List (Run expTable) := (List.finRange rows120.length).map (Run.ofGroup expTable rows120 checked120)

#print axioms checked120

theorem checked136 : rows136.all (Row.check expTable) = true := by decide +kernel

theorem length136 : rows136.length = 32 := by decide

def runs136 : List (Run expTable) := (List.finRange rows136.length).map (Run.ofGroup expTable rows136 checked136)

#print axioms checked136

theorem checked152 : rows152.all (Row.check expTable) = true := by decide +kernel

theorem length152 : rows152.length = 14 := by decide

def runs152 : List (Run expTable) := (List.finRange rows152.length).map (Run.ofGroup expTable rows152 checked152)

#print axioms checked152

theorem checked168 : rows168.all (Row.check expTable) = true := by decide +kernel

theorem length168 : rows168.length = 6 := by decide

def runs168 : List (Run expTable) := (List.finRange rows168.length).map (Run.ofGroup expTable rows168 checked168)

#print axioms checked168

theorem checked184 : rows184.all (Row.check expTable) = true := by decide +kernel

theorem length184 : rows184.length = 4 := by decide

def runs184 : List (Run expTable) := (List.finRange rows184.length).map (Run.ofGroup expTable rows184 checked184)

#print axioms checked184

theorem checked200 : rows200.all (Row.check expTable) = true := by decide +kernel

theorem length200 : rows200.length = 3 := by decide

def runs200 : List (Run expTable) := (List.finRange rows200.length).map (Run.ofGroup expTable rows200 checked200)

#print axioms checked200

theorem checked216 : rows216.all (Row.check expTable) = true := by decide +kernel

theorem length216 : rows216.length = 2 := by decide

def runs216 : List (Run expTable) := (List.finRange rows216.length).map (Run.ofGroup expTable rows216 checked216)

#print axioms checked216

theorem checked232 : rows232.all (Row.check expTable) = true := by decide +kernel

theorem length232 : rows232.length = 1 := by decide

def runs232 : List (Run expTable) := (List.finRange rows232.length).map (Run.ofGroup expTable rows232 checked232)

#print axioms checked232

theorem checked248 : rows248.all (Row.check expTable) = true := by decide +kernel

theorem length248 : rows248.length = 1 := by decide

def runs248 : List (Run expTable) := (List.finRange rows248.length).map (Run.ofGroup expTable rows248 checked248)

#print axioms checked248

theorem checked264 : rows264.all (Row.check expTable) = true := by decide +kernel

theorem length264 : rows264.length = 1 := by decide

def runs264 : List (Run expTable) := (List.finRange rows264.length).map (Run.ofGroup expTable rows264 checked264)

#print axioms checked264

theorem checked280 : rows280.all (Row.check expTable) = true := by decide +kernel

theorem length280 : rows280.length = 1 := by decide

def runs280 : List (Run expTable) := (List.finRange rows280.length).map (Run.ofGroup expTable rows280 checked280)

#print axioms checked280

theorem checked296 : rows296.all (Row.check expTable) = true := by decide +kernel

theorem length296 : rows296.length = 1 := by decide

def runs296 : List (Run expTable) := (List.finRange rows296.length).map (Run.ofGroup expTable rows296 checked296)

#print axioms checked296

theorem checked312 : rows312.all (Row.check expTable) = true := by decide +kernel

theorem length312 : rows312.length = 1 := by decide

def runs312 : List (Run expTable) := (List.finRange rows312.length).map (Run.ofGroup expTable rows312 checked312)

#print axioms checked312

theorem checked328 : rows328.all (Row.check expTable) = true := by decide +kernel

theorem length328 : rows328.length = 1 := by decide

def runs328 : List (Run expTable) := (List.finRange rows328.length).map (Run.ofGroup expTable rows328 checked328)

#print axioms checked328

theorem checked344 : rows344.all (Row.check expTable) = true := by decide +kernel

theorem length344 : rows344.length = 1 := by decide

def runs344 : List (Run expTable) := (List.finRange rows344.length).map (Run.ofGroup expTable rows344 checked344)

#print axioms checked344

theorem checked360 : rows360.all (Row.check expTable) = true := by decide +kernel

theorem length360 : rows360.length = 1 := by decide

def runs360 : List (Run expTable) := (List.finRange rows360.length).map (Run.ofGroup expTable rows360 checked360)

#print axioms checked360

theorem checked376 : rows376.all (Row.check expTable) = true := by decide +kernel

theorem length376 : rows376.length = 1 := by decide

def runs376 : List (Run expTable) := (List.finRange rows376.length).map (Run.ofGroup expTable rows376 checked376)

#print axioms checked376

theorem checked392 : rows392.all (Row.check expTable) = true := by decide +kernel

theorem length392 : rows392.length = 1 := by decide

def runs392 : List (Run expTable) := (List.finRange rows392.length).map (Run.ofGroup expTable rows392 checked392)

#print axioms checked392

theorem checked408 : rows408.all (Row.check expTable) = true := by decide +kernel

theorem length408 : rows408.length = 1 := by decide

def runs408 : List (Run expTable) := (List.finRange rows408.length).map (Run.ofGroup expTable rows408 checked408)

#print axioms checked408

theorem checked424 : rows424.all (Row.check expTable) = true := by decide +kernel

theorem length424 : rows424.length = 1 := by decide

def runs424 : List (Run expTable) := (List.finRange rows424.length).map (Run.ofGroup expTable rows424 checked424)

#print axioms checked424

theorem checked440 : rows440.all (Row.check expTable) = true := by decide +kernel

theorem length440 : rows440.length = 1 := by decide

def runs440 : List (Run expTable) := (List.finRange rows440.length).map (Run.ofGroup expTable rows440 checked440)

#print axioms checked440

theorem checked456 : rows456.all (Row.check expTable) = true := by decide +kernel

theorem length456 : rows456.length = 1 := by decide

def runs456 : List (Run expTable) := (List.finRange rows456.length).map (Run.ofGroup expTable rows456 checked456)

#print axioms checked456

theorem checked472 : rows472.all (Row.check expTable) = true := by decide +kernel

theorem length472 : rows472.length = 1 := by decide

def runs472 : List (Run expTable) := (List.finRange rows472.length).map (Run.ofGroup expTable rows472 checked472)

#print axioms checked472

theorem checked488 : rows488.all (Row.check expTable) = true := by decide +kernel

theorem length488 : rows488.length = 1 := by decide

def runs488 : List (Run expTable) := (List.finRange rows488.length).map (Run.ofGroup expTable rows488 checked488)

#print axioms checked488

theorem checked504 : rows504.all (Row.check expTable) = true := by decide +kernel

theorem length504 : rows504.length = 1 := by decide

def runs504 : List (Run expTable) := (List.finRange rows504.length).map (Run.ofGroup expTable rows504 checked504)

#print axioms checked504

theorem checked520 : rows520.all (Row.check expTable) = true := by decide +kernel

theorem length520 : rows520.length = 1 := by decide

def runs520 : List (Run expTable) := (List.finRange rows520.length).map (Run.ofGroup expTable rows520 checked520)

#print axioms checked520

theorem checked536 : rows536.all (Row.check expTable) = true := by decide +kernel

theorem length536 : rows536.length = 1 := by decide

def runs536 : List (Run expTable) := (List.finRange rows536.length).map (Run.ofGroup expTable rows536 checked536)

#print axioms checked536

theorem checked552 : rows552.all (Row.check expTable) = true := by decide +kernel

theorem length552 : rows552.length = 1 := by decide

def runs552 : List (Run expTable) := (List.finRange rows552.length).map (Run.ofGroup expTable rows552 checked552)

#print axioms checked552

theorem checked568 : rows568.all (Row.check expTable) = true := by decide +kernel

theorem length568 : rows568.length = 1 := by decide

def runs568 : List (Run expTable) := (List.finRange rows568.length).map (Run.ofGroup expTable rows568 checked568)

#print axioms checked568

theorem checked584 : rows584.all (Row.check expTable) = true := by decide +kernel

theorem length584 : rows584.length = 1 := by decide

def runs584 : List (Run expTable) := (List.finRange rows584.length).map (Run.ofGroup expTable rows584 checked584)

#print axioms checked584

theorem checked600 : rows600.all (Row.check expTable) = true := by decide +kernel

theorem length600 : rows600.length = 1 := by decide

def runs600 : List (Run expTable) := (List.finRange rows600.length).map (Run.ofGroup expTable rows600 checked600)

#print axioms checked600

theorem checked616 : rows616.all (Row.check expTable) = true := by decide +kernel

theorem length616 : rows616.length = 1 := by decide

def runs616 : List (Run expTable) := (List.finRange rows616.length).map (Run.ofGroup expTable rows616 checked616)

#print axioms checked616

theorem checked632 : rows632.all (Row.check expTable) = true := by decide +kernel

theorem length632 : rows632.length = 1 := by decide

def runs632 : List (Run expTable) := (List.finRange rows632.length).map (Run.ofGroup expTable rows632 checked632)

#print axioms checked632

theorem checked648 : rows648.all (Row.check expTable) = true := by decide +kernel

theorem length648 : rows648.length = 1 := by decide

def runs648 : List (Run expTable) := (List.finRange rows648.length).map (Run.ofGroup expTable rows648 checked648)

#print axioms checked648

theorem checked664 : rows664.all (Row.check expTable) = true := by decide +kernel

theorem length664 : rows664.length = 1 := by decide

def runs664 : List (Run expTable) := (List.finRange rows664.length).map (Run.ofGroup expTable rows664 checked664)

#print axioms checked664

end DiagonalRamsey.JointRemainingRoutes
