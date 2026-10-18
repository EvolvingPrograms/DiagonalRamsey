import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked3 : rows3.all (Row.check expTable) = true := by decide +kernel

theorem length3 : rows3.length = 32 := by decide

def runs3 : List (Run expTable) := (List.finRange rows3.length).map (Run.ofGroup expTable rows3 checked3)

#print axioms checked3

theorem checked19 : rows19.all (Row.check expTable) = true := by decide +kernel

theorem length19 : rows19.length = 32 := by decide

def runs19 : List (Run expTable) := (List.finRange rows19.length).map (Run.ofGroup expTable rows19 checked19)

#print axioms checked19

theorem checked35 : rows35.all (Row.check expTable) = true := by decide +kernel

theorem length35 : rows35.length = 32 := by decide

def runs35 : List (Run expTable) := (List.finRange rows35.length).map (Run.ofGroup expTable rows35 checked35)

#print axioms checked35

theorem checked51 : rows51.all (Row.check expTable) = true := by decide +kernel

theorem length51 : rows51.length = 32 := by decide

def runs51 : List (Run expTable) := (List.finRange rows51.length).map (Run.ofGroup expTable rows51 checked51)

#print axioms checked51

theorem checked67 : rows67.all (Row.check expTable) = true := by decide +kernel

theorem length67 : rows67.length = 32 := by decide

def runs67 : List (Run expTable) := (List.finRange rows67.length).map (Run.ofGroup expTable rows67 checked67)

#print axioms checked67

theorem checked83 : rows83.all (Row.check expTable) = true := by decide +kernel

theorem length83 : rows83.length = 32 := by decide

def runs83 : List (Run expTable) := (List.finRange rows83.length).map (Run.ofGroup expTable rows83 checked83)

#print axioms checked83

theorem checked99 : rows99.all (Row.check expTable) = true := by decide +kernel

theorem length99 : rows99.length = 32 := by decide

def runs99 : List (Run expTable) := (List.finRange rows99.length).map (Run.ofGroup expTable rows99 checked99)

#print axioms checked99

theorem checked115 : rows115.all (Row.check expTable) = true := by decide +kernel

theorem length115 : rows115.length = 32 := by decide

def runs115 : List (Run expTable) := (List.finRange rows115.length).map (Run.ofGroup expTable rows115 checked115)

#print axioms checked115

theorem checked131 : rows131.all (Row.check expTable) = true := by decide +kernel

theorem length131 : rows131.length = 32 := by decide

def runs131 : List (Run expTable) := (List.finRange rows131.length).map (Run.ofGroup expTable rows131 checked131)

#print axioms checked131

theorem checked147 : rows147.all (Row.check expTable) = true := by decide +kernel

theorem length147 : rows147.length = 27 := by decide

def runs147 : List (Run expTable) := (List.finRange rows147.length).map (Run.ofGroup expTable rows147 checked147)

#print axioms checked147

theorem checked163 : rows163.all (Row.check expTable) = true := by decide +kernel

theorem length163 : rows163.length = 8 := by decide

def runs163 : List (Run expTable) := (List.finRange rows163.length).map (Run.ofGroup expTable rows163 checked163)

#print axioms checked163

theorem checked179 : rows179.all (Row.check expTable) = true := by decide +kernel

theorem length179 : rows179.length = 4 := by decide

def runs179 : List (Run expTable) := (List.finRange rows179.length).map (Run.ofGroup expTable rows179 checked179)

#print axioms checked179

theorem checked195 : rows195.all (Row.check expTable) = true := by decide +kernel

theorem length195 : rows195.length = 3 := by decide

def runs195 : List (Run expTable) := (List.finRange rows195.length).map (Run.ofGroup expTable rows195 checked195)

#print axioms checked195

theorem checked211 : rows211.all (Row.check expTable) = true := by decide +kernel

theorem length211 : rows211.length = 2 := by decide

def runs211 : List (Run expTable) := (List.finRange rows211.length).map (Run.ofGroup expTable rows211 checked211)

