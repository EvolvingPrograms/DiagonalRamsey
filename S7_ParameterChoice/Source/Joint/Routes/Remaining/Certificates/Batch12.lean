import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked12 : rows12.all (Row.check expTable) = true := by decide +kernel

theorem length12 : rows12.length = 32 := by decide

def runs12 : List (Run expTable) := (List.finRange rows12.length).map (Run.ofGroup expTable rows12 checked12)

#print axioms checked12

theorem checked28 : rows28.all (Row.check expTable) = true := by decide +kernel

theorem length28 : rows28.length = 32 := by decide

def runs28 : List (Run expTable) := (List.finRange rows28.length).map (Run.ofGroup expTable rows28 checked28)

#print axioms checked28

theorem checked44 : rows44.all (Row.check expTable) = true := by decide +kernel

theorem length44 : rows44.length = 32 := by decide

def runs44 : List (Run expTable) := (List.finRange rows44.length).map (Run.ofGroup expTable rows44 checked44)

#print axioms checked44

theorem checked60 : rows60.all (Row.check expTable) = true := by decide +kernel

theorem length60 : rows60.length = 32 := by decide

def runs60 : List (Run expTable) := (List.finRange rows60.length).map (Run.ofGroup expTable rows60 checked60)

#print axioms checked60

theorem checked76 : rows76.all (Row.check expTable) = true := by decide +kernel

theorem length76 : rows76.length = 32 := by decide

def runs76 : List (Run expTable) := (List.finRange rows76.length).map (Run.ofGroup expTable rows76 checked76)

#print axioms checked76

theorem checked92 : rows92.all (Row.check expTable) = true := by decide +kernel

theorem length92 : rows92.length = 32 := by decide

def runs92 : List (Run expTable) := (List.finRange rows92.length).map (Run.ofGroup expTable rows92 checked92)

#print axioms checked92

theorem checked108 : rows108.all (Row.check expTable) = true := by decide +kernel

theorem length108 : rows108.length = 32 := by decide

def runs108 : List (Run expTable) := (List.finRange rows108.length).map (Run.ofGroup expTable rows108 checked108)

#print axioms checked108

theorem checked124 : rows124.all (Row.check expTable) = true := by decide +kernel

theorem length124 : rows124.length = 32 := by decide

def runs124 : List (Run expTable) := (List.finRange rows124.length).map (Run.ofGroup expTable rows124 checked124)

#print axioms checked124

theorem checked140 : rows140.all (Row.check expTable) = true := by decide +kernel

theorem length140 : rows140.length = 32 := by decide

def runs140 : List (Run expTable) := (List.finRange rows140.length).map (Run.ofGroup expTable rows140 checked140)

#print axioms checked140

theorem checked156 : rows156.all (Row.check expTable) = true := by decide +kernel

theorem length156 : rows156.length = 11 := by decide

def runs156 : List (Run expTable) := (List.finRange rows156.length).map (Run.ofGroup expTable rows156 checked156)

#print axioms checked156

theorem checked172 : rows172.all (Row.check expTable) = true := by decide +kernel

theorem length172 : rows172.length = 5 := by decide

def runs172 : List (Run expTable) := (List.finRange rows172.length).map (Run.ofGroup expTable rows172 checked172)

#print axioms checked172

theorem checked188 : rows188.all (Row.check expTable) = true := by decide +kernel

theorem length188 : rows188.length = 3 := by decide

def runs188 : List (Run expTable) := (List.finRange rows188.length).map (Run.ofGroup expTable rows188 checked188)

#print axioms checked188

theorem checked204 : rows204.all (Row.check expTable) = true := by decide +kernel

theorem length204 : rows204.length = 3 := by decide

def runs204 : List (Run expTable) := (List.finRange rows204.length).map (Run.ofGroup expTable rows204 checked204)

#print axioms checked204

theorem checked220 : rows220.all (Row.check expTable) = true := by decide +kernel

theorem length220 : rows220.length = 2 := by decide

