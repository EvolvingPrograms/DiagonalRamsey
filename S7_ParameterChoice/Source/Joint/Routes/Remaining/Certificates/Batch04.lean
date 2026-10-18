import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked4 : rows4.all (Row.check expTable) = true := by decide +kernel

theorem length4 : rows4.length = 32 := by decide

def runs4 : List (Run expTable) := (List.finRange rows4.length).map (Run.ofGroup expTable rows4 checked4)

#print axioms checked4

theorem checked20 : rows20.all (Row.check expTable) = true := by decide +kernel

theorem length20 : rows20.length = 32 := by decide

def runs20 : List (Run expTable) := (List.finRange rows20.length).map (Run.ofGroup expTable rows20 checked20)

#print axioms checked20

theorem checked36 : rows36.all (Row.check expTable) = true := by decide +kernel

theorem length36 : rows36.length = 32 := by decide

def runs36 : List (Run expTable) := (List.finRange rows36.length).map (Run.ofGroup expTable rows36 checked36)

#print axioms checked36

theorem checked52 : rows52.all (Row.check expTable) = true := by decide +kernel

theorem length52 : rows52.length = 32 := by decide

def runs52 : List (Run expTable) := (List.finRange rows52.length).map (Run.ofGroup expTable rows52 checked52)

#print axioms checked52

theorem checked68 : rows68.all (Row.check expTable) = true := by decide +kernel

theorem length68 : rows68.length = 32 := by decide

def runs68 : List (Run expTable) := (List.finRange rows68.length).map (Run.ofGroup expTable rows68 checked68)

#print axioms checked68

theorem checked84 : rows84.all (Row.check expTable) = true := by decide +kernel

theorem length84 : rows84.length = 32 := by decide

def runs84 : List (Run expTable) := (List.finRange rows84.length).map (Run.ofGroup expTable rows84 checked84)

#print axioms checked84

theorem checked100 : rows100.all (Row.check expTable) = true := by decide +kernel

theorem length100 : rows100.length = 32 := by decide

def runs100 : List (Run expTable) := (List.finRange rows100.length).map (Run.ofGroup expTable rows100 checked100)

#print axioms checked100

theorem checked116 : rows116.all (Row.check expTable) = true := by decide +kernel

theorem length116 : rows116.length = 32 := by decide

def runs116 : List (Run expTable) := (List.finRange rows116.length).map (Run.ofGroup expTable rows116 checked116)

#print axioms checked116

theorem checked132 : rows132.all (Row.check expTable) = true := by decide +kernel

theorem length132 : rows132.length = 32 := by decide

def runs132 : List (Run expTable) := (List.finRange rows132.length).map (Run.ofGroup expTable rows132 checked132)

#print axioms checked132

theorem checked148 : rows148.all (Row.check expTable) = true := by decide +kernel

theorem length148 : rows148.length = 24 := by decide

def runs148 : List (Run expTable) := (List.finRange rows148.length).map (Run.ofGroup expTable rows148 checked148)

#print axioms checked148

theorem checked164 : rows164.all (Row.check expTable) = true := by decide +kernel

theorem length164 : rows164.length = 7 := by decide

def runs164 : List (Run expTable) := (List.finRange rows164.length).map (Run.ofGroup expTable rows164 checked164)

#print axioms checked164

theorem checked180 : rows180.all (Row.check expTable) = true := by decide +kernel

theorem length180 : rows180.length = 4 := by decide

def runs180 : List (Run expTable) := (List.finRange rows180.length).map (Run.ofGroup expTable rows180 checked180)

#print axioms checked180

theorem checked196 : rows196.all (Row.check expTable) = true := by decide +kernel

theorem length196 : rows196.length = 3 := by decide

def runs196 : List (Run expTable) := (List.finRange rows196.length).map (Run.ofGroup expTable rows196 checked196)

#print axioms checked196

theorem checked212 : rows212.all (Row.check expTable) = true := by decide +kernel

theorem length212 : rows212.length = 2 := by decide

