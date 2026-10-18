import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked14 : rows14.all (Row.check expTable) = true := by decide +kernel

theorem length14 : rows14.length = 32 := by decide

def runs14 : List (Run expTable) := (List.finRange rows14.length).map (Run.ofGroup expTable rows14 checked14)

#print axioms checked14

theorem checked30 : rows30.all (Row.check expTable) = true := by decide +kernel

theorem length30 : rows30.length = 32 := by decide

def runs30 : List (Run expTable) := (List.finRange rows30.length).map (Run.ofGroup expTable rows30 checked30)

#print axioms checked30

theorem checked46 : rows46.all (Row.check expTable) = true := by decide +kernel

theorem length46 : rows46.length = 32 := by decide

def runs46 : List (Run expTable) := (List.finRange rows46.length).map (Run.ofGroup expTable rows46 checked46)

#print axioms checked46

theorem checked62 : rows62.all (Row.check expTable) = true := by decide +kernel

theorem length62 : rows62.length = 32 := by decide

def runs62 : List (Run expTable) := (List.finRange rows62.length).map (Run.ofGroup expTable rows62 checked62)

#print axioms checked62

theorem checked78 : rows78.all (Row.check expTable) = true := by decide +kernel

theorem length78 : rows78.length = 32 := by decide

def runs78 : List (Run expTable) := (List.finRange rows78.length).map (Run.ofGroup expTable rows78 checked78)

#print axioms checked78

theorem checked94 : rows94.all (Row.check expTable) = true := by decide +kernel

theorem length94 : rows94.length = 32 := by decide

def runs94 : List (Run expTable) := (List.finRange rows94.length).map (Run.ofGroup expTable rows94 checked94)

#print axioms checked94

theorem checked110 : rows110.all (Row.check expTable) = true := by decide +kernel

theorem length110 : rows110.length = 32 := by decide

def runs110 : List (Run expTable) := (List.finRange rows110.length).map (Run.ofGroup expTable rows110 checked110)

#print axioms checked110

theorem checked126 : rows126.all (Row.check expTable) = true := by decide +kernel

theorem length126 : rows126.length = 32 := by decide

def runs126 : List (Run expTable) := (List.finRange rows126.length).map (Run.ofGroup expTable rows126 checked126)

#print axioms checked126

theorem checked142 : rows142.all (Row.check expTable) = true := by decide +kernel

theorem length142 : rows142.length = 32 := by decide

def runs142 : List (Run expTable) := (List.finRange rows142.length).map (Run.ofGroup expTable rows142 checked142)

#print axioms checked142

theorem checked158 : rows158.all (Row.check expTable) = true := by decide +kernel

theorem length158 : rows158.length = 10 := by decide

def runs158 : List (Run expTable) := (List.finRange rows158.length).map (Run.ofGroup expTable rows158 checked158)

#print axioms checked158

theorem checked174 : rows174.all (Row.check expTable) = true := by decide +kernel

theorem length174 : rows174.length = 5 := by decide

def runs174 : List (Run expTable) := (List.finRange rows174.length).map (Run.ofGroup expTable rows174 checked174)

#print axioms checked174

theorem checked190 : rows190.all (Row.check expTable) = true := by decide +kernel

theorem length190 : rows190.length = 3 := by decide

def runs190 : List (Run expTable) := (List.finRange rows190.length).map (Run.ofGroup expTable rows190 checked190)

#print axioms checked190

theorem checked206 : rows206.all (Row.check expTable) = true := by decide +kernel

theorem length206 : rows206.length = 2 := by decide

def runs206 : List (Run expTable) := (List.finRange rows206.length).map (Run.ofGroup expTable rows206 checked206)

#print axioms checked206

theorem checked222 : rows222.all (Row.check expTable) = true := by decide +kernel

theorem length222 : rows222.length = 1 := by decide

def runs222 : List (Run expTable) := (List.finRange rows222.length).map (Run.ofGroup expTable rows222 checked222)

#print axioms checked222

