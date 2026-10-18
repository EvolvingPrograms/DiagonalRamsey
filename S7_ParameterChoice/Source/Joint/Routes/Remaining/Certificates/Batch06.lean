import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked6 : rows6.all (Row.check expTable) = true := by decide +kernel

theorem length6 : rows6.length = 32 := by decide

def runs6 : List (Run expTable) := (List.finRange rows6.length).map (Run.ofGroup expTable rows6 checked6)

#print axioms checked6

theorem checked22 : rows22.all (Row.check expTable) = true := by decide +kernel

theorem length22 : rows22.length = 32 := by decide

def runs22 : List (Run expTable) := (List.finRange rows22.length).map (Run.ofGroup expTable rows22 checked22)

#print axioms checked22

theorem checked38 : rows38.all (Row.check expTable) = true := by decide +kernel

theorem length38 : rows38.length = 32 := by decide

def runs38 : List (Run expTable) := (List.finRange rows38.length).map (Run.ofGroup expTable rows38 checked38)

#print axioms checked38

theorem checked54 : rows54.all (Row.check expTable) = true := by decide +kernel

theorem length54 : rows54.length = 32 := by decide

def runs54 : List (Run expTable) := (List.finRange rows54.length).map (Run.ofGroup expTable rows54 checked54)

#print axioms checked54

theorem checked70 : rows70.all (Row.check expTable) = true := by decide +kernel

theorem length70 : rows70.length = 32 := by decide

def runs70 : List (Run expTable) := (List.finRange rows70.length).map (Run.ofGroup expTable rows70 checked70)

#print axioms checked70

theorem checked86 : rows86.all (Row.check expTable) = true := by decide +kernel

theorem length86 : rows86.length = 32 := by decide

def runs86 : List (Run expTable) := (List.finRange rows86.length).map (Run.ofGroup expTable rows86 checked86)

#print axioms checked86

theorem checked102 : rows102.all (Row.check expTable) = true := by decide +kernel

theorem length102 : rows102.length = 32 := by decide

def runs102 : List (Run expTable) := (List.finRange rows102.length).map (Run.ofGroup expTable rows102 checked102)

#print axioms checked102

theorem checked118 : rows118.all (Row.check expTable) = true := by decide +kernel

theorem length118 : rows118.length = 32 := by decide

def runs118 : List (Run expTable) := (List.finRange rows118.length).map (Run.ofGroup expTable rows118 checked118)

#print axioms checked118

theorem checked134 : rows134.all (Row.check expTable) = true := by decide +kernel

theorem length134 : rows134.length = 32 := by decide

def runs134 : List (Run expTable) := (List.finRange rows134.length).map (Run.ofGroup expTable rows134 checked134)

#print axioms checked134

theorem checked150 : rows150.all (Row.check expTable) = true := by decide +kernel

theorem length150 : rows150.length = 17 := by decide

def runs150 : List (Run expTable) := (List.finRange rows150.length).map (Run.ofGroup expTable rows150 checked150)

#print axioms checked150

theorem checked166 : rows166.all (Row.check expTable) = true := by decide +kernel

theorem length166 : rows166.length = 7 := by decide

def runs166 : List (Run expTable) := (List.finRange rows166.length).map (Run.ofGroup expTable rows166 checked166)

#print axioms checked166

theorem checked182 : rows182.all (Row.check expTable) = true := by decide +kernel

theorem length182 : rows182.length = 4 := by decide

def runs182 : List (Run expTable) := (List.finRange rows182.length).map (Run.ofGroup expTable rows182 checked182)

#print axioms checked182

theorem checked198 : rows198.all (Row.check expTable) = true := by decide +kernel

theorem length198 : rows198.length = 3 := by decide

def runs198 : List (Run expTable) := (List.finRange rows198.length).map (Run.ofGroup expTable rows198 checked198)

#print axioms checked198

theorem checked214 : rows214.all (Row.check expTable) = true := by decide +kernel

theorem length214 : rows214.length = 2 := by decide