def runs212 : List (Run expTable) := (List.finRange rows212.length).map (Run.ofGroup expTable rows212 checked212)

#print axioms checked212

theorem checked228 : rows228.all (Row.check expTable) = true := by decide +kernel

theorem length228 : rows228.length = 1 := by decide

def runs228 : List (Run expTable) := (List.finRange rows228.length).map (Run.ofGroup expTable rows228 checked228)

#print axioms checked228

theorem checked244 : rows244.all (Row.check expTable) = true := by decide +kernel

theorem length244 : rows244.length = 1 := by decide

def runs244 : List (Run expTable) := (List.finRange rows244.length).map (Run.ofGroup expTable rows244 checked244)

#print axioms checked244

theorem checked260 : rows260.all (Row.check expTable) = true := by decide +kernel

theorem length260 : rows260.length = 1 := by decide

def runs260 : List (Run expTable) := (List.finRange rows260.length).map (Run.ofGroup expTable rows260 checked260)

#print axioms checked260

theorem checked276 : rows276.all (Row.check expTable) = true := by decide +kernel

theorem length276 : rows276.length = 1 := by decide

def runs276 : List (Run expTable) := (List.finRange rows276.length).map (Run.ofGroup expTable rows276 checked276)

#print axioms checked276

theorem checked292 : rows292.all (Row.check expTable) = true := by decide +kernel

theorem length292 : rows292.length = 1 := by decide

def runs292 : List (Run expTable) := (List.finRange rows292.length).map (Run.ofGroup expTable rows292 checked292)

#print axioms checked292

theorem checked308 : rows308.all (Row.check expTable) = true := by decide +kernel

theorem length308 : rows308.length = 1 := by decide

def runs308 : List (Run expTable) := (List.finRange rows308.length).map (Run.ofGroup expTable rows308 checked308)

#print axioms checked308

theorem checked324 : rows324.all (Row.check expTable) = true := by decide +kernel

theorem length324 : rows324.length = 1 := by decide

def runs324 : List (Run expTable) := (List.finRange rows324.length).map (Run.ofGroup expTable rows324 checked324)

#print axioms checked324

theorem checked340 : rows340.all (Row.check expTable) = true := by decide +kernel

theorem length340 : rows340.length = 1 := by decide

def runs340 : List (Run expTable) := (List.finRange rows340.length).map (Run.ofGroup expTable rows340 checked340)

#print axioms checked340

theorem checked356 : rows356.all (Row.check expTable) = true := by decide +kernel

theorem length356 : rows356.length = 1 := by decide

def runs356 : List (Run expTable) := (List.finRange rows356.length).map (Run.ofGroup expTable rows356 checked356)

#print axioms checked356

theorem checked372 : rows372.all (Row.check expTable) = true := by decide +kernel

theorem length372 : rows372.length = 1 := by decide

def runs372 : List (Run expTable) := (List.finRange rows372.length).map (Run.ofGroup expTable rows372 checked372)

#print axioms checked372

theorem checked388 : rows388.all (Row.check expTable) = true := by decide +kernel

theorem length388 : rows388.length = 1 := by decide

def runs388 : List (Run expTable) := (List.finRange rows388.length).map (Run.ofGroup expTable rows388 checked388)

#print axioms checked388

theorem checked404 : rows404.all (Row.check expTable) = true := by decide +kernel

theorem length404 : rows404.length = 1 := by decide

def runs404 : List (Run expTable) := (List.finRange rows404.length).map (Run.ofGroup expTable rows404 checked404)

#print axioms checked404

theorem checked420 : rows420.all (Row.check expTable) = true := by decide +kernel

theorem length420 : rows420.length = 1 := by decide

def runs420 : List (Run expTable) := (List.finRange rows420.length).map (Run.ofGroup expTable rows420 checked420)

#print axioms checked420

theorem checked436 : rows436.all (Row.check expTable) = true := by decide +kernel

theorem length436 : rows436.length = 1 := by decide

def runs436 : List (Run expTable) := (List.finRange rows436.length).map (Run.ofGroup expTable rows436 checked436)

