import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked9 : rows9.all (Row.check expTable) = true := by decide +kernel

theorem length9 : rows9.length = 32 := by decide

def runs9 : List (Run expTable) := (List.finRange rows9.length).map (Run.ofGroup expTable rows9 checked9)

#print axioms checked9

theorem checked25 : rows25.all (Row.check expTable) = true := by decide +kernel

theorem length25 : rows25.length = 32 := by decide

def runs25 : List (Run expTable) := (List.finRange rows25.length).map (Run.ofGroup expTable rows25 checked25)

#print axioms checked25

theorem checked41 : rows41.all (Row.check expTable) = true := by decide +kernel

theorem length41 : rows41.length = 32 := by decide

def runs41 : List (Run expTable) := (List.finRange rows41.length).map (Run.ofGroup expTable rows41 checked41)

#print axioms checked41

theorem checked57 : rows57.all (Row.check expTable) = true := by decide +kernel

theorem length57 : rows57.length = 32 := by decide

def runs57 : List (Run expTable) := (List.finRange rows57.length).map (Run.ofGroup expTable rows57 checked57)

#print axioms checked57

theorem checked73 : rows73.all (Row.check expTable) = true := by decide +kernel

theorem length73 : rows73.length = 32 := by decide

def runs73 : List (Run expTable) := (List.finRange rows73.length).map (Run.ofGroup expTable rows73 checked73)

#print axioms checked73

theorem checked89 : rows89.all (Row.check expTable) = true := by decide +kernel

theorem length89 : rows89.length = 32 := by decide

def runs89 : List (Run expTable) := (List.finRange rows89.length).map (Run.ofGroup expTable rows89 checked89)

#print axioms checked89

theorem checked105 : rows105.all (Row.check expTable) = true := by decide +kernel

theorem length105 : rows105.length = 32 := by decide

def runs105 : List (Run expTable) := (List.finRange rows105.length).map (Run.ofGroup expTable rows105 checked105)

#print axioms checked105

theorem checked121 : rows121.all (Row.check expTable) = true := by decide +kernel

theorem length121 : rows121.length = 32 := by decide

def runs121 : List (Run expTable) := (List.finRange rows121.length).map (Run.ofGroup expTable rows121 checked121)

#print axioms checked121

theorem checked137 : rows137.all (Row.check expTable) = true := by decide +kernel

theorem length137 : rows137.length = 32 := by decide

def runs137 : List (Run expTable) := (List.finRange rows137.length).map (Run.ofGroup expTable rows137 checked137)

#print axioms checked137

theorem checked153 : rows153.all (Row.check expTable) = true := by decide +kernel

theorem length153 : rows153.length = 13 := by decide

def runs153 : List (Run expTable) := (List.finRange rows153.length).map (Run.ofGroup expTable rows153 checked153)

#print axioms checked153

theorem checked169 : rows169.all (Row.check expTable) = true := by decide +kernel

theorem length169 : rows169.length = 6 := by decide

def runs169 : List (Run expTable) := (List.finRange rows169.length).map (Run.ofGroup expTable rows169 checked169)

#print axioms checked169

theorem checked185 : rows185.all (Row.check expTable) = true := by decide +kernel

theorem length185 : rows185.length = 4 := by decide

def runs185 : List (Run expTable) := (List.finRange rows185.length).map (Run.ofGroup expTable rows185 checked185)

#print axioms checked185

theorem checked201 : rows201.all (Row.check expTable) = true := by decide +kernel

theorem length201 : rows201.length = 3 := by decide

def runs201 : List (Run expTable) := (List.finRange rows201.length).map (Run.ofGroup expTable rows201 checked201)

#print axioms checked201

theorem checked217 : rows217.all (Row.check expTable) = true := by decide +kernel

theorem length217 : rows217.length = 2 := by decide

def runs217 : List (Run expTable) := (List.finRange rows217.length).map (Run.ofGroup expTable rows217 checked217)

#print axioms checked217