theorem checked238 : rows238.all (Row.check expTable) = true := by decide +kernel

theorem length238 : rows238.length = 1 := by decide

def runs238 : List (Run expTable) := (List.finRange rows238.length).map (Run.ofGroup expTable rows238 checked238)

#print axioms checked238

theorem checked254 : rows254.all (Row.check expTable) = true := by decide +kernel

theorem length254 : rows254.length = 1 := by decide

def runs254 : List (Run expTable) := (List.finRange rows254.length).map (Run.ofGroup expTable rows254 checked254)

#print axioms checked254

theorem checked270 : rows270.all (Row.check expTable) = true := by decide +kernel

theorem length270 : rows270.length = 1 := by decide

def runs270 : List (Run expTable) := (List.finRange rows270.length).map (Run.ofGroup expTable rows270 checked270)

#print axioms checked270

theorem checked286 : rows286.all (Row.check expTable) = true := by decide +kernel

theorem length286 : rows286.length = 1 := by decide

def runs286 : List (Run expTable) := (List.finRange rows286.length).map (Run.ofGroup expTable rows286 checked286)

#print axioms checked286

theorem checked302 : rows302.all (Row.check expTable) = true := by decide +kernel

theorem length302 : rows302.length = 1 := by decide

def runs302 : List (Run expTable) := (List.finRange rows302.length).map (Run.ofGroup expTable rows302 checked302)

#print axioms checked302

theorem checked318 : rows318.all (Row.check expTable) = true := by decide +kernel

theorem length318 : rows318.length = 1 := by decide

def runs318 : List (Run expTable) := (List.finRange rows318.length).map (Run.ofGroup expTable rows318 checked318)

#print axioms checked318

theorem checked334 : rows334.all (Row.check expTable) = true := by decide +kernel

theorem length334 : rows334.length = 1 := by decide

def runs334 : List (Run expTable) := (List.finRange rows334.length).map (Run.ofGroup expTable rows334 checked334)

#print axioms checked334

theorem checked350 : rows350.all (Row.check expTable) = true := by decide +kernel

theorem length350 : rows350.length = 1 := by decide

def runs350 : List (Run expTable) := (List.finRange rows350.length).map (Run.ofGroup expTable rows350 checked350)

#print axioms checked350

theorem checked366 : rows366.all (Row.check expTable) = true := by decide +kernel

theorem length366 : rows366.length = 1 := by decide

def runs366 : List (Run expTable) := (List.finRange rows366.length).map (Run.ofGroup expTable rows366 checked366)

#print axioms checked366

theorem checked382 : rows382.all (Row.check expTable) = true := by decide +kernel

theorem length382 : rows382.length = 1 := by decide

def runs382 : List (Run expTable) := (List.finRange rows382.length).map (Run.ofGroup expTable rows382 checked382)

#print axioms checked382

theorem checked398 : rows398.all (Row.check expTable) = true := by decide +kernel

theorem length398 : rows398.length = 1 := by decide

def runs398 : List (Run expTable) := (List.finRange rows398.length).map (Run.ofGroup expTable rows398 checked398)

#print axioms checked398

theorem checked414 : rows414.all (Row.check expTable) = true := by decide +kernel

theorem length414 : rows414.length = 1 := by decide

def runs414 : List (Run expTable) := (List.finRange rows414.length).map (Run.ofGroup expTable rows414 checked414)

#print axioms checked414

theorem checked430 : rows430.all (Row.check expTable) = true := by decide +kernel

theorem length430 : rows430.length = 1 := by decide

def runs430 : List (Run expTable) := (List.finRange rows430.length).map (Run.ofGroup expTable rows430 checked430)

#print axioms checked430

theorem checked446 : rows446.all (Row.check expTable) = true := by decide +kernel

theorem length446 : rows446.length = 1 := by decide

def runs446 : List (Run expTable) := (List.finRange rows446.length).map (Run.ofGroup expTable rows446 checked446)

#print axioms checked446

