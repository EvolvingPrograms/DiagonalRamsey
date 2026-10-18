import S7_ParameterChoice.Source.Joint.Routes.Remaining.Rows

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel checks; parallelism comes from independent modules.
set_option Elab.async false

namespace DiagonalRamsey.JointRemainingRoutes
open DiagRamsey.V5 JointGeometry JointFamily JointCachedRoutes
open JointInheritedRoutes

theorem checked13 : rows13.all (Row.check expTable) = true := by decide +kernel

theorem length13 : rows13.length = 32 := by decide

def runs13 : List (Run expTable) := (List.finRange rows13.length).map (Run.ofGroup expTable rows13 checked13)

#print axioms checked13

theorem checked29 : rows29.all (Row.check expTable) = true := by decide +kernel

theorem length29 : rows29.length = 32 := by decide

def runs29 : List (Run expTable) := (List.finRange rows29.length).map (Run.ofGroup expTable rows29 checked29)

#print axioms checked29

theorem checked45 : rows45.all (Row.check expTable) = true := by decide +kernel

theorem length45 : rows45.length = 32 := by decide

def runs45 : List (Run expTable) := (List.finRange rows45.length).map (Run.ofGroup expTable rows45 checked45)

#print axioms checked45

theorem checked61 : rows61.all (Row.check expTable) = true := by decide +kernel

theorem length61 : rows61.length = 32 := by decide

def runs61 : List (Run expTable) := (List.finRange rows61.length).map (Run.ofGroup expTable rows61 checked61)

#print axioms checked61

theorem checked77 : rows77.all (Row.check expTable) = true := by decide +kernel

theorem length77 : rows77.length = 32 := by decide

def runs77 : List (Run expTable) := (List.finRange rows77.length).map (Run.ofGroup expTable rows77 checked77)

#print axioms checked77

theorem checked93 : rows93.all (Row.check expTable) = true := by decide +kernel

theorem length93 : rows93.length = 32 := by decide

def runs93 : List (Run expTable) := (List.finRange rows93.length).map (Run.ofGroup expTable rows93 checked93)

#print axioms checked93

theorem checked109 : rows109.all (Row.check expTable) = true := by decide +kernel

theorem length109 : rows109.length = 32 := by decide

def runs109 : List (Run expTable) := (List.finRange rows109.length).map (Run.ofGroup expTable rows109 checked109)

#print axioms checked109

theorem checked125 : rows125.all (Row.check expTable) = true := by decide +kernel

theorem length125 : rows125.length = 32 := by decide

def runs125 : List (Run expTable) := (List.finRange rows125.length).map (Run.ofGroup expTable rows125 checked125)

#print axioms checked125

theorem checked141 : rows141.all (Row.check expTable) = true := by decide +kernel

theorem length141 : rows141.length = 32 := by decide

def runs141 : List (Run expTable) := (List.finRange rows141.length).map (Run.ofGroup expTable rows141 checked141)

#print axioms checked141

theorem checked157 : rows157.all (Row.check expTable) = true := by decide +kernel

theorem length157 : rows157.length = 11 := by decide

def runs157 : List (Run expTable) := (List.finRange rows157.length).map (Run.ofGroup expTable rows157 checked157)

#print axioms checked157

theorem checked173 : rows173.all (Row.check expTable) = true := by decide +kernel

theorem length173 : rows173.length = 5 := by decide

def runs173 : List (Run expTable) := (List.finRange rows173.length).map (Run.ofGroup expTable rows173 checked173)

#print axioms checked173

theorem checked189 : rows189.all (Row.check expTable) = true := by decide +kernel

theorem length189 : rows189.length = 3 := by decide

def runs189 : List (Run expTable) := (List.finRange rows189.length).map (Run.ofGroup expTable rows189 checked189)

#print axioms checked189

theorem checked205 : rows205.all (Row.check expTable) = true := by decide +kernel

theorem length205 : rows205.length = 3 := by decide

def runs205 : List (Run expTable) := (List.finRange rows205.length).map (Run.ofGroup expTable rows205 checked205)

#print axioms checked205

