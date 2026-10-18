import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked2 : rows2.all (Row.check expTable) = true := by decide +kernel

theorem length2 : rows2.length = 32 := by decide

def runs2 : List (Run expTable) := (List.finRange rows2.length).map (Run.ofGroup expTable rows2 checked2)

#print axioms checked2

theorem checked18 : rows18.all (Row.check expTable) = true := by decide +kernel

theorem length18 : rows18.length = 32 := by decide

def runs18 : List (Run expTable) := (List.finRange rows18.length).map (Run.ofGroup expTable rows18 checked18)

#print axioms checked18

theorem checked34 : rows34.all (Row.check expTable) = true := by decide +kernel

theorem length34 : rows34.length = 32 := by decide

def runs34 : List (Run expTable) := (List.finRange rows34.length).map (Run.ofGroup expTable rows34 checked34)

#print axioms checked34

theorem checked50 : rows50.all (Row.check expTable) = true := by decide +kernel

theorem length50 : rows50.length = 32 := by decide

def runs50 : List (Run expTable) := (List.finRange rows50.length).map (Run.ofGroup expTable rows50 checked50)

#print axioms checked50

theorem checked66 : rows66.all (Row.check expTable) = true := by decide +kernel

theorem length66 : rows66.length = 32 := by decide

def runs66 : List (Run expTable) := (List.finRange rows66.length).map (Run.ofGroup expTable rows66 checked66)

#print axioms checked66

theorem checked82 : rows82.all (Row.check expTable) = true := by decide +kernel

theorem length82 : rows82.length = 32 := by decide

def runs82 : List (Run expTable) := (List.finRange rows82.length).map (Run.ofGroup expTable rows82 checked82)

#print axioms checked82

theorem checked98 : rows98.all (Row.check expTable) = true := by decide +kernel

theorem length98 : rows98.length = 32 := by decide

def runs98 : List (Run expTable) := (List.finRange rows98.length).map (Run.ofGroup expTable rows98 checked98)

#print axioms checked98

theorem checked114 : rows114.all (Row.check expTable) = true := by decide +kernel

theorem length114 : rows114.length = 32 := by decide

def runs114 : List (Run expTable) := (List.finRange rows114.length).map (Run.ofGroup expTable rows114 checked114)

#print axioms checked114

theorem checked130 : rows130.all (Row.check expTable) = true := by decide +kernel

theorem length130 : rows130.length = 32 := by decide

def runs130 : List (Run expTable) := (List.finRange rows130.length).map (Run.ofGroup expTable rows130 checked130)

#print axioms checked130

theorem checked146 : rows146.all (Row.check expTable) = true := by decide +kernel

theorem length146 : rows146.length = 31 := by decide

def runs146 : List (Run expTable) := (List.finRange rows146.length).map (Run.ofGroup expTable rows146 checked146)

#print axioms checked146

theorem checked162 : rows162.all (Row.check expTable) = true := by decide +kernel

theorem length162 : rows162.length = 8 := by decide

def runs162 : List (Run expTable) := (List.finRange rows162.length).map (Run.ofGroup expTable rows162 checked162)

#print axioms checked162

theorem checked178 : rows178.all (Row.check expTable) = true := by decide +kernel

theorem length178 : rows178.length = 4 := by decide

def runs178 : List (Run expTable) := (List.finRange rows178.length).map (Run.ofGroup expTable rows178 checked178)

#print axioms checked178

theorem checked194 : rows194.all (Row.check expTable) = true := by decide +kernel

theorem length194 : rows194.length = 3 := by decide

def runs194 : List (Run expTable) := (List.finRange rows194.length).map (Run.ofGroup expTable rows194 checked194)

#print axioms checked194

theorem checked210 : rows210.all (Row.check expTable) = true := by decide +kernel

theorem length210 : rows210.length = 2 := by decide

def runs210 : List (Run expTable) := (List.finRange rows210.length).map (Run.ofGroup expTable rows210 checked210)

#print axioms checked210

theorem checked226 : rows226.all (Row.check expTable) = true := by decide +kernel