#print axioms checked436

theorem checked452 : rows452.all (Row.check expTable) = true := by decide +kernel

theorem length452 : rows452.length = 1 := by decide

def runs452 : List (Run expTable) := (List.finRange rows452.length).map (Run.ofGroup expTable rows452 checked452)

#print axioms checked452

theorem checked468 : rows468.all (Row.check expTable) = true := by decide +kernel

theorem length468 : rows468.length = 1 := by decide

def runs468 : List (Run expTable) := (List.finRange rows468.length).map (Run.ofGroup expTable rows468 checked468)

#print axioms checked468

theorem checked484 : rows484.all (Row.check expTable) = true := by decide +kernel

theorem length484 : rows484.length = 1 := by decide

def runs484 : List (Run expTable) := (List.finRange rows484.length).map (Run.ofGroup expTable rows484 checked484)

#print axioms checked484

theorem checked500 : rows500.all (Row.check expTable) = true := by decide +kernel

theorem length500 : rows500.length = 1 := by decide

def runs500 : List (Run expTable) := (List.finRange rows500.length).map (Run.ofGroup expTable rows500 checked500)

#print axioms checked500

theorem checked516 : rows516.all (Row.check expTable) = true := by decide +kernel

theorem length516 : rows516.length = 1 := by decide

def runs516 : List (Run expTable) := (List.finRange rows516.length).map (Run.ofGroup expTable rows516 checked516)

#print axioms checked516

theorem checked532 : rows532.all (Row.check expTable) = true := by decide +kernel

theorem length532 : rows532.length = 1 := by decide

def runs532 : List (Run expTable) := (List.finRange rows532.length).map (Run.ofGroup expTable rows532 checked532)

#print axioms checked532

theorem checked548 : rows548.all (Row.check expTable) = true := by decide +kernel

theorem length548 : rows548.length = 1 := by decide

def runs548 : List (Run expTable) := (List.finRange rows548.length).map (Run.ofGroup expTable rows548 checked548)

#print axioms checked548

theorem checked564 : rows564.all (Row.check expTable) = true := by decide +kernel

theorem length564 : rows564.length = 1 := by decide

def runs564 : List (Run expTable) := (List.finRange rows564.length).map (Run.ofGroup expTable rows564 checked564)

#print axioms checked564

theorem checked580 : rows580.all (Row.check expTable) = true := by decide +kernel

theorem length580 : rows580.length = 1 := by decide

def runs580 : List (Run expTable) := (List.finRange rows580.length).map (Run.ofGroup expTable rows580 checked580)

#print axioms checked580

theorem checked596 : rows596.all (Row.check expTable) = true := by decide +kernel

theorem length596 : rows596.length = 1 := by decide

def runs596 : List (Run expTable) := (List.finRange rows596.length).map (Run.ofGroup expTable rows596 checked596)

#print axioms checked596

theorem checked612 : rows612.all (Row.check expTable) = true := by decide +kernel

theorem length612 : rows612.length = 1 := by decide

def runs612 : List (Run expTable) := (List.finRange rows612.length).map (Run.ofGroup expTable rows612 checked612)

#print axioms checked612

theorem checked628 : rows628.all (Row.check expTable) = true := by decide +kernel

theorem length628 : rows628.length = 1 := by decide

def runs628 : List (Run expTable) := (List.finRange rows628.length).map (Run.ofGroup expTable rows628 checked628)

#print axioms checked628

theorem checked644 : rows644.all (Row.check expTable) = true := by decide +kernel

theorem length644 : rows644.length = 1 := by decide

def runs644 : List (Run expTable) := (List.finRange rows644.length).map (Run.ofGroup expTable rows644 checked644)

#print axioms checked644

theorem checked660 : rows660.all (Row.check expTable) = true := by decide +kernel

theorem length660 : rows660.length = 1 := by decide

def runs660 : List (Run expTable) := (List.finRange rows660.length).map (Run.ofGroup expTable rows660 checked660)

#print axioms checked660

end DiagonalRamsey.JointRemainingRoutes
