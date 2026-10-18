import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked1 : rows1.all (Row.check expTable) = true := by decide +kernel

theorem length1 : rows1.length = 32 := by decide

def runs1 : List (Run expTable) := (List.finRange rows1.length).map (Run.ofGroup expTable rows1 checked1)

#print axioms checked1

theorem checked17 : rows17.all (Row.check expTable) = true := by decide +kernel

theorem length17 : rows17.length = 32 := by decide

def runs17 : List (Run expTable) := (List.finRange rows17.length).map (Run.ofGroup expTable rows17 checked17)

#print axioms checked17

theorem checked33 : rows33.all (Row.check expTable) = true := by decide +kernel

theorem length33 : rows33.length = 32 := by decide

def runs33 : List (Run expTable) := (List.finRange rows33.length).map (Run.ofGroup expTable rows33 checked33)

#print axioms checked33

theorem checked49 : rows49.all (Row.check expTable) = true := by decide +kernel

theorem length49 : rows49.length = 32 := by decide

def runs49 : List (Run expTable) := (List.finRange rows49.length).map (Run.ofGroup expTable rows49 checked49)

#print axioms checked49

theorem checked65 : rows65.all (Row.check expTable) = true := by decide +kernel

theorem length65 : rows65.length = 32 := by decide

def runs65 : List (Run expTable) := (List.finRange rows65.length).map (Run.ofGroup expTable rows65 checked65)

#print axioms checked65

theorem checked81 : rows81.all (Row.check expTable) = true := by decide +kernel

theorem length81 : rows81.length = 32 := by decide

def runs81 : List (Run expTable) := (List.finRange rows81.length).map (Run.ofGroup expTable rows81 checked81)

#print axioms checked81

theorem checked97 : rows97.all (Row.check expTable) = true := by decide +kernel

theorem length97 : rows97.length = 32 := by decide

def runs97 : List (Run expTable) := (List.finRange rows97.length).map (Run.ofGroup expTable rows97 checked97)

#print axioms checked97

theorem checked113 : rows113.all (Row.check expTable) = true := by decide +kernel

theorem length113 : rows113.length = 32 := by decide

def runs113 : List (Run expTable) := (List.finRange rows113.length).map (Run.ofGroup expTable rows113 checked113)

#print axioms checked113

theorem checked129 : rows129.all (Row.check expTable) = true := by decide +kernel

theorem length129 : rows129.length = 32 := by decide

def runs129 : List (Run expTable) := (List.finRange rows129.length).map (Run.ofGroup expTable rows129 checked129)

#print axioms checked129

theorem checked145 : rows145.all (Row.check expTable) = true := by decide +kernel

theorem length145 : rows145.length = 32 := by decide

def runs145 : List (Run expTable) := (List.finRange rows145.length).map (Run.ofGroup expTable rows145 checked145)

#print axioms checked145

theorem checked161 : rows161.all (Row.check expTable) = true := by decide +kernel

theorem length161 : rows161.length = 8 := by decide

def runs161 : List (Run expTable) := (List.finRange rows161.length).map (Run.ofGroup expTable rows161 checked161)

#print axioms checked161

theorem checked177 : rows177.all (Row.check expTable) = true := by decide +kernel

theorem length177 : rows177.length = 5 := by decide

def runs177 : List (Run expTable) := (List.finRange rows177.length).map (Run.ofGroup expTable rows177 checked177)

#print axioms checked177

theorem checked193 : rows193.all (Row.check expTable) = true := by decide +kernel

theorem length193 : rows193.length = 3 := by decide

def runs193 : List (Run expTable) := (List.finRange rows193.length).map (Run.ofGroup expTable rows193 checked193)

#print axioms checked193

theorem checked209 : rows209.all (Row.check expTable) = true := by decide +kernel

theorem length209 : rows209.length = 2 := by decide

def runs209 : List (Run expTable) := (List.finRange rows209.length).map (Run.ofGroup expTable rows209 checked209)

#print axioms checked209

theorem checked225 : rows225.all (Row.check expTable) = true := by decide +kernel

