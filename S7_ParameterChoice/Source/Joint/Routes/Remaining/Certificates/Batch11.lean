import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked11 : rows11.all (Row.check expTable) = true := by decide +kernel

theorem length11 : rows11.length = 32 := by decide

def runs11 : List (Run expTable) := (List.finRange rows11.length).map (Run.ofGroup expTable rows11 checked11)

#print axioms checked11

theorem checked27 : rows27.all (Row.check expTable) = true := by decide +kernel

theorem length27 : rows27.length = 32 := by decide

def runs27 : List (Run expTable) := (List.finRange rows27.length).map (Run.ofGroup expTable rows27 checked27)

#print axioms checked27

theorem checked43 : rows43.all (Row.check expTable) = true := by decide +kernel

theorem length43 : rows43.length = 32 := by decide

def runs43 : List (Run expTable) := (List.finRange rows43.length).map (Run.ofGroup expTable rows43 checked43)

#print axioms checked43

theorem checked59 : rows59.all (Row.check expTable) = true := by decide +kernel

theorem length59 : rows59.length = 32 := by decide

def runs59 : List (Run expTable) := (List.finRange rows59.length).map (Run.ofGroup expTable rows59 checked59)

#print axioms checked59

theorem checked75 : rows75.all (Row.check expTable) = true := by decide +kernel

theorem length75 : rows75.length = 32 := by decide

def runs75 : List (Run expTable) := (List.finRange rows75.length).map (Run.ofGroup expTable rows75 checked75)

#print axioms checked75

theorem checked91 : rows91.all (Row.check expTable) = true := by decide +kernel

theorem length91 : rows91.length = 32 := by decide

def runs91 : List (Run expTable) := (List.finRange rows91.length).map (Run.ofGroup expTable rows91 checked91)

#print axioms checked91

theorem checked107 : rows107.all (Row.check expTable) = true := by decide +kernel

theorem length107 : rows107.length = 32 := by decide

def runs107 : List (Run expTable) := (List.finRange rows107.length).map (Run.ofGroup expTable rows107 checked107)

#print axioms checked107

theorem checked123 : rows123.all (Row.check expTable) = true := by decide +kernel

theorem length123 : rows123.length = 32 := by decide

def runs123 : List (Run expTable) := (List.finRange rows123.length).map (Run.ofGroup expTable rows123 checked123)

#print axioms checked123

theorem checked139 : rows139.all (Row.check expTable) = true := by decide +kernel

theorem length139 : rows139.length = 32 := by decide

def runs139 : List (Run expTable) := (List.finRange rows139.length).map (Run.ofGroup expTable rows139 checked139)

#print axioms checked139

theorem checked155 : rows155.all (Row.check expTable) = true := by decide +kernel

theorem length155 : rows155.length = 12 := by decide

def runs155 : List (Run expTable) := (List.finRange rows155.length).map (Run.ofGroup expTable rows155 checked155)

#print axioms checked155

theorem checked171 : rows171.all (Row.check expTable) = true := by decide +kernel

theorem length171 : rows171.length = 5 := by decide

def runs171 : List (Run expTable) := (List.finRange rows171.length).map (Run.ofGroup expTable rows171 checked171)

#print axioms checked171

theorem checked187 : rows187.all (Row.check expTable) = true := by decide +kernel

theorem length187 : rows187.length = 3 := by decide

def runs187 : List (Run expTable) := (List.finRange rows187.length).map (Run.ofGroup expTable rows187 checked187)

#print axioms checked187

theorem checked203 : rows203.all (Row.check expTable) = true := by decide +kernel

theorem length203 : rows203.length = 3 := by decide

def runs203 : List (Run expTable) := (List.finRange rows203.length).map (Run.ofGroup expTable rows203 checked203)

#print axioms checked203

theorem checked219 : rows219.all (Row.check expTable) = true := by decide +kernel

theorem length219 : rows219.length = 2 := by decide

def runs219 : List (Run expTable) := (List.finRange rows219.length).map (Run.ofGroup expTable rows219 checked219)

