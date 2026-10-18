import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked15 : rows15.all (Row.check expTable) = true := by decide +kernel

theorem length15 : rows15.length = 32 := by decide

def runs15 : List (Run expTable) := (List.finRange rows15.length).map (Run.ofGroup expTable rows15 checked15)

#print axioms checked15

theorem checked31 : rows31.all (Row.check expTable) = true := by decide +kernel

theorem length31 : rows31.length = 32 := by decide

def runs31 : List (Run expTable) := (List.finRange rows31.length).map (Run.ofGroup expTable rows31 checked31)

#print axioms checked31

theorem checked47 : rows47.all (Row.check expTable) = true := by decide +kernel

theorem length47 : rows47.length = 32 := by decide

def runs47 : List (Run expTable) := (List.finRange rows47.length).map (Run.ofGroup expTable rows47 checked47)

#print axioms checked47

theorem checked63 : rows63.all (Row.check expTable) = true := by decide +kernel

theorem length63 : rows63.length = 32 := by decide

def runs63 : List (Run expTable) := (List.finRange rows63.length).map (Run.ofGroup expTable rows63 checked63)

#print axioms checked63

theorem checked79 : rows79.all (Row.check expTable) = true := by decide +kernel

theorem length79 : rows79.length = 32 := by decide

def runs79 : List (Run expTable) := (List.finRange rows79.length).map (Run.ofGroup expTable rows79 checked79)

#print axioms checked79

theorem checked95 : rows95.all (Row.check expTable) = true := by decide +kernel

theorem length95 : rows95.length = 32 := by decide

def runs95 : List (Run expTable) := (List.finRange rows95.length).map (Run.ofGroup expTable rows95 checked95)

#print axioms checked95

theorem checked111 : rows111.all (Row.check expTable) = true := by decide +kernel

theorem length111 : rows111.length = 32 := by decide

def runs111 : List (Run expTable) := (List.finRange rows111.length).map (Run.ofGroup expTable rows111 checked111)

#print axioms checked111

theorem checked127 : rows127.all (Row.check expTable) = true := by decide +kernel

theorem length127 : rows127.length = 32 := by decide

def runs127 : List (Run expTable) := (List.finRange rows127.length).map (Run.ofGroup expTable rows127 checked127)

#print axioms checked127

theorem checked143 : rows143.all (Row.check expTable) = true := by decide +kernel

theorem length143 : rows143.length = 32 := by decide

def runs143 : List (Run expTable) := (List.finRange rows143.length).map (Run.ofGroup expTable rows143 checked143)

#print axioms checked143

theorem checked159 : rows159.all (Row.check expTable) = true := by decide +kernel

theorem length159 : rows159.length = 9 := by decide

def runs159 : List (Run expTable) := (List.finRange rows159.length).map (Run.ofGroup expTable rows159 checked159)

#print axioms checked159

theorem checked175 : rows175.all (Row.check expTable) = true := by decide +kernel

theorem length175 : rows175.length = 5 := by decide

def runs175 : List (Run expTable) := (List.finRange rows175.length).map (Run.ofGroup expTable rows175 checked175)

#print axioms checked175

theorem checked191 : rows191.all (Row.check expTable) = true := by decide +kernel

theorem length191 : rows191.length = 3 := by decide

def runs191 : List (Run expTable) := (List.finRange rows191.length).map (Run.ofGroup expTable rows191 checked191)

#print axioms checked191

theorem checked207 : rows207.all (Row.check expTable) = true := by decide +kernel

theorem length207 : rows207.length = 2 := by decide

def runs207 : List (Run expTable) := (List.finRange rows207.length).map (Run.ofGroup expTable rows207 checked207)

#print axioms checked207

theorem checked223 : rows223.all (Row.check expTable) = true := by decide +kernel

theorem length223 : rows223.length = 1 := by decide

def runs223 : List (Run expTable) := (List.finRange rows223.length).map (Run.ofGroup expTable rows223 checked223)

#print axioms checked223

