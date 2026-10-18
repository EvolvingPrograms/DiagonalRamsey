import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked10 : rows10.all (Row.check expTable) = true := by decide +kernel

theorem length10 : rows10.length = 32 := by decide

def runs10 : List (Run expTable) := (List.finRange rows10.length).map (Run.ofGroup expTable rows10 checked10)

#print axioms checked10

theorem checked26 : rows26.all (Row.check expTable) = true := by decide +kernel

theorem length26 : rows26.length = 32 := by decide

def runs26 : List (Run expTable) := (List.finRange rows26.length).map (Run.ofGroup expTable rows26 checked26)

#print axioms checked26

theorem checked42 : rows42.all (Row.check expTable) = true := by decide +kernel

theorem length42 : rows42.length = 32 := by decide

def runs42 : List (Run expTable) := (List.finRange rows42.length).map (Run.ofGroup expTable rows42 checked42)

#print axioms checked42

theorem checked58 : rows58.all (Row.check expTable) = true := by decide +kernel

theorem length58 : rows58.length = 32 := by decide

def runs58 : List (Run expTable) := (List.finRange rows58.length).map (Run.ofGroup expTable rows58 checked58)

#print axioms checked58

theorem checked74 : rows74.all (Row.check expTable) = true := by decide +kernel

theorem length74 : rows74.length = 32 := by decide

def runs74 : List (Run expTable) := (List.finRange rows74.length).map (Run.ofGroup expTable rows74 checked74)

#print axioms checked74

theorem checked90 : rows90.all (Row.check expTable) = true := by decide +kernel

theorem length90 : rows90.length = 32 := by decide

def runs90 : List (Run expTable) := (List.finRange rows90.length).map (Run.ofGroup expTable rows90 checked90)

#print axioms checked90

theorem checked106 : rows106.all (Row.check expTable) = true := by decide +kernel

theorem length106 : rows106.length = 32 := by decide

def runs106 : List (Run expTable) := (List.finRange rows106.length).map (Run.ofGroup expTable rows106 checked106)

#print axioms checked106

theorem checked122 : rows122.all (Row.check expTable) = true := by decide +kernel

theorem length122 : rows122.length = 32 := by decide

def runs122 : List (Run expTable) := (List.finRange rows122.length).map (Run.ofGroup expTable rows122 checked122)

#print axioms checked122

theorem checked138 : rows138.all (Row.check expTable) = true := by decide +kernel

theorem length138 : rows138.length = 32 := by decide

def runs138 : List (Run expTable) := (List.finRange rows138.length).map (Run.ofGroup expTable rows138 checked138)

#print axioms checked138

theorem checked154 : rows154.all (Row.check expTable) = true := by decide +kernel

theorem length154 : rows154.length = 13 := by decide

def runs154 : List (Run expTable) := (List.finRange rows154.length).map (Run.ofGroup expTable rows154 checked154)

#print axioms checked154

theorem checked170 : rows170.all (Row.check expTable) = true := by decide +kernel

theorem length170 : rows170.length = 5 := by decide

def runs170 : List (Run expTable) := (List.finRange rows170.length).map (Run.ofGroup expTable rows170 checked170)

#print axioms checked170

theorem checked186 : rows186.all (Row.check expTable) = true := by decide +kernel

theorem length186 : rows186.length = 3 := by decide

def runs186 : List (Run expTable) := (List.finRange rows186.length).map (Run.ofGroup expTable rows186 checked186)

#print axioms checked186

theorem checked202 : rows202.all (Row.check expTable) = true := by decide +kernel

theorem length202 : rows202.length = 3 := by decide

def runs202 : List (Run expTable) := (List.finRange rows202.length).map (Run.ofGroup expTable rows202 checked202)

#print axioms checked202

theorem checked218 : rows218.all (Row.check expTable) = true := by decide +kernel

theorem length218 : rows218.length = 2 := by decide

def runs218 : List (Run expTable) := (List.finRange rows218.length).map (Run.ofGroup expTable rows218 checked218)