theorem checked462 : rows462.all (Row.check expTable) = true := by decide +kernel

theorem length462 : rows462.length = 1 := by decide

def runs462 : List (Run expTable) := (List.finRange rows462.length).map (Run.ofGroup expTable rows462 checked462)

#print axioms checked462

theorem checked478 : rows478.all (Row.check expTable) = true := by decide +kernel

theorem length478 : rows478.length = 1 := by decide

def runs478 : List (Run expTable) := (List.finRange rows478.length).map (Run.ofGroup expTable rows478 checked478)

#print axioms checked478

theorem checked494 : rows494.all (Row.check expTable) = true := by decide +kernel

theorem length494 : rows494.length = 1 := by decide

def runs494 : List (Run expTable) := (List.finRange rows494.length).map (Run.ofGroup expTable rows494 checked494)

#print axioms checked494

theorem checked510 : rows510.all (Row.check expTable) = true := by decide +kernel

theorem length510 : rows510.length = 1 := by decide

def runs510 : List (Run expTable) := (List.finRange rows510.length).map (Run.ofGroup expTable rows510 checked510)

#print axioms checked510

theorem checked526 : rows526.all (Row.check expTable) = true := by decide +kernel

theorem length526 : rows526.length = 1 := by decide

def runs526 : List (Run expTable) := (List.finRange rows526.length).map (Run.ofGroup expTable rows526 checked526)

#print axioms checked526

theorem checked542 : rows542.all (Row.check expTable) = true := by decide +kernel

theorem length542 : rows542.length = 1 := by decide

def runs542 : List (Run expTable) := (List.finRange rows542.length).map (Run.ofGroup expTable rows542 checked542)

#print axioms checked542

theorem checked558 : rows558.all (Row.check expTable) = true := by decide +kernel

theorem length558 : rows558.length = 1 := by decide

def runs558 : List (Run expTable) := (List.finRange rows558.length).map (Run.ofGroup expTable rows558 checked558)

#print axioms checked558

theorem checked574 : rows574.all (Row.check expTable) = true := by decide +kernel

theorem length574 : rows574.length = 1 := by decide

def runs574 : List (Run expTable) := (List.finRange rows574.length).map (Run.ofGroup expTable rows574 checked574)

#print axioms checked574

theorem checked590 : rows590.all (Row.check expTable) = true := by decide +kernel

theorem length590 : rows590.length = 1 := by decide

def runs590 : List (Run expTable) := (List.finRange rows590.length).map (Run.ofGroup expTable rows590 checked590)

#print axioms checked590

theorem checked606 : rows606.all (Row.check expTable) = true := by decide +kernel

theorem length606 : rows606.length = 1 := by decide

def runs606 : List (Run expTable) := (List.finRange rows606.length).map (Run.ofGroup expTable rows606 checked606)

#print axioms checked606

theorem checked622 : rows622.all (Row.check expTable) = true := by decide +kernel

theorem length622 : rows622.length = 1 := by decide

def runs622 : List (Run expTable) := (List.finRange rows622.length).map (Run.ofGroup expTable rows622 checked622)

#print axioms checked622

theorem checked638 : rows638.all (Row.check expTable) = true := by decide +kernel

theorem length638 : rows638.length = 1 := by decide

def runs638 : List (Run expTable) := (List.finRange rows638.length).map (Run.ofGroup expTable rows638 checked638)

#print axioms checked638

theorem checked654 : rows654.all (Row.check expTable) = true := by decide +kernel

theorem length654 : rows654.length = 1 := by decide

def runs654 : List (Run expTable) := (List.finRange rows654.length).map (Run.ofGroup expTable rows654 checked654)

#print axioms checked654

theorem checked670 : rows670.all (Row.check expTable) = true := by decide +kernel

theorem length670 : rows670.length = 1 := by decide

def runs670 : List (Run expTable) := (List.finRange rows670.length).map (Run.ofGroup expTable rows670 checked670)

#print axioms checked670

end DiagonalRamsey.JointRemainingRoutes