#print axioms checked219

theorem checked235 : rows235.all (Row.check expTable) = true := by decide +kernel

theorem length235 : rows235.length = 1 := by decide

def runs235 : List (Run expTable) := (List.finRange rows235.length).map (Run.ofGroup expTable rows235 checked235)

#print axioms checked235

theorem checked251 : rows251.all (Row.check expTable) = true := by decide +kernel

theorem length251 : rows251.length = 1 := by decide

def runs251 : List (Run expTable) := (List.finRange rows251.length).map (Run.ofGroup expTable rows251 checked251)

#print axioms checked251

theorem checked267 : rows267.all (Row.check expTable) = true := by decide +kernel

theorem length267 : rows267.length = 1 := by decide

def runs267 : List (Run expTable) := (List.finRange rows267.length).map (Run.ofGroup expTable rows267 checked267)

#print axioms checked267

theorem checked283 : rows283.all (Row.check expTable) = true := by decide +kernel

theorem length283 : rows283.length = 1 := by decide

def runs283 : List (Run expTable) := (List.finRange rows283.length).map (Run.ofGroup expTable rows283 checked283)

#print axioms checked283

theorem checked299 : rows299.all (Row.check expTable) = true := by decide +kernel

theorem length299 : rows299.length = 1 := by decide

def runs299 : List (Run expTable) := (List.finRange rows299.length).map (Run.ofGroup expTable rows299 checked299)

#print axioms checked299

theorem checked315 : rows315.all (Row.check expTable) = true := by decide +kernel

theorem length315 : rows315.length = 1 := by decide

def runs315 : List (Run expTable) := (List.finRange rows315.length).map (Run.ofGroup expTable rows315 checked315)

#print axioms checked315

theorem checked331 : rows331.all (Row.check expTable) = true := by decide +kernel

theorem length331 : rows331.length = 1 := by decide

def runs331 : List (Run expTable) := (List.finRange rows331.length).map (Run.ofGroup expTable rows331 checked331)

#print axioms checked331

theorem checked347 : rows347.all (Row.check expTable) = true := by decide +kernel

theorem length347 : rows347.length = 1 := by decide

def runs347 : List (Run expTable) := (List.finRange rows347.length).map (Run.ofGroup expTable rows347 checked347)

#print axioms checked347

theorem checked363 : rows363.all (Row.check expTable) = true := by decide +kernel

theorem length363 : rows363.length = 1 := by decide

def runs363 : List (Run expTable) := (List.finRange rows363.length).map (Run.ofGroup expTable rows363 checked363)

#print axioms checked363

theorem checked379 : rows379.all (Row.check expTable) = true := by decide +kernel

theorem length379 : rows379.length = 1 := by decide

def runs379 : List (Run expTable) := (List.finRange rows379.length).map (Run.ofGroup expTable rows379 checked379)

#print axioms checked379

theorem checked395 : rows395.all (Row.check expTable) = true := by decide +kernel

theorem length395 : rows395.length = 1 := by decide

def runs395 : List (Run expTable) := (List.finRange rows395.length).map (Run.ofGroup expTable rows395 checked395)

#print axioms checked395

theorem checked411 : rows411.all (Row.check expTable) = true := by decide +kernel

theorem length411 : rows411.length = 1 := by decide

def runs411 : List (Run expTable) := (List.finRange rows411.length).map (Run.ofGroup expTable rows411 checked411)

#print axioms checked411

theorem checked427 : rows427.all (Row.check expTable) = true := by decide +kernel

theorem length427 : rows427.length = 1 := by decide

def runs427 : List (Run expTable) := (List.finRange rows427.length).map (Run.ofGroup expTable rows427 checked427)

#print axioms checked427

theorem checked443 : rows443.all (Row.check expTable) = true := by decide +kernel

theorem length443 : rows443.length = 1 := by decide

def runs443 : List (Run expTable) := (List.finRange rows443.length).map (Run.ofGroup expTable rows443 checked443)

#print axioms checked443