theorem checked221 : rows221.all (Row.check expTable) = true := by decide +kernel

theorem length221 : rows221.length = 1 := by decide

def runs221 : List (Run expTable) := (List.finRange rows221.length).map (Run.ofGroup expTable rows221 checked221)

#print axioms checked221

theorem checked237 : rows237.all (Row.check expTable) = true := by decide +kernel

theorem length237 : rows237.length = 1 := by decide

def runs237 : List (Run expTable) := (List.finRange rows237.length).map (Run.ofGroup expTable rows237 checked237)

#print axioms checked237

theorem checked253 : rows253.all (Row.check expTable) = true := by decide +kernel

theorem length253 : rows253.length = 1 := by decide

def runs253 : List (Run expTable) := (List.finRange rows253.length).map (Run.ofGroup expTable rows253 checked253)

#print axioms checked253

theorem checked269 : rows269.all (Row.check expTable) = true := by decide +kernel

theorem length269 : rows269.length = 1 := by decide

def runs269 : List (Run expTable) := (List.finRange rows269.length).map (Run.ofGroup expTable rows269 checked269)

#print axioms checked269

theorem checked285 : rows285.all (Row.check expTable) = true := by decide +kernel

theorem length285 : rows285.length = 1 := by decide

def runs285 : List (Run expTable) := (List.finRange rows285.length).map (Run.ofGroup expTable rows285 checked285)

#print axioms checked285

theorem checked301 : rows301.all (Row.check expTable) = true := by decide +kernel

theorem length301 : rows301.length = 1 := by decide

def runs301 : List (Run expTable) := (List.finRange rows301.length).map (Run.ofGroup expTable rows301 checked301)

#print axioms checked301

theorem checked317 : rows317.all (Row.check expTable) = true := by decide +kernel

theorem length317 : rows317.length = 1 := by decide

def runs317 : List (Run expTable) := (List.finRange rows317.length).map (Run.ofGroup expTable rows317 checked317)

#print axioms checked317

theorem checked333 : rows333.all (Row.check expTable) = true := by decide +kernel

theorem length333 : rows333.length = 1 := by decide

def runs333 : List (Run expTable) := (List.finRange rows333.length).map (Run.ofGroup expTable rows333 checked333)

#print axioms checked333

theorem checked349 : rows349.all (Row.check expTable) = true := by decide +kernel

theorem length349 : rows349.length = 1 := by decide

def runs349 : List (Run expTable) := (List.finRange rows349.length).map (Run.ofGroup expTable rows349 checked349)

#print axioms checked349

theorem checked365 : rows365.all (Row.check expTable) = true := by decide +kernel

theorem length365 : rows365.length = 1 := by decide

def runs365 : List (Run expTable) := (List.finRange rows365.length).map (Run.ofGroup expTable rows365 checked365)

#print axioms checked365

theorem checked381 : rows381.all (Row.check expTable) = true := by decide +kernel

theorem length381 : rows381.length = 1 := by decide

def runs381 : List (Run expTable) := (List.finRange rows381.length).map (Run.ofGroup expTable rows381 checked381)

#print axioms checked381

theorem checked397 : rows397.all (Row.check expTable) = true := by decide +kernel

theorem length397 : rows397.length = 1 := by decide

def runs397 : List (Run expTable) := (List.finRange rows397.length).map (Run.ofGroup expTable rows397 checked397)

#print axioms checked397

theorem checked413 : rows413.all (Row.check expTable) = true := by decide +kernel

theorem length413 : rows413.length = 1 := by decide

def runs413 : List (Run expTable) := (List.finRange rows413.length).map (Run.ofGroup expTable rows413 checked413)

#print axioms checked413

theorem checked429 : rows429.all (Row.check expTable) = true := by decide +kernel

theorem length429 : rows429.length = 1 := by decide

def runs429 : List (Run expTable) := (List.finRange rows429.length).map (Run.ofGroup expTable rows429 checked429)

#print axioms checked429

theorem checked445 : rows445.all (Row.check expTable) = true := by decide +kernel

theorem length445 : rows445.length = 1 := by decide