#print axioms checked211

theorem checked227 : rows227.all (Row.check expTable) = true := by decide +kernel

theorem length227 : rows227.length = 1 := by decide

def runs227 : List (Run expTable) := (List.finRange rows227.length).map (Run.ofGroup expTable rows227 checked227)

#print axioms checked227

theorem checked243 : rows243.all (Row.check expTable) = true := by decide +kernel

theorem length243 : rows243.length = 1 := by decide

def runs243 : List (Run expTable) := (List.finRange rows243.length).map (Run.ofGroup expTable rows243 checked243)

#print axioms checked243

theorem checked259 : rows259.all (Row.check expTable) = true := by decide +kernel

theorem length259 : rows259.length = 1 := by decide

def runs259 : List (Run expTable) := (List.finRange rows259.length).map (Run.ofGroup expTable rows259 checked259)

#print axioms checked259

theorem checked275 : rows275.all (Row.check expTable) = true := by decide +kernel

theorem length275 : rows275.length = 1 := by decide

def runs275 : List (Run expTable) := (List.finRange rows275.length).map (Run.ofGroup expTable rows275 checked275)

#print axioms checked275

theorem checked291 : rows291.all (Row.check expTable) = true := by decide +kernel

theorem length291 : rows291.length = 1 := by decide

def runs291 : List (Run expTable) := (List.finRange rows291.length).map (Run.ofGroup expTable rows291 checked291)

#print axioms checked291

theorem checked307 : rows307.all (Row.check expTable) = true := by decide +kernel

theorem length307 : rows307.length = 1 := by decide

def runs307 : List (Run expTable) := (List.finRange rows307.length).map (Run.ofGroup expTable rows307 checked307)

#print axioms checked307

theorem checked323 : rows323.all (Row.check expTable) = true := by decide +kernel

theorem length323 : rows323.length = 1 := by decide

def runs323 : List (Run expTable) := (List.finRange rows323.length).map (Run.ofGroup expTable rows323 checked323)

#print axioms checked323

theorem checked339 : rows339.all (Row.check expTable) = true := by decide +kernel

theorem length339 : rows339.length = 1 := by decide

def runs339 : List (Run expTable) := (List.finRange rows339.length).map (Run.ofGroup expTable rows339 checked339)

#print axioms checked339

theorem checked355 : rows355.all (Row.check expTable) = true := by decide +kernel

theorem length355 : rows355.length = 1 := by decide

def runs355 : List (Run expTable) := (List.finRange rows355.length).map (Run.ofGroup expTable rows355 checked355)

#print axioms checked355

theorem checked371 : rows371.all (Row.check expTable) = true := by decide +kernel

theorem length371 : rows371.length = 1 := by decide

def runs371 : List (Run expTable) := (List.finRange rows371.length).map (Run.ofGroup expTable rows371 checked371)

#print axioms checked371

theorem checked387 : rows387.all (Row.check expTable) = true := by decide +kernel

theorem length387 : rows387.length = 1 := by decide

def runs387 : List (Run expTable) := (List.finRange rows387.length).map (Run.ofGroup expTable rows387 checked387)

#print axioms checked387

theorem checked403 : rows403.all (Row.check expTable) = true := by decide +kernel

theorem length403 : rows403.length = 1 := by decide

def runs403 : List (Run expTable) := (List.finRange rows403.length).map (Run.ofGroup expTable rows403 checked403)

#print axioms checked403

theorem checked419 : rows419.all (Row.check expTable) = true := by decide +kernel

theorem length419 : rows419.length = 1 := by decide

def runs419 : List (Run expTable) := (List.finRange rows419.length).map (Run.ofGroup expTable rows419 checked419)

#print axioms checked419

theorem checked435 : rows435.all (Row.check expTable) = true := by decide +kernel

theorem length435 : rows435.length = 1 := by decide

def runs435 : List (Run expTable) := (List.finRange rows435.length).map (Run.ofGroup expTable rows435 checked435)

#print axioms checked435