def runs214 : List (Run expTable) := (List.finRange rows214.length).map (Run.ofGroup expTable rows214 checked214)

#print axioms checked214

theorem checked230 : rows230.all (Row.check expTable) = true := by decide +kernel

theorem length230 : rows230.length = 1 := by decide

def runs230 : List (Run expTable) := (List.finRange rows230.length).map (Run.ofGroup expTable rows230 checked230)

#print axioms checked230

theorem checked246 : rows246.all (Row.check expTable) = true := by decide +kernel

theorem length246 : rows246.length = 1 := by decide

def runs246 : List (Run expTable) := (List.finRange rows246.length).map (Run.ofGroup expTable rows246 checked246)

#print axioms checked246

theorem checked262 : rows262.all (Row.check expTable) = true := by decide +kernel

theorem length262 : rows262.length = 1 := by decide

def runs262 : List (Run expTable) := (List.finRange rows262.length).map (Run.ofGroup expTable rows262 checked262)

#print axioms checked262

theorem checked278 : rows278.all (Row.check expTable) = true := by decide +kernel

theorem length278 : rows278.length = 1 := by decide

def runs278 : List (Run expTable) := (List.finRange rows278.length).map (Run.ofGroup expTable rows278 checked278)

#print axioms checked278

theorem checked294 : rows294.all (Row.check expTable) = true := by decide +kernel

theorem length294 : rows294.length = 1 := by decide

def runs294 : List (Run expTable) := (List.finRange rows294.length).map (Run.ofGroup expTable rows294 checked294)

#print axioms checked294

theorem checked310 : rows310.all (Row.check expTable) = true := by decide +kernel

theorem length310 : rows310.length = 1 := by decide

def runs310 : List (Run expTable) := (List.finRange rows310.length).map (Run.ofGroup expTable rows310 checked310)

#print axioms checked310

theorem checked326 : rows326.all (Row.check expTable) = true := by decide +kernel

theorem length326 : rows326.length = 1 := by decide

def runs326 : List (Run expTable) := (List.finRange rows326.length).map (Run.ofGroup expTable rows326 checked326)

#print axioms checked326

theorem checked342 : rows342.all (Row.check expTable) = true := by decide +kernel

theorem length342 : rows342.length = 1 := by decide

def runs342 : List (Run expTable) := (List.finRange rows342.length).map (Run.ofGroup expTable rows342 checked342)

#print axioms checked342

theorem checked358 : rows358.all (Row.check expTable) = true := by decide +kernel

theorem length358 : rows358.length = 1 := by decide

def runs358 : List (Run expTable) := (List.finRange rows358.length).map (Run.ofGroup expTable rows358 checked358)

#print axioms checked358

theorem checked374 : rows374.all (Row.check expTable) = true := by decide +kernel

theorem length374 : rows374.length = 1 := by decide

def runs374 : List (Run expTable) := (List.finRange rows374.length).map (Run.ofGroup expTable rows374 checked374)

#print axioms checked374

theorem checked390 : rows390.all (Row.check expTable) = true := by decide +kernel

theorem length390 : rows390.length = 1 := by decide

def runs390 : List (Run expTable) := (List.finRange rows390.length).map (Run.ofGroup expTable rows390 checked390)

#print axioms checked390

theorem checked406 : rows406.all (Row.check expTable) = true := by decide +kernel

theorem length406 : rows406.length = 1 := by decide

def runs406 : List (Run expTable) := (List.finRange rows406.length).map (Run.ofGroup expTable rows406 checked406)

#print axioms checked406

theorem checked422 : rows422.all (Row.check expTable) = true := by decide +kernel

theorem length422 : rows422.length = 1 := by decide

def runs422 : List (Run expTable) := (List.finRange rows422.length).map (Run.ofGroup expTable rows422 checked422)

#print axioms checked422

theorem checked438 : rows438.all (Row.check expTable) = true := by decide +kernel

theorem length438 : rows438.length = 1 := by decide

def runs438 : List (Run expTable) := (List.finRange rows438.length).map (Run.ofGroup expTable rows438 checked438)