#print axioms checked218

theorem checked234 : rows234.all (Row.check expTable) = true := by decide +kernel

theorem length234 : rows234.length = 1 := by decide

def runs234 : List (Run expTable) := (List.finRange rows234.length).map (Run.ofGroup expTable rows234 checked234)

#print axioms checked234

theorem checked250 : rows250.all (Row.check expTable) = true := by decide +kernel

theorem length250 : rows250.length = 1 := by decide

def runs250 : List (Run expTable) := (List.finRange rows250.length).map (Run.ofGroup expTable rows250 checked250)

#print axioms checked250

theorem checked266 : rows266.all (Row.check expTable) = true := by decide +kernel

theorem length266 : rows266.length = 1 := by decide

def runs266 : List (Run expTable) := (List.finRange rows266.length).map (Run.ofGroup expTable rows266 checked266)

#print axioms checked266

theorem checked282 : rows282.all (Row.check expTable) = true := by decide +kernel

theorem length282 : rows282.length = 1 := by decide

def runs282 : List (Run expTable) := (List.finRange rows282.length).map (Run.ofGroup expTable rows282 checked282)

#print axioms checked282

theorem checked298 : rows298.all (Row.check expTable) = true := by decide +kernel

theorem length298 : rows298.length = 1 := by decide

def runs298 : List (Run expTable) := (List.finRange rows298.length).map (Run.ofGroup expTable rows298 checked298)

#print axioms checked298

theorem checked314 : rows314.all (Row.check expTable) = true := by decide +kernel

theorem length314 : rows314.length = 1 := by decide

def runs314 : List (Run expTable) := (List.finRange rows314.length).map (Run.ofGroup expTable rows314 checked314)

#print axioms checked314

theorem checked330 : rows330.all (Row.check expTable) = true := by decide +kernel

theorem length330 : rows330.length = 1 := by decide

def runs330 : List (Run expTable) := (List.finRange rows330.length).map (Run.ofGroup expTable rows330 checked330)

#print axioms checked330

theorem checked346 : rows346.all (Row.check expTable) = true := by decide +kernel

theorem length346 : rows346.length = 1 := by decide

def runs346 : List (Run expTable) := (List.finRange rows346.length).map (Run.ofGroup expTable rows346 checked346)

#print axioms checked346

theorem checked362 : rows362.all (Row.check expTable) = true := by decide +kernel

theorem length362 : rows362.length = 1 := by decide

def runs362 : List (Run expTable) := (List.finRange rows362.length).map (Run.ofGroup expTable rows362 checked362)

#print axioms checked362

theorem checked378 : rows378.all (Row.check expTable) = true := by decide +kernel

theorem length378 : rows378.length = 1 := by decide

def runs378 : List (Run expTable) := (List.finRange rows378.length).map (Run.ofGroup expTable rows378 checked378)

#print axioms checked378

theorem checked394 : rows394.all (Row.check expTable) = true := by decide +kernel

theorem length394 : rows394.length = 1 := by decide

def runs394 : List (Run expTable) := (List.finRange rows394.length).map (Run.ofGroup expTable rows394 checked394)

#print axioms checked394

theorem checked410 : rows410.all (Row.check expTable) = true := by decide +kernel

theorem length410 : rows410.length = 1 := by decide

def runs410 : List (Run expTable) := (List.finRange rows410.length).map (Run.ofGroup expTable rows410 checked410)

#print axioms checked410

theorem checked426 : rows426.all (Row.check expTable) = true := by decide +kernel

theorem length426 : rows426.length = 1 := by decide

def runs426 : List (Run expTable) := (List.finRange rows426.length).map (Run.ofGroup expTable rows426 checked426)

#print axioms checked426

theorem checked442 : rows442.all (Row.check expTable) = true := by decide +kernel

theorem length442 : rows442.length = 1 := by decide

def runs442 : List (Run expTable) := (List.finRange rows442.length).map (Run.ofGroup expTable rows442 checked442)

#print axioms checked442