theorem checked233 : rows233.all (Row.check expTable) = true := by decide +kernel

theorem length233 : rows233.length = 1 := by decide

def runs233 : List (Run expTable) := (List.finRange rows233.length).map (Run.ofGroup expTable rows233 checked233)

#print axioms checked233

theorem checked249 : rows249.all (Row.check expTable) = true := by decide +kernel

theorem length249 : rows249.length = 1 := by decide

def runs249 : List (Run expTable) := (List.finRange rows249.length).map (Run.ofGroup expTable rows249 checked249)

#print axioms checked249

theorem checked265 : rows265.all (Row.check expTable) = true := by decide +kernel

theorem length265 : rows265.length = 1 := by decide

def runs265 : List (Run expTable) := (List.finRange rows265.length).map (Run.ofGroup expTable rows265 checked265)

#print axioms checked265

theorem checked281 : rows281.all (Row.check expTable) = true := by decide +kernel

theorem length281 : rows281.length = 1 := by decide

def runs281 : List (Run expTable) := (List.finRange rows281.length).map (Run.ofGroup expTable rows281 checked281)

#print axioms checked281

theorem checked297 : rows297.all (Row.check expTable) = true := by decide +kernel

theorem length297 : rows297.length = 1 := by decide

def runs297 : List (Run expTable) := (List.finRange rows297.length).map (Run.ofGroup expTable rows297 checked297)

#print axioms checked297

theorem checked313 : rows313.all (Row.check expTable) = true := by decide +kernel

theorem length313 : rows313.length = 1 := by decide

def runs313 : List (Run expTable) := (List.finRange rows313.length).map (Run.ofGroup expTable rows313 checked313)

#print axioms checked313

theorem checked329 : rows329.all (Row.check expTable) = true := by decide +kernel

theorem length329 : rows329.length = 1 := by decide

def runs329 : List (Run expTable) := (List.finRange rows329.length).map (Run.ofGroup expTable rows329 checked329)

#print axioms checked329

theorem checked345 : rows345.all (Row.check expTable) = true := by decide +kernel

theorem length345 : rows345.length = 1 := by decide

def runs345 : List (Run expTable) := (List.finRange rows345.length).map (Run.ofGroup expTable rows345 checked345)

#print axioms checked345

theorem checked361 : rows361.all (Row.check expTable) = true := by decide +kernel

theorem length361 : rows361.length = 1 := by decide

def runs361 : List (Run expTable) := (List.finRange rows361.length).map (Run.ofGroup expTable rows361 checked361)

#print axioms checked361

theorem checked377 : rows377.all (Row.check expTable) = true := by decide +kernel

theorem length377 : rows377.length = 1 := by decide

def runs377 : List (Run expTable) := (List.finRange rows377.length).map (Run.ofGroup expTable rows377 checked377)

#print axioms checked377

theorem checked393 : rows393.all (Row.check expTable) = true := by decide +kernel

theorem length393 : rows393.length = 1 := by decide

def runs393 : List (Run expTable) := (List.finRange rows393.length).map (Run.ofGroup expTable rows393 checked393)

#print axioms checked393

theorem checked409 : rows409.all (Row.check expTable) = true := by decide +kernel

theorem length409 : rows409.length = 1 := by decide

def runs409 : List (Run expTable) := (List.finRange rows409.length).map (Run.ofGroup expTable rows409 checked409)

#print axioms checked409

theorem checked425 : rows425.all (Row.check expTable) = true := by decide +kernel

theorem length425 : rows425.length = 1 := by decide

def runs425 : List (Run expTable) := (List.finRange rows425.length).map (Run.ofGroup expTable rows425 checked425)

#print axioms checked425

theorem checked441 : rows441.all (Row.check expTable) = true := by decide +kernel

theorem length441 : rows441.length = 1 := by decide

def runs441 : List (Run expTable) := (List.finRange rows441.length).map (Run.ofGroup expTable rows441 checked441)

#print axioms checked441