theorem checked239 : rows239.all (Row.check expTable) = true := by decide +kernel

theorem length239 : rows239.length = 1 := by decide

def runs239 : List (Run expTable) := (List.finRange rows239.length).map (Run.ofGroup expTable rows239 checked239)

#print axioms checked239

theorem checked255 : rows255.all (Row.check expTable) = true := by decide +kernel

theorem length255 : rows255.length = 1 := by decide

def runs255 : List (Run expTable) := (List.finRange rows255.length).map (Run.ofGroup expTable rows255 checked255)

#print axioms checked255

theorem checked271 : rows271.all (Row.check expTable) = true := by decide +kernel

theorem length271 : rows271.length = 1 := by decide

def runs271 : List (Run expTable) := (List.finRange rows271.length).map (Run.ofGroup expTable rows271 checked271)

#print axioms checked271

theorem checked287 : rows287.all (Row.check expTable) = true := by decide +kernel

theorem length287 : rows287.length = 1 := by decide

def runs287 : List (Run expTable) := (List.finRange rows287.length).map (Run.ofGroup expTable rows287 checked287)

#print axioms checked287

theorem checked303 : rows303.all (Row.check expTable) = true := by decide +kernel

theorem length303 : rows303.length = 1 := by decide

def runs303 : List (Run expTable) := (List.finRange rows303.length).map (Run.ofGroup expTable rows303 checked303)

#print axioms checked303

theorem checked319 : rows319.all (Row.check expTable) = true := by decide +kernel

theorem length319 : rows319.length = 1 := by decide

def runs319 : List (Run expTable) := (List.finRange rows319.length).map (Run.ofGroup expTable rows319 checked319)

#print axioms checked319

theorem checked335 : rows335.all (Row.check expTable) = true := by decide +kernel

theorem length335 : rows335.length = 1 := by decide

def runs335 : List (Run expTable) := (List.finRange rows335.length).map (Run.ofGroup expTable rows335 checked335)

#print axioms checked335

theorem checked351 : rows351.all (Row.check expTable) = true := by decide +kernel

theorem length351 : rows351.length = 1 := by decide

def runs351 : List (Run expTable) := (List.finRange rows351.length).map (Run.ofGroup expTable rows351 checked351)

#print axioms checked351

theorem checked367 : rows367.all (Row.check expTable) = true := by decide +kernel

theorem length367 : rows367.length = 1 := by decide

def runs367 : List (Run expTable) := (List.finRange rows367.length).map (Run.ofGroup expTable rows367 checked367)

#print axioms checked367

theorem checked383 : rows383.all (Row.check expTable) = true := by decide +kernel

theorem length383 : rows383.length = 1 := by decide

def runs383 : List (Run expTable) := (List.finRange rows383.length).map (Run.ofGroup expTable rows383 checked383)

#print axioms checked383

theorem checked399 : rows399.all (Row.check expTable) = true := by decide +kernel

theorem length399 : rows399.length = 1 := by decide

def runs399 : List (Run expTable) := (List.finRange rows399.length).map (Run.ofGroup expTable rows399 checked399)

#print axioms checked399

theorem checked415 : rows415.all (Row.check expTable) = true := by decide +kernel

theorem length415 : rows415.length = 1 := by decide

def runs415 : List (Run expTable) := (List.finRange rows415.length).map (Run.ofGroup expTable rows415 checked415)

#print axioms checked415

theorem checked431 : rows431.all (Row.check expTable) = true := by decide +kernel

theorem length431 : rows431.length = 1 := by decide

def runs431 : List (Run expTable) := (List.finRange rows431.length).map (Run.ofGroup expTable rows431 checked431)

#print axioms checked431

theorem checked447 : rows447.all (Row.check expTable) = true := by decide +kernel

theorem length447 : rows447.length = 1 := by decide

def runs447 : List (Run expTable) := (List.finRange rows447.length).map (Run.ofGroup expTable rows447 checked447)

#print axioms checked447