theorem length226 : rows226.length = 1 := by decide

def runs226 : List (Run expTable) := (List.finRange rows226.length).map (Run.ofGroup expTable rows226 checked226)

#print axioms checked226

theorem checked242 : rows242.all (Row.check expTable) = true := by decide +kernel

theorem length242 : rows242.length = 1 := by decide

def runs242 : List (Run expTable) := (List.finRange rows242.length).map (Run.ofGroup expTable rows242 checked242)

#print axioms checked242

theorem checked258 : rows258.all (Row.check expTable) = true := by decide +kernel

theorem length258 : rows258.length = 1 := by decide

def runs258 : List (Run expTable) := (List.finRange rows258.length).map (Run.ofGroup expTable rows258 checked258)

#print axioms checked258

theorem checked274 : rows274.all (Row.check expTable) = true := by decide +kernel

theorem length274 : rows274.length = 1 := by decide

def runs274 : List (Run expTable) := (List.finRange rows274.length).map (Run.ofGroup expTable rows274 checked274)

#print axioms checked274

theorem checked290 : rows290.all (Row.check expTable) = true := by decide +kernel

theorem length290 : rows290.length = 1 := by decide

def runs290 : List (Run expTable) := (List.finRange rows290.length).map (Run.ofGroup expTable rows290 checked290)

#print axioms checked290

theorem checked306 : rows306.all (Row.check expTable) = true := by decide +kernel

theorem length306 : rows306.length = 1 := by decide

def runs306 : List (Run expTable) := (List.finRange rows306.length).map (Run.ofGroup expTable rows306 checked306)

#print axioms checked306

theorem checked322 : rows322.all (Row.check expTable) = true := by decide +kernel

theorem length322 : rows322.length = 1 := by decide

def runs322 : List (Run expTable) := (List.finRange rows322.length).map (Run.ofGroup expTable rows322 checked322)

#print axioms checked322

theorem checked338 : rows338.all (Row.check expTable) = true := by decide +kernel

theorem length338 : rows338.length = 1 := by decide

def runs338 : List (Run expTable) := (List.finRange rows338.length).map (Run.ofGroup expTable rows338 checked338)

#print axioms checked338

theorem checked354 : rows354.all (Row.check expTable) = true := by decide +kernel

theorem length354 : rows354.length = 1 := by decide

def runs354 : List (Run expTable) := (List.finRange rows354.length).map (Run.ofGroup expTable rows354 checked354)

#print axioms checked354

theorem checked370 : rows370.all (Row.check expTable) = true := by decide +kernel

theorem length370 : rows370.length = 1 := by decide

def runs370 : List (Run expTable) := (List.finRange rows370.length).map (Run.ofGroup expTable rows370 checked370)

#print axioms checked370

theorem checked386 : rows386.all (Row.check expTable) = true := by decide +kernel

theorem length386 : rows386.length = 1 := by decide

def runs386 : List (Run expTable) := (List.finRange rows386.length).map (Run.ofGroup expTable rows386 checked386)

#print axioms checked386

theorem checked402 : rows402.all (Row.check expTable) = true := by decide +kernel

theorem length402 : rows402.length = 1 := by decide

def runs402 : List (Run expTable) := (List.finRange rows402.length).map (Run.ofGroup expTable rows402 checked402)

#print axioms checked402

theorem checked418 : rows418.all (Row.check expTable) = true := by decide +kernel

theorem length418 : rows418.length = 1 := by decide

def runs418 : List (Run expTable) := (List.finRange rows418.length).map (Run.ofGroup expTable rows418 checked418)

#print axioms checked418

theorem checked434 : rows434.all (Row.check expTable) = true := by decide +kernel

theorem length434 : rows434.length = 1 := by decide

def runs434 : List (Run expTable) := (List.finRange rows434.length).map (Run.ofGroup expTable rows434 checked434)

#print axioms checked434

theorem checked450 : rows450.all (Row.check expTable) = true := by decide +kernel

theorem length450 : rows450.length = 1 := by decide

def runs450 : List (Run expTable) := (List.finRange rows450.length).map (Run.ofGroup expTable rows450 checked450)