theorem checked457 : rows457.all (Row.check expTable) = true := by decide +kernel

theorem length457 : rows457.length = 1 := by decide

def runs457 : List (Run expTable) := (List.finRange rows457.length).map (Run.ofGroup expTable rows457 checked457)

#print axioms checked457

theorem checked473 : rows473.all (Row.check expTable) = true := by decide +kernel

theorem length473 : rows473.length = 1 := by decide

def runs473 : List (Run expTable) := (List.finRange rows473.length).map (Run.ofGroup expTable rows473 checked473)

#print axioms checked473

theorem checked489 : rows489.all (Row.check expTable) = true := by decide +kernel

theorem length489 : rows489.length = 1 := by decide

def runs489 : List (Run expTable) := (List.finRange rows489.length).map (Run.ofGroup expTable rows489 checked489)

#print axioms checked489

theorem checked505 : rows505.all (Row.check expTable) = true := by decide +kernel

theorem length505 : rows505.length = 1 := by decide

def runs505 : List (Run expTable) := (List.finRange rows505.length).map (Run.ofGroup expTable rows505 checked505)

#print axioms checked505

theorem checked521 : rows521.all (Row.check expTable) = true := by decide +kernel

theorem length521 : rows521.length = 1 := by decide

def runs521 : List (Run expTable) := (List.finRange rows521.length).map (Run.ofGroup expTable rows521 checked521)

#print axioms checked521

theorem checked537 : rows537.all (Row.check expTable) = true := by decide +kernel

theorem length537 : rows537.length = 1 := by decide

def runs537 : List (Run expTable) := (List.finRange rows537.length).map (Run.ofGroup expTable rows537 checked537)

#print axioms checked537

theorem checked553 : rows553.all (Row.check expTable) = true := by decide +kernel

theorem length553 : rows553.length = 1 := by decide

def runs553 : List (Run expTable) := (List.finRange rows553.length).map (Run.ofGroup expTable rows553 checked553)

#print axioms checked553

theorem checked569 : rows569.all (Row.check expTable) = true := by decide +kernel

theorem length569 : rows569.length = 1 := by decide

def runs569 : List (Run expTable) := (List.finRange rows569.length).map (Run.ofGroup expTable rows569 checked569)

#print axioms checked569

theorem checked585 : rows585.all (Row.check expTable) = true := by decide +kernel

theorem length585 : rows585.length = 1 := by decide

def runs585 : List (Run expTable) := (List.finRange rows585.length).map (Run.ofGroup expTable rows585 checked585)

#print axioms checked585

theorem checked601 : rows601.all (Row.check expTable) = true := by decide +kernel

theorem length601 : rows601.length = 1 := by decide

def runs601 : List (Run expTable) := (List.finRange rows601.length).map (Run.ofGroup expTable rows601 checked601)

#print axioms checked601

theorem checked617 : rows617.all (Row.check expTable) = true := by decide +kernel

theorem length617 : rows617.length = 1 := by decide

def runs617 : List (Run expTable) := (List.finRange rows617.length).map (Run.ofGroup expTable rows617 checked617)

#print axioms checked617

theorem checked633 : rows633.all (Row.check expTable) = true := by decide +kernel

theorem length633 : rows633.length = 1 := by decide

def runs633 : List (Run expTable) := (List.finRange rows633.length).map (Run.ofGroup expTable rows633 checked633)

#print axioms checked633

theorem checked649 : rows649.all (Row.check expTable) = true := by decide +kernel

theorem length649 : rows649.length = 1 := by decide

def runs649 : List (Run expTable) := (List.finRange rows649.length).map (Run.ofGroup expTable rows649 checked649)

#print axioms checked649

theorem checked665 : rows665.all (Row.check expTable) = true := by decide +kernel

theorem length665 : rows665.length = 1 := by decide

def runs665 : List (Run expTable) := (List.finRange rows665.length).map (Run.ofGroup expTable rows665 checked665)

#print axioms checked665

end DiagonalRamsey.JointRemainingRoutes