def runs220 : List (Run expTable) := (List.finRange rows220.length).map (Run.ofGroup expTable rows220 checked220)

#print axioms checked220

theorem checked236 : rows236.all (Row.check expTable) = true := by decide +kernel

theorem length236 : rows236.length = 1 := by decide

def runs236 : List (Run expTable) := (List.finRange rows236.length).map (Run.ofGroup expTable rows236 checked236)

#print axioms checked236

theorem checked252 : rows252.all (Row.check expTable) = true := by decide +kernel

theorem length252 : rows252.length = 1 := by decide

def runs252 : List (Run expTable) := (List.finRange rows252.length).map (Run.ofGroup expTable rows252 checked252)

#print axioms checked252

theorem checked268 : rows268.all (Row.check expTable) = true := by decide +kernel

theorem length268 : rows268.length = 1 := by decide

def runs268 : List (Run expTable) := (List.finRange rows268.length).map (Run.ofGroup expTable rows268 checked268)

#print axioms checked268

theorem checked284 : rows284.all (Row.check expTable) = true := by decide +kernel

theorem length284 : rows284.length = 1 := by decide

def runs284 : List (Run expTable) := (List.finRange rows284.length).map (Run.ofGroup expTable rows284 checked284)

#print axioms checked284

theorem checked300 : rows300.all (Row.check expTable) = true := by decide +kernel

theorem length300 : rows300.length = 1 := by decide

def runs300 : List (Run expTable) := (List.finRange rows300.length).map (Run.ofGroup expTable rows300 checked300)

#print axioms checked300

theorem checked316 : rows316.all (Row.check expTable) = true := by decide +kernel

theorem length316 : rows316.length = 1 := by decide

def runs316 : List (Run expTable) := (List.finRange rows316.length).map (Run.ofGroup expTable rows316 checked316)

#print axioms checked316

theorem checked332 : rows332.all (Row.check expTable) = true := by decide +kernel

theorem length332 : rows332.length = 1 := by decide

def runs332 : List (Run expTable) := (List.finRange rows332.length).map (Run.ofGroup expTable rows332 checked332)

#print axioms checked332

theorem checked348 : rows348.all (Row.check expTable) = true := by decide +kernel

theorem length348 : rows348.length = 1 := by decide

def runs348 : List (Run expTable) := (List.finRange rows348.length).map (Run.ofGroup expTable rows348 checked348)

#print axioms checked348

theorem checked364 : rows364.all (Row.check expTable) = true := by decide +kernel

theorem length364 : rows364.length = 1 := by decide

def runs364 : List (Run expTable) := (List.finRange rows364.length).map (Run.ofGroup expTable rows364 checked364)

#print axioms checked364

theorem checked380 : rows380.all (Row.check expTable) = true := by decide +kernel

theorem length380 : rows380.length = 1 := by decide

def runs380 : List (Run expTable) := (List.finRange rows380.length).map (Run.ofGroup expTable rows380 checked380)

#print axioms checked380

theorem checked396 : rows396.all (Row.check expTable) = true := by decide +kernel

theorem length396 : rows396.length = 1 := by decide

def runs396 : List (Run expTable) := (List.finRange rows396.length).map (Run.ofGroup expTable rows396 checked396)

#print axioms checked396

theorem checked412 : rows412.all (Row.check expTable) = true := by decide +kernel

theorem length412 : rows412.length = 1 := by decide

def runs412 : List (Run expTable) := (List.finRange rows412.length).map (Run.ofGroup expTable rows412 checked412)

#print axioms checked412

theorem checked428 : rows428.all (Row.check expTable) = true := by decide +kernel

theorem length428 : rows428.length = 1 := by decide

def runs428 : List (Run expTable) := (List.finRange rows428.length).map (Run.ofGroup expTable rows428 checked428)

#print axioms checked428

theorem checked444 : rows444.all (Row.check expTable) = true := by decide +kernel

theorem length444 : rows444.length = 1 := by decide

def runs444 : List (Run expTable) := (List.finRange rows444.length).map (Run.ofGroup expTable rows444 checked444)