#print axioms checked450

theorem checked466 : rows466.all (Row.check expTable) = true := by decide +kernel

theorem length466 : rows466.length = 1 := by decide

def runs466 : List (Run expTable) := (List.finRange rows466.length).map (Run.ofGroup expTable rows466 checked466)

#print axioms checked466

theorem checked482 : rows482.all (Row.check expTable) = true := by decide +kernel

theorem length482 : rows482.length = 1 := by decide

def runs482 : List (Run expTable) := (List.finRange rows482.length).map (Run.ofGroup expTable rows482 checked482)

#print axioms checked482

theorem checked498 : rows498.all (Row.check expTable) = true := by decide +kernel

theorem length498 : rows498.length = 1 := by decide

def runs498 : List (Run expTable) := (List.finRange rows498.length).map (Run.ofGroup expTable rows498 checked498)

#print axioms checked498

theorem checked514 : rows514.all (Row.check expTable) = true := by decide +kernel

theorem length514 : rows514.length = 1 := by decide

def runs514 : List (Run expTable) := (List.finRange rows514.length).map (Run.ofGroup expTable rows514 checked514)

#print axioms checked514

theorem checked530 : rows530.all (Row.check expTable) = true := by decide +kernel

theorem length530 : rows530.length = 1 := by decide

def runs530 : List (Run expTable) := (List.finRange rows530.length).map (Run.ofGroup expTable rows530 checked530)

#print axioms checked530

theorem checked546 : rows546.all (Row.check expTable) = true := by decide +kernel

theorem length546 : rows546.length = 1 := by decide

def runs546 : List (Run expTable) := (List.finRange rows546.length).map (Run.ofGroup expTable rows546 checked546)

#print axioms checked546

theorem checked562 : rows562.all (Row.check expTable) = true := by decide +kernel

theorem length562 : rows562.length = 1 := by decide

def runs562 : List (Run expTable) := (List.finRange rows562.length).map (Run.ofGroup expTable rows562 checked562)

#print axioms checked562

theorem checked578 : rows578.all (Row.check expTable) = true := by decide +kernel

theorem length578 : rows578.length = 1 := by decide

def runs578 : List (Run expTable) := (List.finRange rows578.length).map (Run.ofGroup expTable rows578 checked578)

#print axioms checked578

theorem checked594 : rows594.all (Row.check expTable) = true := by decide +kernel

theorem length594 : rows594.length = 1 := by decide

def runs594 : List (Run expTable) := (List.finRange rows594.length).map (Run.ofGroup expTable rows594 checked594)

#print axioms checked594

theorem checked610 : rows610.all (Row.check expTable) = true := by decide +kernel

theorem length610 : rows610.length = 1 := by decide

def runs610 : List (Run expTable) := (List.finRange rows610.length).map (Run.ofGroup expTable rows610 checked610)

#print axioms checked610

theorem checked626 : rows626.all (Row.check expTable) = true := by decide +kernel

theorem length626 : rows626.length = 1 := by decide

def runs626 : List (Run expTable) := (List.finRange rows626.length).map (Run.ofGroup expTable rows626 checked626)

#print axioms checked626

theorem checked642 : rows642.all (Row.check expTable) = true := by decide +kernel

theorem length642 : rows642.length = 1 := by decide

def runs642 : List (Run expTable) := (List.finRange rows642.length).map (Run.ofGroup expTable rows642 checked642)

#print axioms checked642

theorem checked658 : rows658.all (Row.check expTable) = true := by decide +kernel

theorem length658 : rows658.length = 1 := by decide

def runs658 : List (Run expTable) := (List.finRange rows658.length).map (Run.ofGroup expTable rows658 checked658)

#print axioms checked658

theorem checked674 : rows674.all (Row.check expTable) = true := by decide +kernel

theorem length674 : rows674.length = 1 := by decide

def runs674 : List (Run expTable) := (List.finRange rows674.length).map (Run.ofGroup expTable rows674 checked674)

#print axioms checked674

end DiagonalRamsey.JointRemainingRoutes