theorem checked459 : rows459.all (Row.check expTable) = true := by decide +kernel

theorem length459 : rows459.length = 1 := by decide

def runs459 : List (Run expTable) := (List.finRange rows459.length).map (Run.ofGroup expTable rows459 checked459)

#print axioms checked459

theorem checked475 : rows475.all (Row.check expTable) = true := by decide +kernel

theorem length475 : rows475.length = 1 := by decide

def runs475 : List (Run expTable) := (List.finRange rows475.length).map (Run.ofGroup expTable rows475 checked475)

#print axioms checked475

theorem checked491 : rows491.all (Row.check expTable) = true := by decide +kernel

theorem length491 : rows491.length = 1 := by decide

def runs491 : List (Run expTable) := (List.finRange rows491.length).map (Run.ofGroup expTable rows491 checked491)

#print axioms checked491

theorem checked507 : rows507.all (Row.check expTable) = true := by decide +kernel

theorem length507 : rows507.length = 1 := by decide

def runs507 : List (Run expTable) := (List.finRange rows507.length).map (Run.ofGroup expTable rows507 checked507)

#print axioms checked507

theorem checked523 : rows523.all (Row.check expTable) = true := by decide +kernel

theorem length523 : rows523.length = 1 := by decide

def runs523 : List (Run expTable) := (List.finRange rows523.length).map (Run.ofGroup expTable rows523 checked523)

#print axioms checked523

theorem checked539 : rows539.all (Row.check expTable) = true := by decide +kernel

theorem length539 : rows539.length = 1 := by decide

def runs539 : List (Run expTable) := (List.finRange rows539.length).map (Run.ofGroup expTable rows539 checked539)

#print axioms checked539

theorem checked555 : rows555.all (Row.check expTable) = true := by decide +kernel

theorem length555 : rows555.length = 1 := by decide

def runs555 : List (Run expTable) := (List.finRange rows555.length).map (Run.ofGroup expTable rows555 checked555)

#print axioms checked555

theorem checked571 : rows571.all (Row.check expTable) = true := by decide +kernel

theorem length571 : rows571.length = 1 := by decide

def runs571 : List (Run expTable) := (List.finRange rows571.length).map (Run.ofGroup expTable rows571 checked571)

#print axioms checked571

theorem checked587 : rows587.all (Row.check expTable) = true := by decide +kernel

theorem length587 : rows587.length = 1 := by decide

def runs587 : List (Run expTable) := (List.finRange rows587.length).map (Run.ofGroup expTable rows587 checked587)

#print axioms checked587

theorem checked603 : rows603.all (Row.check expTable) = true := by decide +kernel

theorem length603 : rows603.length = 1 := by decide

def runs603 : List (Run expTable) := (List.finRange rows603.length).map (Run.ofGroup expTable rows603 checked603)

#print axioms checked603

theorem checked619 : rows619.all (Row.check expTable) = true := by decide +kernel

theorem length619 : rows619.length = 1 := by decide

def runs619 : List (Run expTable) := (List.finRange rows619.length).map (Run.ofGroup expTable rows619 checked619)

#print axioms checked619

theorem checked635 : rows635.all (Row.check expTable) = true := by decide +kernel

theorem length635 : rows635.length = 1 := by decide

def runs635 : List (Run expTable) := (List.finRange rows635.length).map (Run.ofGroup expTable rows635 checked635)

#print axioms checked635

theorem checked651 : rows651.all (Row.check expTable) = true := by decide +kernel

theorem length651 : rows651.length = 1 := by decide

def runs651 : List (Run expTable) := (List.finRange rows651.length).map (Run.ofGroup expTable rows651 checked651)

#print axioms checked651

theorem checked667 : rows667.all (Row.check expTable) = true := by decide +kernel

theorem length667 : rows667.length = 1 := by decide

def runs667 : List (Run expTable) := (List.finRange rows667.length).map (Run.ofGroup expTable rows667 checked667)

#print axioms checked667

end DiagonalRamsey.JointRemainingRoutes