theorem length225 : rows225.length = 1 := by decide

def runs225 : List (Run expTable) := (List.finRange rows225.length).map (Run.ofGroup expTable rows225 checked225)

#print axioms checked225

theorem checked241 : rows241.all (Row.check expTable) = true := by decide +kernel

theorem length241 : rows241.length = 1 := by decide

def runs241 : List (Run expTable) := (List.finRange rows241.length).map (Run.ofGroup expTable rows241 checked241)

#print axioms checked241

theorem checked257 : rows257.all (Row.check expTable) = true := by decide +kernel

theorem length257 : rows257.length = 1 := by decide

def runs257 : List (Run expTable) := (List.finRange rows257.length).map (Run.ofGroup expTable rows257 checked257)

#print axioms checked257

theorem checked273 : rows273.all (Row.check expTable) = true := by decide +kernel

theorem length273 : rows273.length = 1 := by decide

def runs273 : List (Run expTable) := (List.finRange rows273.length).map (Run.ofGroup expTable rows273 checked273)

#print axioms checked273

theorem checked289 : rows289.all (Row.check expTable) = true := by decide +kernel

theorem length289 : rows289.length = 1 := by decide

def runs289 : List (Run expTable) := (List.finRange rows289.length).map (Run.ofGroup expTable rows289 checked289)

#print axioms checked289

theorem checked305 : rows305.all (Row.check expTable) = true := by decide +kernel

theorem length305 : rows305.length = 1 := by decide

def runs305 : List (Run expTable) := (List.finRange rows305.length).map (Run.ofGroup expTable rows305 checked305)

#print axioms checked305

theorem checked321 : rows321.all (Row.check expTable) = true := by decide +kernel

theorem length321 : rows321.length = 1 := by decide

def runs321 : List (Run expTable) := (List.finRange rows321.length).map (Run.ofGroup expTable rows321 checked321)

#print axioms checked321

theorem checked337 : rows337.all (Row.check expTable) = true := by decide +kernel

theorem length337 : rows337.length = 1 := by decide

def runs337 : List (Run expTable) := (List.finRange rows337.length).map (Run.ofGroup expTable rows337 checked337)

#print axioms checked337

theorem checked353 : rows353.all (Row.check expTable) = true := by decide +kernel

theorem length353 : rows353.length = 1 := by decide

def runs353 : List (Run expTable) := (List.finRange rows353.length).map (Run.ofGroup expTable rows353 checked353)

#print axioms checked353

theorem checked369 : rows369.all (Row.check expTable) = true := by decide +kernel

theorem length369 : rows369.length = 1 := by decide

def runs369 : List (Run expTable) := (List.finRange rows369.length).map (Run.ofGroup expTable rows369 checked369)

#print axioms checked369

theorem checked385 : rows385.all (Row.check expTable) = true := by decide +kernel

theorem length385 : rows385.length = 1 := by decide

def runs385 : List (Run expTable) := (List.finRange rows385.length).map (Run.ofGroup expTable rows385 checked385)

#print axioms checked385

theorem checked401 : rows401.all (Row.check expTable) = true := by decide +kernel

theorem length401 : rows401.length = 1 := by decide

def runs401 : List (Run expTable) := (List.finRange rows401.length).map (Run.ofGroup expTable rows401 checked401)

#print axioms checked401

theorem checked417 : rows417.all (Row.check expTable) = true := by decide +kernel

theorem length417 : rows417.length = 1 := by decide

def runs417 : List (Run expTable) := (List.finRange rows417.length).map (Run.ofGroup expTable rows417 checked417)

#print axioms checked417

theorem checked433 : rows433.all (Row.check expTable) = true := by decide +kernel

theorem length433 : rows433.length = 1 := by decide

def runs433 : List (Run expTable) := (List.finRange rows433.length).map (Run.ofGroup expTable rows433 checked433)

#print axioms checked433

theorem checked449 : rows449.all (Row.check expTable) = true := by decide +kernel

theorem length449 : rows449.length = 1 := by decide

def runs449 : List (Run expTable) := (List.finRange rows449.length).map (Run.ofGroup expTable rows449 checked449)

