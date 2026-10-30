module

public import Support.Published.Lemmas.DiagRamsey_SE_Graph
public import Support.Published.Lemmas.DiagRamsey_SE_Drift

@[expose] public section

/-!
# 2.4 Ordered rows
Stationarity identifies the average row drift. Subset moment bounds permit
ordering the rows by degree and control every initial segment. These are the
checked finite inputs to the ordered-envelope argument.
-/

set_option autoImplicit false

namespace DiagonalRamsey.Inherited

export DiagRamsey.SE (stationarity sumV Sbin sorted_enum drift)

#print axioms stationarity
#print axioms sumV
#print axioms Sbin
#print axioms sorted_enum
#print axioms drift

end DiagonalRamsey.Inherited