theorem checked458 : rows458.all (Row.check expTable) = true := by decide +kernel

theorem length458 : rows458.length = 1 := by decide

def runs458 : List (Run expTable) := (List.finRange rows458.length).map (Run.ofGroup expTable rows458 checked458)

#print axioms checked458

theorem checked474 : rows474.all (Row.check expTable) = true := by decide +kernel

theorem length474 : rows474.length = 1 := by decide

def runs474 : List (Run expTable) := (List.finRange rows474.length).map (Run.ofGroup expTable rows474 checked474)

#print axioms checked474

theorem checked490 : rows490.all (Row.check expTable) = true := by decide +kernel

theorem length490 : rows490.length = 1 := by decide

def runs490 : List (Run expTable) := (List.finRange rows490.length).map (Run.ofGroup expTable rows490 checked490)

#print axioms checked490

theorem checked506 : rows506.all (Row.check expTable) = true := by decide +kernel

theorem length506 : rows506.length = 1 := by decide

def runs506 : List (Run expTable) := (List.finRange rows506.length).map (Run.ofGroup expTable rows506 checked506)

#print axioms checked506

theorem checked522 : rows522.all (Row.check expTable) = true := by decide +kernel

theorem length522 : rows522.length = 1 := by decide

def runs522 : List (Run expTable) := (List.finRange rows522.length).map (Run.ofGroup expTable rows522 checked522)

#print axioms checked522

theorem checked538 : rows538.all (Row.check expTable) = true := by decide +kernel

theorem length538 : rows538.length = 1 := by decide

def runs538 : List (Run expTable) := (List.finRange rows538.length).map (Run.ofGroup expTable rows538 checked538)

#print axioms checked538

theorem checked554 : rows554.all (Row.check expTable) = true := by decide +kernel

theorem length554 : rows554.length = 1 := by decide

def runs554 : List (Run expTable) := (List.finRange rows554.length).map (Run.ofGroup expTable rows554 checked554)

#print axioms checked554

theorem checked570 : rows570.all (Row.check expTable) = true := by decide +kernel

theorem length570 : rows570.length = 1 := by decide

def runs570 : List (Run expTable) := (List.finRange rows570.length).map (Run.ofGroup expTable rows570 checked570)

#print axioms checked570

theorem checked586 : rows586.all (Row.check expTable) = true := by decide +kernel

theorem length586 : rows586.length = 1 := by decide

def runs586 : List (Run expTable) := (List.finRange rows586.length).map (Run.ofGroup expTable rows586 checked586)

#print axioms checked586

theorem checked602 : rows602.all (Row.check expTable) = true := by decide +kernel

theorem length602 : rows602.length = 1 := by decide

def runs602 : List (Run expTable) := (List.finRange rows602.length).map (Run.ofGroup expTable rows602 checked602)

#print axioms checked602

theorem checked618 : rows618.all (Row.check expTable) = true := by decide +kernel

theorem length618 : rows618.length = 1 := by decide

def runs618 : List (Run expTable) := (List.finRange rows618.length).map (Run.ofGroup expTable rows618 checked618)

#print axioms checked618

theorem checked634 : rows634.all (Row.check expTable) = true := by decide +kernel

theorem length634 : rows634.length = 1 := by decide

def runs634 : List (Run expTable) := (List.finRange rows634.length).map (Run.ofGroup expTable rows634 checked634)

#print axioms checked634

theorem checked650 : rows650.all (Row.check expTable) = true := by decide +kernel

theorem length650 : rows650.length = 1 := by decide

def runs650 : List (Run expTable) := (List.finRange rows650.length).map (Run.ofGroup expTable rows650 checked650)

#print axioms checked650

theorem checked666 : rows666.all (Row.check expTable) = true := by decide +kernel

theorem length666 : rows666.length = 1 := by decide

def runs666 : List (Run expTable) := (List.finRange rows666.length).map (Run.ofGroup expTable rows666 checked666)

#print axioms checked666

end DiagonalRamsey.JointRemainingRoutes