#print axioms checked449

theorem checked465 : rows465.all (Row.check expTable) = true := by decide +kernel

theorem length465 : rows465.length = 1 := by decide

def runs465 : List (Run expTable) := (List.finRange rows465.length).map (Run.ofGroup expTable rows465 checked465)

#print axioms checked465

theorem checked481 : rows481.all (Row.check expTable) = true := by decide +kernel

theorem length481 : rows481.length = 1 := by decide

def runs481 : List (Run expTable) := (List.finRange rows481.length).map (Run.ofGroup expTable rows481 checked481)

#print axioms checked481

theorem checked497 : rows497.all (Row.check expTable) = true := by decide +kernel

theorem length497 : rows497.length = 1 := by decide

def runs497 : List (Run expTable) := (List.finRange rows497.length).map (Run.ofGroup expTable rows497 checked497)

#print axioms checked497

theorem checked513 : rows513.all (Row.check expTable) = true := by decide +kernel

theorem length513 : rows513.length = 1 := by decide

def runs513 : List (Run expTable) := (List.finRange rows513.length).map (Run.ofGroup expTable rows513 checked513)

#print axioms checked513

theorem checked529 : rows529.all (Row.check expTable) = true := by decide +kernel

theorem length529 : rows529.length = 1 := by decide

def runs529 : List (Run expTable) := (List.finRange rows529.length).map (Run.ofGroup expTable rows529 checked529)

#print axioms checked529

theorem checked545 : rows545.all (Row.check expTable) = true := by decide +kernel

theorem length545 : rows545.length = 1 := by decide

def runs545 : List (Run expTable) := (List.finRange rows545.length).map (Run.ofGroup expTable rows545 checked545)

#print axioms checked545

theorem checked561 : rows561.all (Row.check expTable) = true := by decide +kernel

theorem length561 : rows561.length = 1 := by decide

def runs561 : List (Run expTable) := (List.finRange rows561.length).map (Run.ofGroup expTable rows561 checked561)

#print axioms checked561

theorem checked577 : rows577.all (Row.check expTable) = true := by decide +kernel

theorem length577 : rows577.length = 1 := by decide

def runs577 : List (Run expTable) := (List.finRange rows577.length).map (Run.ofGroup expTable rows577 checked577)

#print axioms checked577

theorem checked593 : rows593.all (Row.check expTable) = true := by decide +kernel

theorem length593 : rows593.length = 1 := by decide

def runs593 : List (Run expTable) := (List.finRange rows593.length).map (Run.ofGroup expTable rows593 checked593)

#print axioms checked593

theorem checked609 : rows609.all (Row.check expTable) = true := by decide +kernel

theorem length609 : rows609.length = 1 := by decide

def runs609 : List (Run expTable) := (List.finRange rows609.length).map (Run.ofGroup expTable rows609 checked609)

#print axioms checked609

theorem checked625 : rows625.all (Row.check expTable) = true := by decide +kernel

theorem length625 : rows625.length = 1 := by decide

def runs625 : List (Run expTable) := (List.finRange rows625.length).map (Run.ofGroup expTable rows625 checked625)

#print axioms checked625

theorem checked641 : rows641.all (Row.check expTable) = true := by decide +kernel

theorem length641 : rows641.length = 1 := by decide

def runs641 : List (Run expTable) := (List.finRange rows641.length).map (Run.ofGroup expTable rows641 checked641)

#print axioms checked641

theorem checked657 : rows657.all (Row.check expTable) = true := by decide +kernel

theorem length657 : rows657.length = 1 := by decide

def runs657 : List (Run expTable) := (List.finRange rows657.length).map (Run.ofGroup expTable rows657 checked657)

#print axioms checked657

theorem checked673 : rows673.all (Row.check expTable) = true := by decide +kernel

theorem length673 : rows673.length = 1 := by decide

def runs673 : List (Run expTable) := (List.finRange rows673.length).map (Run.ofGroup expTable rows673 checked673)

#print axioms checked673

end DiagonalRamsey.JointRemainingRoutes
