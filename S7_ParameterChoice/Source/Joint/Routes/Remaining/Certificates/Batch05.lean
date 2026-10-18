import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked5 : rows5.all (Row.check expTable) = true := by decide +kernel

theorem length5 : rows5.length = 32 := by decide

def runs5 : List (Run expTable) := (List.finRange rows5.length).map (Run.ofGroup expTable rows5 checked5)

#print axioms checked5

theorem checked21 : rows21.all (Row.check expTable) = true := by decide +kernel

theorem length21 : rows21.length = 32 := by decide

def runs21 : List (Run expTable) := (List.finRange rows21.length).map (Run.ofGroup expTable rows21 checked21)

#print axioms checked21

theorem checked37 : rows37.all (Row.check expTable) = true := by decide +kernel

theorem length37 : rows37.length = 32 := by decide

def runs37 : List (Run expTable) := (List.finRange rows37.length).map (Run.ofGroup expTable rows37 checked37)

#print axioms checked37

theorem checked53 : rows53.all (Row.check expTable) = true := by decide +kernel

theorem length53 : rows53.length = 32 := by decide

def runs53 : List (Run expTable) := (List.finRange rows53.length).map (Run.ofGroup expTable rows53 checked53)

#print axioms checked53

theorem checked69 : rows69.all (Row.check expTable) = true := by decide +kernel

theorem length69 : rows69.length = 32 := by decide

def runs69 : List (Run expTable) := (List.finRange rows69.length).map (Run.ofGroup expTable rows69 checked69)

#print axioms checked69

theorem checked85 : rows85.all (Row.check expTable) = true := by decide +kernel

theorem length85 : rows85.length = 32 := by decide

def runs85 : List (Run expTable) := (List.finRange rows85.length).map (Run.ofGroup expTable rows85 checked85)

#print axioms checked85

theorem checked101 : rows101.all (Row.check expTable) = true := by decide +kernel

theorem length101 : rows101.length = 32 := by decide

def runs101 : List (Run expTable) := (List.finRange rows101.length).map (Run.ofGroup expTable rows101 checked101)

#print axioms checked101

theorem checked117 : rows117.all (Row.check expTable) = true := by decide +kernel

theorem length117 : rows117.length = 32 := by decide

def runs117 : List (Run expTable) := (List.finRange rows117.length).map (Run.ofGroup expTable rows117 checked117)

#print axioms checked117

theorem checked133 : rows133.all (Row.check expTable) = true := by decide +kernel

theorem length133 : rows133.length = 32 := by decide

def runs133 : List (Run expTable) := (List.finRange rows133.length).map (Run.ofGroup expTable rows133 checked133)

#print axioms checked133

theorem checked149 : rows149.all (Row.check expTable) = true := by decide +kernel

theorem length149 : rows149.length = 20 := by decide

def runs149 : List (Run expTable) := (List.finRange rows149.length).map (Run.ofGroup expTable rows149 checked149)

#print axioms checked149

theorem checked165 : rows165.all (Row.check expTable) = true := by decide +kernel

theorem length165 : rows165.length = 7 := by decide

def runs165 : List (Run expTable) := (List.finRange rows165.length).map (Run.ofGroup expTable rows165 checked165)

#print axioms checked165

theorem checked181 : rows181.all (Row.check expTable) = true := by decide +kernel

theorem length181 : rows181.length = 4 := by decide

def runs181 : List (Run expTable) := (List.finRange rows181.length).map (Run.ofGroup expTable rows181 checked181)

#print axioms checked181

theorem checked197 : rows197.all (Row.check expTable) = true := by decide +kernel

theorem length197 : rows197.length = 3 := by decide

def runs197 : List (Run expTable) := (List.finRange rows197.length).map (Run.ofGroup expTable rows197 checked197)

#print axioms checked197

theorem checked213 : rows213.all (Row.check expTable) = true := by decide +kernel

theorem length213 : rows213.length = 2 := by decide

def runs213 : List (Run expTable) := (List.finRange rows213.length).map (Run.ofGroup expTable rows213 checked213)