#print axioms checked444

theorem checked460 : rows460.all (Row.check expTable) = true := by decide +kernel

theorem length460 : rows460.length = 1 := by decide

def runs460 : List (Run expTable) := (List.finRange rows460.length).map (Run.ofGroup expTable rows460 checked460)

#print axioms checked460

theorem checked476 : rows476.all (Row.check expTable) = true := by decide +kernel

theorem length476 : rows476.length = 1 := by decide

def runs476 : List (Run expTable) := (List.finRange rows476.length).map (Run.ofGroup expTable rows476 checked476)

#print axioms checked476

theorem checked492 : rows492.all (Row.check expTable) = true := by decide +kernel

theorem length492 : rows492.length = 1 := by decide

def runs492 : List (Run expTable) := (List.finRange rows492.length).map (Run.ofGroup expTable rows492 checked492)

#print axioms checked492

theorem checked508 : rows508.all (Row.check expTable) = true := by decide +kernel

theorem length508 : rows508.length = 1 := by decide

def runs508 : List (Run expTable) := (List.finRange rows508.length).map (Run.ofGroup expTable rows508 checked508)

#print axioms checked508

theorem checked524 : rows524.all (Row.check expTable) = true := by decide +kernel

theorem length524 : rows524.length = 1 := by decide

def runs524 : List (Run expTable) := (List.finRange rows524.length).map (Run.ofGroup expTable rows524 checked524)

#print axioms checked524

theorem checked540 : rows540.all (Row.check expTable) = true := by decide +kernel

theorem length540 : rows540.length = 1 := by decide

def runs540 : List (Run expTable) := (List.finRange rows540.length).map (Run.ofGroup expTable rows540 checked540)

#print axioms checked540

theorem checked556 : rows556.all (Row.check expTable) = true := by decide +kernel

theorem length556 : rows556.length = 1 := by decide

def runs556 : List (Run expTable) := (List.finRange rows556.length).map (Run.ofGroup expTable rows556 checked556)

#print axioms checked556

theorem checked572 : rows572.all (Row.check expTable) = true := by decide +kernel

theorem length572 : rows572.length = 1 := by decide

def runs572 : List (Run expTable) := (List.finRange rows572.length).map (Run.ofGroup expTable rows572 checked572)

#print axioms checked572

theorem checked588 : rows588.all (Row.check expTable) = true := by decide +kernel

theorem length588 : rows588.length = 1 := by decide

def runs588 : List (Run expTable) := (List.finRange rows588.length).map (Run.ofGroup expTable rows588 checked588)

#print axioms checked588

theorem checked604 : rows604.all (Row.check expTable) = true := by decide +kernel

theorem length604 : rows604.length = 1 := by decide

def runs604 : List (Run expTable) := (List.finRange rows604.length).map (Run.ofGroup expTable rows604 checked604)

#print axioms checked604

theorem checked620 : rows620.all (Row.check expTable) = true := by decide +kernel

theorem length620 : rows620.length = 1 := by decide

def runs620 : List (Run expTable) := (List.finRange rows620.length).map (Run.ofGroup expTable rows620 checked620)

#print axioms checked620

theorem checked636 : rows636.all (Row.check expTable) = true := by decide +kernel

theorem length636 : rows636.length = 1 := by decide

def runs636 : List (Run expTable) := (List.finRange rows636.length).map (Run.ofGroup expTable rows636 checked636)

#print axioms checked636

theorem checked652 : rows652.all (Row.check expTable) = true := by decide +kernel

theorem length652 : rows652.length = 1 := by decide

def runs652 : List (Run expTable) := (List.finRange rows652.length).map (Run.ofGroup expTable rows652 checked652)

#print axioms checked652

theorem checked668 : rows668.all (Row.check expTable) = true := by decide +kernel

theorem length668 : rows668.length = 1 := by decide

def runs668 : List (Run expTable) := (List.finRange rows668.length).map (Run.ofGroup expTable rows668 checked668)

#print axioms checked668

end DiagonalRamsey.JointRemainingRoutes