theorem checked463 : rows463.all (Row.check expTable) = true := by decide +kernel

theorem length463 : rows463.length = 1 := by decide

def runs463 : List (Run expTable) := (List.finRange rows463.length).map (Run.ofGroup expTable rows463 checked463)

#print axioms checked463

theorem checked479 : rows479.all (Row.check expTable) = true := by decide +kernel

theorem length479 : rows479.length = 1 := by decide

def runs479 : List (Run expTable) := (List.finRange rows479.length).map (Run.ofGroup expTable rows479 checked479)

#print axioms checked479

theorem checked495 : rows495.all (Row.check expTable) = true := by decide +kernel

theorem length495 : rows495.length = 1 := by decide

def runs495 : List (Run expTable) := (List.finRange rows495.length).map (Run.ofGroup expTable rows495 checked495)

#print axioms checked495

theorem checked511 : rows511.all (Row.check expTable) = true := by decide +kernel

theorem length511 : rows511.length = 1 := by decide

def runs511 : List (Run expTable) := (List.finRange rows511.length).map (Run.ofGroup expTable rows511 checked511)

#print axioms checked511

theorem checked527 : rows527.all (Row.check expTable) = true := by decide +kernel

theorem length527 : rows527.length = 1 := by decide

def runs527 : List (Run expTable) := (List.finRange rows527.length).map (Run.ofGroup expTable rows527 checked527)

#print axioms checked527

theorem checked543 : rows543.all (Row.check expTable) = true := by decide +kernel

theorem length543 : rows543.length = 1 := by decide

def runs543 : List (Run expTable) := (List.finRange rows543.length).map (Run.ofGroup expTable rows543 checked543)

#print axioms checked543

theorem checked559 : rows559.all (Row.check expTable) = true := by decide +kernel

theorem length559 : rows559.length = 1 := by decide

def runs559 : List (Run expTable) := (List.finRange rows559.length).map (Run.ofGroup expTable rows559 checked559)

#print axioms checked559

theorem checked575 : rows575.all (Row.check expTable) = true := by decide +kernel

theorem length575 : rows575.length = 1 := by decide

def runs575 : List (Run expTable) := (List.finRange rows575.length).map (Run.ofGroup expTable rows575 checked575)

#print axioms checked575

theorem checked591 : rows591.all (Row.check expTable) = true := by decide +kernel

theorem length591 : rows591.length = 1 := by decide

def runs591 : List (Run expTable) := (List.finRange rows591.length).map (Run.ofGroup expTable rows591 checked591)

#print axioms checked591

theorem checked607 : rows607.all (Row.check expTable) = true := by decide +kernel

theorem length607 : rows607.length = 1 := by decide

def runs607 : List (Run expTable) := (List.finRange rows607.length).map (Run.ofGroup expTable rows607 checked607)

#print axioms checked607

theorem checked623 : rows623.all (Row.check expTable) = true := by decide +kernel

theorem length623 : rows623.length = 1 := by decide

def runs623 : List (Run expTable) := (List.finRange rows623.length).map (Run.ofGroup expTable rows623 checked623)

#print axioms checked623

theorem checked639 : rows639.all (Row.check expTable) = true := by decide +kernel

theorem length639 : rows639.length = 1 := by decide

def runs639 : List (Run expTable) := (List.finRange rows639.length).map (Run.ofGroup expTable rows639 checked639)

#print axioms checked639

theorem checked655 : rows655.all (Row.check expTable) = true := by decide +kernel

theorem length655 : rows655.length = 1 := by decide

def runs655 : List (Run expTable) := (List.finRange rows655.length).map (Run.ofGroup expTable rows655 checked655)

#print axioms checked655

theorem checked671 : rows671.all (Row.check expTable) = true := by decide +kernel

theorem length671 : rows671.length = 1 := by decide

def runs671 : List (Run expTable) := (List.finRange rows671.length).map (Run.ofGroup expTable rows671 checked671)

#print axioms checked671

end DiagonalRamsey.JointRemainingRoutes