#print axioms checked213

theorem checked229 : rows229.all (Row.check expTable) = true := by decide +kernel

theorem length229 : rows229.length = 1 := by decide

def runs229 : List (Run expTable) := (List.finRange rows229.length).map (Run.ofGroup expTable rows229 checked229)

#print axioms checked229

theorem checked245 : rows245.all (Row.check expTable) = true := by decide +kernel

theorem length245 : rows245.length = 1 := by decide

def runs245 : List (Run expTable) := (List.finRange rows245.length).map (Run.ofGroup expTable rows245 checked245)

#print axioms checked245

theorem checked261 : rows261.all (Row.check expTable) = true := by decide +kernel

theorem length261 : rows261.length = 1 := by decide

def runs261 : List (Run expTable) := (List.finRange rows261.length).map (Run.ofGroup expTable rows261 checked261)

#print axioms checked261

theorem checked277 : rows277.all (Row.check expTable) = true := by decide +kernel

theorem length277 : rows277.length = 1 := by decide

def runs277 : List (Run expTable) := (List.finRange rows277.length).map (Run.ofGroup expTable rows277 checked277)

#print axioms checked277

theorem checked293 : rows293.all (Row.check expTable) = true := by decide +kernel

theorem length293 : rows293.length = 1 := by decide

def runs293 : List (Run expTable) := (List.finRange rows293.length).map (Run.ofGroup expTable rows293 checked293)

#print axioms checked293

theorem checked309 : rows309.all (Row.check expTable) = true := by decide +kernel

theorem length309 : rows309.length = 1 := by decide

def runs309 : List (Run expTable) := (List.finRange rows309.length).map (Run.ofGroup expTable rows309 checked309)

#print axioms checked309

theorem checked325 : rows325.all (Row.check expTable) = true := by decide +kernel

theorem length325 : rows325.length = 1 := by decide

def runs325 : List (Run expTable) := (List.finRange rows325.length).map (Run.ofGroup expTable rows325 checked325)

#print axioms checked325

theorem checked341 : rows341.all (Row.check expTable) = true := by decide +kernel

theorem length341 : rows341.length = 1 := by decide

def runs341 : List (Run expTable) := (List.finRange rows341.length).map (Run.ofGroup expTable rows341 checked341)

#print axioms checked341

theorem checked357 : rows357.all (Row.check expTable) = true := by decide +kernel

theorem length357 : rows357.length = 1 := by decide

def runs357 : List (Run expTable) := (List.finRange rows357.length).map (Run.ofGroup expTable rows357 checked357)

#print axioms checked357

theorem checked373 : rows373.all (Row.check expTable) = true := by decide +kernel

theorem length373 : rows373.length = 1 := by decide

def runs373 : List (Run expTable) := (List.finRange rows373.length).map (Run.ofGroup expTable rows373 checked373)

#print axioms checked373

theorem checked389 : rows389.all (Row.check expTable) = true := by decide +kernel

theorem length389 : rows389.length = 1 := by decide

def runs389 : List (Run expTable) := (List.finRange rows389.length).map (Run.ofGroup expTable rows389 checked389)

#print axioms checked389

theorem checked405 : rows405.all (Row.check expTable) = true := by decide +kernel

theorem length405 : rows405.length = 1 := by decide

def runs405 : List (Run expTable) := (List.finRange rows405.length).map (Run.ofGroup expTable rows405 checked405)

#print axioms checked405

theorem checked421 : rows421.all (Row.check expTable) = true := by decide +kernel

theorem length421 : rows421.length = 1 := by decide

def runs421 : List (Run expTable) := (List.finRange rows421.length).map (Run.ofGroup expTable rows421 checked421)

#print axioms checked421

theorem checked437 : rows437.all (Row.check expTable) = true := by decide +kernel

theorem length437 : rows437.length = 1 := by decide

def runs437 : List (Run expTable) := (List.finRange rows437.length).map (Run.ofGroup expTable rows437 checked437)

#print axioms checked437