theorem checked451 : rows451.all (Row.check expTable) = true := by decide +kernel

theorem length451 : rows451.length = 1 := by decide

def runs451 : List (Run expTable) := (List.finRange rows451.length).map (Run.ofGroup expTable rows451 checked451)

#print axioms checked451

theorem checked467 : rows467.all (Row.check expTable) = true := by decide +kernel

theorem length467 : rows467.length = 1 := by decide

def runs467 : List (Run expTable) := (List.finRange rows467.length).map (Run.ofGroup expTable rows467 checked467)

#print axioms checked467

theorem checked483 : rows483.all (Row.check expTable) = true := by decide +kernel

theorem length483 : rows483.length = 1 := by decide

def runs483 : List (Run expTable) := (List.finRange rows483.length).map (Run.ofGroup expTable rows483 checked483)

#print axioms checked483

theorem checked499 : rows499.all (Row.check expTable) = true := by decide +kernel

theorem length499 : rows499.length = 1 := by decide

def runs499 : List (Run expTable) := (List.finRange rows499.length).map (Run.ofGroup expTable rows499 checked499)

#print axioms checked499

theorem checked515 : rows515.all (Row.check expTable) = true := by decide +kernel

theorem length515 : rows515.length = 1 := by decide

def runs515 : List (Run expTable) := (List.finRange rows515.length).map (Run.ofGroup expTable rows515 checked515)

#print axioms checked515

theorem checked531 : rows531.all (Row.check expTable) = true := by decide +kernel

theorem length531 : rows531.length = 1 := by decide

def runs531 : List (Run expTable) := (List.finRange rows531.length).map (Run.ofGroup expTable rows531 checked531)

#print axioms checked531

theorem checked547 : rows547.all (Row.check expTable) = true := by decide +kernel

theorem length547 : rows547.length = 1 := by decide

def runs547 : List (Run expTable) := (List.finRange rows547.length).map (Run.ofGroup expTable rows547 checked547)

#print axioms checked547

theorem checked563 : rows563.all (Row.check expTable) = true := by decide +kernel

theorem length563 : rows563.length = 1 := by decide

def runs563 : List (Run expTable) := (List.finRange rows563.length).map (Run.ofGroup expTable rows563 checked563)

#print axioms checked563

theorem checked579 : rows579.all (Row.check expTable) = true := by decide +kernel

theorem length579 : rows579.length = 1 := by decide

def runs579 : List (Run expTable) := (List.finRange rows579.length).map (Run.ofGroup expTable rows579 checked579)

#print axioms checked579

theorem checked595 : rows595.all (Row.check expTable) = true := by decide +kernel

theorem length595 : rows595.length = 1 := by decide

def runs595 : List (Run expTable) := (List.finRange rows595.length).map (Run.ofGroup expTable rows595 checked595)

#print axioms checked595

theorem checked611 : rows611.all (Row.check expTable) = true := by decide +kernel

theorem length611 : rows611.length = 1 := by decide

def runs611 : List (Run expTable) := (List.finRange rows611.length).map (Run.ofGroup expTable rows611 checked611)

#print axioms checked611

theorem checked627 : rows627.all (Row.check expTable) = true := by decide +kernel

theorem length627 : rows627.length = 1 := by decide

def runs627 : List (Run expTable) := (List.finRange rows627.length).map (Run.ofGroup expTable rows627 checked627)

#print axioms checked627

theorem checked643 : rows643.all (Row.check expTable) = true := by decide +kernel

theorem length643 : rows643.length = 1 := by decide

def runs643 : List (Run expTable) := (List.finRange rows643.length).map (Run.ofGroup expTable rows643 checked643)

#print axioms checked643

theorem checked659 : rows659.all (Row.check expTable) = true := by decide +kernel

theorem length659 : rows659.length = 1 := by decide

def runs659 : List (Run expTable) := (List.finRange rows659.length).map (Run.ofGroup expTable rows659 checked659)

#print axioms checked659

end DiagonalRamsey.JointRemainingRoutes