#print axioms checked438

theorem checked454 : rows454.all (Row.check expTable) = true := by decide +kernel

theorem length454 : rows454.length = 1 := by decide

def runs454 : List (Run expTable) := (List.finRange rows454.length).map (Run.ofGroup expTable rows454 checked454)

#print axioms checked454

theorem checked470 : rows470.all (Row.check expTable) = true := by decide +kernel

theorem length470 : rows470.length = 1 := by decide

def runs470 : List (Run expTable) := (List.finRange rows470.length).map (Run.ofGroup expTable rows470 checked470)

#print axioms checked470

theorem checked486 : rows486.all (Row.check expTable) = true := by decide +kernel

theorem length486 : rows486.length = 1 := by decide

def runs486 : List (Run expTable) := (List.finRange rows486.length).map (Run.ofGroup expTable rows486 checked486)

#print axioms checked486

theorem checked502 : rows502.all (Row.check expTable) = true := by decide +kernel

theorem length502 : rows502.length = 1 := by decide

def runs502 : List (Run expTable) := (List.finRange rows502.length).map (Run.ofGroup expTable rows502 checked502)

#print axioms checked502

theorem checked518 : rows518.all (Row.check expTable) = true := by decide +kernel

theorem length518 : rows518.length = 1 := by decide

def runs518 : List (Run expTable) := (List.finRange rows518.length).map (Run.ofGroup expTable rows518 checked518)

#print axioms checked518

theorem checked534 : rows534.all (Row.check expTable) = true := by decide +kernel

theorem length534 : rows534.length = 1 := by decide

def runs534 : List (Run expTable) := (List.finRange rows534.length).map (Run.ofGroup expTable rows534 checked534)

#print axioms checked534

theorem checked550 : rows550.all (Row.check expTable) = true := by decide +kernel

theorem length550 : rows550.length = 1 := by decide

def runs550 : List (Run expTable) := (List.finRange rows550.length).map (Run.ofGroup expTable rows550 checked550)

#print axioms checked550

theorem checked566 : rows566.all (Row.check expTable) = true := by decide +kernel

theorem length566 : rows566.length = 1 := by decide

def runs566 : List (Run expTable) := (List.finRange rows566.length).map (Run.ofGroup expTable rows566 checked566)

#print axioms checked566

theorem checked582 : rows582.all (Row.check expTable) = true := by decide +kernel

theorem length582 : rows582.length = 1 := by decide

def runs582 : List (Run expTable) := (List.finRange rows582.length).map (Run.ofGroup expTable rows582 checked582)

#print axioms checked582

theorem checked598 : rows598.all (Row.check expTable) = true := by decide +kernel

theorem length598 : rows598.length = 1 := by decide

def runs598 : List (Run expTable) := (List.finRange rows598.length).map (Run.ofGroup expTable rows598 checked598)

#print axioms checked598

theorem checked614 : rows614.all (Row.check expTable) = true := by decide +kernel

theorem length614 : rows614.length = 1 := by decide

def runs614 : List (Run expTable) := (List.finRange rows614.length).map (Run.ofGroup expTable rows614 checked614)

#print axioms checked614

theorem checked630 : rows630.all (Row.check expTable) = true := by decide +kernel

theorem length630 : rows630.length = 1 := by decide

def runs630 : List (Run expTable) := (List.finRange rows630.length).map (Run.ofGroup expTable rows630 checked630)

#print axioms checked630

theorem checked646 : rows646.all (Row.check expTable) = true := by decide +kernel

theorem length646 : rows646.length = 1 := by decide

def runs646 : List (Run expTable) := (List.finRange rows646.length).map (Run.ofGroup expTable rows646 checked646)

#print axioms checked646

theorem checked662 : rows662.all (Row.check expTable) = true := by decide +kernel

theorem length662 : rows662.length = 1 := by decide

def runs662 : List (Run expTable) := (List.finRange rows662.length).map (Run.ofGroup expTable rows662 checked662)

#print axioms checked662

end DiagonalRamsey.JointRemainingRoutes