def runs445 : List (Run expTable) := (List.finRange rows445.length).map (Run.ofGroup expTable rows445 checked445)

#print axioms checked445

theorem checked461 : rows461.all (Row.check expTable) = true := by decide +kernel

theorem length461 : rows461.length = 1 := by decide

def runs461 : List (Run expTable) := (List.finRange rows461.length).map (Run.ofGroup expTable rows461 checked461)

#print axioms checked461

theorem checked477 : rows477.all (Row.check expTable) = true := by decide +kernel

theorem length477 : rows477.length = 1 := by decide

def runs477 : List (Run expTable) := (List.finRange rows477.length).map (Run.ofGroup expTable rows477 checked477)

#print axioms checked477

theorem checked493 : rows493.all (Row.check expTable) = true := by decide +kernel

theorem length493 : rows493.length = 1 := by decide

def runs493 : List (Run expTable) := (List.finRange rows493.length).map (Run.ofGroup expTable rows493 checked493)

#print axioms checked493

theorem checked509 : rows509.all (Row.check expTable) = true := by decide +kernel

theorem length509 : rows509.length = 1 := by decide

def runs509 : List (Run expTable) := (List.finRange rows509.length).map (Run.ofGroup expTable rows509 checked509)

#print axioms checked509

theorem checked525 : rows525.all (Row.check expTable) = true := by decide +kernel

theorem length525 : rows525.length = 1 := by decide

def runs525 : List (Run expTable) := (List.finRange rows525.length).map (Run.ofGroup expTable rows525 checked525)

#print axioms checked525

theorem checked541 : rows541.all (Row.check expTable) = true := by decide +kernel

theorem length541 : rows541.length = 1 := by decide

def runs541 : List (Run expTable) := (List.finRange rows541.length).map (Run.ofGroup expTable rows541 checked541)

#print axioms checked541

theorem checked557 : rows557.all (Row.check expTable) = true := by decide +kernel

theorem length557 : rows557.length = 1 := by decide

def runs557 : List (Run expTable) := (List.finRange rows557.length).map (Run.ofGroup expTable rows557 checked557)

#print axioms checked557

theorem checked573 : rows573.all (Row.check expTable) = true := by decide +kernel

theorem length573 : rows573.length = 1 := by decide

def runs573 : List (Run expTable) := (List.finRange rows573.length).map (Run.ofGroup expTable rows573 checked573)

#print axioms checked573

theorem checked589 : rows589.all (Row.check expTable) = true := by decide +kernel

theorem length589 : rows589.length = 1 := by decide

def runs589 : List (Run expTable) := (List.finRange rows589.length).map (Run.ofGroup expTable rows589 checked589)

#print axioms checked589

theorem checked605 : rows605.all (Row.check expTable) = true := by decide +kernel

theorem length605 : rows605.length = 1 := by decide

def runs605 : List (Run expTable) := (List.finRange rows605.length).map (Run.ofGroup expTable rows605 checked605)

#print axioms checked605

theorem checked621 : rows621.all (Row.check expTable) = true := by decide +kernel

theorem length621 : rows621.length = 1 := by decide

def runs621 : List (Run expTable) := (List.finRange rows621.length).map (Run.ofGroup expTable rows621 checked621)

#print axioms checked621

theorem checked637 : rows637.all (Row.check expTable) = true := by decide +kernel

theorem length637 : rows637.length = 1 := by decide

def runs637 : List (Run expTable) := (List.finRange rows637.length).map (Run.ofGroup expTable rows637 checked637)

#print axioms checked637

theorem checked653 : rows653.all (Row.check expTable) = true := by decide +kernel

theorem length653 : rows653.length = 1 := by decide

def runs653 : List (Run expTable) := (List.finRange rows653.length).map (Run.ofGroup expTable rows653 checked653)

#print axioms checked653

theorem checked669 : rows669.all (Row.check expTable) = true := by decide +kernel

theorem length669 : rows669.length = 1 := by decide

def runs669 : List (Run expTable) := (List.finRange rows669.length).map (Run.ofGroup expTable rows669 checked669)

#print axioms checked669

end DiagonalRamsey.JointRemainingRoutes
