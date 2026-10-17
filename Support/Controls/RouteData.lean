import Support.Controls.CandidateControl
import Support.Published.Lemmas.DiagRamsey_SB_RouteG
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic.CandidateRoute
open DiagRamsey AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval
open TangentExpressions
def knotsQ : Fin 18 → ℚ := ![
  (740490484559/1000000000000 : ℚ),
  (771471868499/1000000000000 : ℚ),
  (4/5 : ℚ),
  (805124622469/1000000000000 : ℚ),
  (105125432437/125000000000 : ℚ),
  (17/20 : ℚ),
  (1119/1280 : ℚ),
  (7/8 : ℚ),
  (175821351681/200000000000 : ℚ),
  (9077/10240 : ℚ),
  (1841/2048 : ℚ),
  (73/80 : ℚ),
  (919082118033/1000000000000 : ℚ),
  (477/512 : ℚ),
  (9721/10240 : ℚ),
  (19221527379/20000000000 : ℚ),
  (10177/10240 : ℚ),
  (10000000001/10000000000 : ℚ)]
def slopesQ : Fin 17 → ℚ := ![
  (885519073209/1000000000000 : ℚ),
  (855666110059/1000000000000 : ℚ),
  (855666110059/1000000000000 : ℚ),
  (413339286593/500000000000 : ℚ),
  (798507696219/1000000000000 : ℚ),
  (798507696219/1000000000000 : ℚ),
  (798507696219/1000000000000 : ℚ),
  (798507696219/1000000000000 : ℚ),
  (771108722031/1000000000000 : ℚ),
  (771108722031/1000000000000 : ℚ),
  (771108722031/1000000000000 : ℚ),
  (771108722031/1000000000000 : ℚ),
  (744440474949/1000000000000 : ℚ),
  (744440474949/1000000000000 : ℚ),
  (744440474949/1000000000000 : ℚ),
  (359232494273/500000000000 : ℚ),
  (359232494273/500000000000 : ℚ)]
def densitiesQ : Fin 17 → ℚ := ![
  (47/80 : ℚ),
  (23/40 : ℚ),
  (23/40 : ℚ),
  (9/16 : ℚ),
  (11/20 : ℚ),
  (11/20 : ℚ),
  (11/20 : ℚ),
  (11/20 : ℚ),
  (43/80 : ℚ),
  (43/80 : ℚ),
  (43/80 : ℚ),
  (43/80 : ℚ),
  (21/40 : ℚ),
  (21/40 : ℚ),
  (21/40 : ℚ),
  (41/80 : ℚ),
  (41/80 : ℚ)]
def height0Q : ℚ := (65306010333663766076063/62500000000000000000000 : ℚ)
noncomputable def route : RouteNode 17 1 where
  p := 1/2
  γ := candidateControl
  M := 17
  u := fun i => knotsQ i
  d := fun i => slopesQ i
  c := id
  g₀ := height0Q
  ε := 1/1000000000

theorem knots_strict : StrictMono knotsQ := by decide +kernel
theorem slopes_positive : ∀ i, 0 < slopesQ i := by decide +kernel
theorem densities_range : ∀ i, 0 < densitiesQ i ∧ densitiesQ i < 1 := by decide +kernel

theorem route_strict : StrictMono route.u := by
  intro i j hij
  change (knotsQ i : ℝ) < (knotsQ j : ℝ)
  exact_mod_cast knots_strict hij

def slopeCheck (i : Fin 17) : Bool :=
  let E := ln (rat (1-densitiesQ i))
  E.safe (point 0) && decide (0 < slopesQ i+boundLo (E.bound (point 0)))

theorem slopes_checked : ∀ i, slopeCheck i = true := by decide +kernel

theorem route_slope_gap (i : Fin 17) :
    -Real.log (1-(densitiesQ i : ℝ)) < route.d i := by
  have h := slopes_checked i
  simp only [slopeCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  have hb := (bound_sound_cast _ h.1).1
  simp only [ln, Expr.eval, rat_eval, Rat.cast_sub, Rat.cast_one] at hb
  have hn := (Rat.cast_lt (K := ℝ)).mpr h.2
  push_cast at hn
  simp only [ln] at hn
  change -Real.log (1-(densitiesQ i : ℝ)) < (slopesQ i : ℝ)
  linarith

theorem route_basic : candidateControl.p < route.p ∧ route.p < 1 ∧
    0 < route.M ∧ 0 < route.θ ∧ 0 < route.g₀ ∧ 0 < route.ε := by
  have hθ : 0 < route.θ := by
    change (0:ℝ) < (knotsQ 0 : ℝ)
    norm_num [knotsQ]
  exact ⟨by norm_num [route, candidateControl], by norm_num [route],
    by norm_num [route], hθ, by norm_num [route, height0Q], by norm_num [route]⟩

#print axioms route_strict
#print axioms route_slope_gap
#print axioms route_basic
end RamseyAnalytic.CandidateRoute