theorem checked453 : rows453.all (Row.check expTable) = true := by decide +kernel

theorem length453 : rows453.length = 1 := by decide

def runs453 : List (Run expTable) := (List.finRange rows453.length).map (Run.ofGroup expTable rows453 checked453)

#print axioms checked453

theorem checked469 : rows469.all (Row.check expTable) = true := by decide +kernel

theorem length469 : rows469.length = 1 := by decide

def runs469 : List (Run expTable) := (List.finRange rows469.length).map (Run.ofGroup expTable rows469 checked469)

#print axioms checked469

theorem checked485 : rows485.all (Row.check expTable) = true := by decide +kernel

theorem length485 : rows485.length = 1 := by decide

def runs485 : List (Run expTable) := (List.finRange rows485.length).map (Run.ofGroup expTable rows485 checked485)

#print axioms checked485

theorem checked501 : rows501.all (Row.check expTable) = true := by decide +kernel

theorem length501 : rows501.length = 1 := by decide

def runs501 : List (Run expTable) := (List.finRange rows501.length).map (Run.ofGroup expTable rows501 checked501)

#print axioms checked501

theorem checked517 : rows517.all (Row.check expTable) = true := by decide +kernel

theorem length517 : rows517.length = 1 := by decide

def runs517 : List (Run expTable) := (List.finRange rows517.length).map (Run.ofGroup expTable rows517 checked517)

#print axioms checked517

theorem checked533 : rows533.all (Row.check expTable) = true := by decide +kernel

theorem length533 : rows533.length = 1 := by decide

def runs533 : List (Run expTable) := (List.finRange rows533.length).map (Run.ofGroup expTable rows533 checked533)

#print axioms checked533

theorem checked549 : rows549.all (Row.check expTable) = true := by decide +kernel

theorem length549 : rows549.length = 1 := by decide

def runs549 : List (Run expTable) := (List.finRange rows549.length).map (Run.ofGroup expTable rows549 checked549)

#print axioms checked549

theorem checked565 : rows565.all (Row.check expTable) = true := by decide +kernel

theorem length565 : rows565.length = 1 := by decide

def runs565 : List (Run expTable) := (List.finRange rows565.length).map (Run.ofGroup expTable rows565 checked565)

#print axioms checked565

theorem checked581 : rows581.all (Row.check expTable) = true := by decide +kernel

theorem length581 : rows581.length = 1 := by decide

def runs581 : List (Run expTable) := (List.finRange rows581.length).map (Run.ofGroup expTable rows581 checked581)

#print axioms checked581

theorem checked597 : rows597.all (Row.check expTable) = true := by decide +kernel

theorem length597 : rows597.length = 1 := by decide

def runs597 : List (Run expTable) := (List.finRange rows597.length).map (Run.ofGroup expTable rows597 checked597)

#print axioms checked597

theorem checked613 : rows613.all (Row.check expTable) = true := by decide +kernel

theorem length613 : rows613.length = 1 := by decide

def runs613 : List (Run expTable) := (List.finRange rows613.length).map (Run.ofGroup expTable rows613 checked613)

#print axioms checked613

theorem checked629 : rows629.all (Row.check expTable) = true := by decide +kernel

theorem length629 : rows629.length = 1 := by decide

def runs629 : List (Run expTable) := (List.finRange rows629.length).map (Run.ofGroup expTable rows629 checked629)

#print axioms checked629

theorem checked645 : rows645.all (Row.check expTable) = true := by decide +kernel

theorem length645 : rows645.length = 1 := by decide

def runs645 : List (Run expTable) := (List.finRange rows645.length).map (Run.ofGroup expTable rows645 checked645)

#print axioms checked645

theorem checked661 : rows661.all (Row.check expTable) = true := by decide +kernel

theorem length661 : rows661.length = 1 := by decide

def runs661 : List (Run expTable) := (List.finRange rows661.length).map (Run.ofGroup expTable rows661 checked661)

#print axioms checked661

end DiagonalRamsey.JointRemainingRoutes
