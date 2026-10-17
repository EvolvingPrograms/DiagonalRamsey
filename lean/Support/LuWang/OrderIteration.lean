import Mathlib.Order.FixedPoints
import Mathlib.Tactic

/-! The order-theoretic comparisons used in the closure theorem.
The separate compact-depth theorem supplies a route's common finite stage.
The fixed-point premise below is explicit: this file alone is not a proof
that the retained-route operator attains its limit. -/

set_option autoImplicit false

namespace LuWang

def descendingIterate {α : Type*} (T : α → α) (top : α) : ℕ → α
  | 0 => top
  | n + 1 => T (descendingIterate T top n)

theorem descendingIterate_antitone {α : Type*} [Preorder α]
    {T : α → α} {top : α} (hmono : Monotone T) (hfirst : T top ≤ top) :
    Antitone (descendingIterate T top) := by
  apply antitone_nat_of_succ_le
  intro n
  induction n with
  | zero => exact hfirst
  | succ n ih => exact hmono ih

/-- No regularity premise is needed for a post-fixed lower bound. -/
theorem postfixed_le_every_iterate {α : Type*} [Preorder α]
    {T : α → α} {top v : α} (hmono : Monotone T)
    (hvtop : v ≤ top) (hv : v ≤ T v) :
    ∀ n, v ≤ descendingIterate T top n := by
  intro n
  induction n with
  | zero => exact hvtop
  | succ n ih => exact hv.trans (hmono ih)

theorem postfixed_le_iterate_inf {α : Type*} [CompleteLattice α]
    {T : α → α} {top v : α} (hmono : Monotone T)
    (hvtop : v ≤ top) (hv : v ≤ T v) :
    v ≤ ⨅ n, descendingIterate T top n :=
  le_iInf (postfixed_le_every_iterate hmono hvtop hv)

/-- Once the route-specific compactness argument proves fixedness, the limit
is precisely the supremum of all post-fixed lower bounds below the initial profile. -/
theorem iterate_inf_eq_postfixed_sup {α : Type*} [CompleteLattice α]
    {T : α → α} {top : α} (hmono : Monotone T)
    (hfixed : T (⨅ n, descendingIterate T top n) = ⨅ n, descendingIterate T top n) :
    (⨅ n, descendingIterate T top n) = sSup {v | v ≤ top ∧ v ≤ T v} := by
  apply le_antisymm
  · apply le_sSup
    constructor
    · exact iInf_le (descendingIterate T top) 0
    · rw [hfixed]
  · apply sSup_le
    intro v hv
    exact postfixed_le_iterate_inf hmono hv.1 hv.2

end LuWang
