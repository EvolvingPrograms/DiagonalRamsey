import Support.LuWang.SourceCertificateFamily.Normalized
import Support.LuWang.CurrentSourceGeometry
import Support.LuWang.SourceCertificateComplete

/-! A single quadratic support law certifies the unchanged source polynomial
317 over its whole cell. Five piece windows replace the 39 original affine
control checks numbered 3259 through 3297. -/
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace LuWang.SourceCertificateFamily.Piece317
open SourceCertificate
open AnalyticBounds ExpressionCertificate IntervalExpr PolynomialExpr ProfileExpr ShapeCertificate
open CurrentSourceData FixedPointInterval Set
abbrev seedR : ℚ := 11095362597341/10000000000000
abbrev seedW : ℚ := 1911287819757/2000000000000
abbrev seedCenter : ℚ := 10017968750000001/100000000000000000
abbrev seedOldCenter : ℚ := 1332942362221323/4000000000000000
abbrev seedNe : ℕ := 20
abbrev seedNl : ℕ := 16
abbrev seedCoefficients := coefficients_317
def u : Expr := .mul (ratExpr 4000) (sub .var (ratExpr (401/4000)))
def tau : Expr := .add (ratExpr (833785198054259/2500000000000000)) (.add (.mul (ratExpr (9910892060407/10000000000000000)) u) (.mul (ratExpr (10559931761/10000000000000000)) (.mul u u)))
def sigma : Expr := divide tau .var
def gap (old : List ℚ) : Expr :=
 sub (weightedV seedCoefficients seedCenter seedNe 32 .var (ratExpr seedR) (ratExpr seedW))
   (.mul sigma (j old seedOldCenter seedNe 32 tau))
def slack (old : List ℚ) : Expr :=
 .add (sub (sub (.add
   (sub (.mul (.add (ratExpr seedW) one) (upper seedCoefficients seedCenter seedNe 32 .var))
     (weightedV seedCoefficients seedCenter seedNe 32 .var (ratExpr seedR) (ratExpr seedW)))
   (.log seedNl sigma)) (.log seedNl (.add one tau)))
   (gp old seedOldCenter seedNe tau)) (.mul (ratExpr seedW) (.log seedNl (ratExpr seedR)))
def allPieces : List SupportingPiece := [piece_824,piece_825,piece_826,piece_827,piece_828]
def windows : List Domain := [⟨99999999999/1000000000000, 100120252939/1000000000000⟩, ⟨100120252936/1000000000000, 100246448496/1000000000000⟩, ⟨100246448493/1000000000000, 100372508449/1000000000000⟩, ⟨100372508446/1000000000000, 100498433234/1000000000000⟩, ⟨100498433231/1000000000000, 100500000001/1000000000000⟩]

def familyWindow (i : Fin 5) : Domain := windows[i.val]?.getD ⟨0,0⟩
def familyPiece (i : Fin 5) : SupportingPiece := allPieces[i.val]?.getD ⟨0,0,[]⟩
def pairCheck (i : Fin 5) : Bool :=
 let D := familyWindow i
 NestedEnclosure.checkPositive 2 (gap (familyPiece i).coefficients) D.interval D.center &&
 NestedEnclosure.checkPositive 2 (slack (familyPiece i).coefficients) D.interval D.center

def familyCheck : Bool := (List.finRange 5).all pairCheck
theorem family_checked : familyCheck = true := by decide +kernel
theorem pair_checked (i : Fin 5) : pairCheck i = true :=
 List.all_eq_true.mp family_checked i (List.mem_finRange i)

noncomputable def tauReal (t : ℝ) : ℝ :=
 833785198054259/2500000000000000 +
 (9910892060407/10000000000000000)*(4000*(t-401/4000)) +
 (10559931761/10000000000000000)*(4000*(t-401/4000))^2

theorem eval_tau (t : ℝ) : tau.eval t = tauReal t := by
 norm_num [tau, u, tauReal, Expr.eval, ratExpr, sub]
 ring

theorem tau_strictMono : StrictMonoOn tauReal (Icc (9/100) (11/100)) := by
 intro x hx y hy hxy
 have hb : 0 < (9910892060407/10000000000000000:ℝ) +
     (10559931761/10000000000000000)*(4000*(x-401/4000)+4000*(y-401/4000)) := by
   linarith [hx.1,hy.1]
 have hprod := mul_pos (by linarith : 0 < (4000:ℝ)*(y-x)) hb
 dsimp [tauReal]
 nlinarith [hprod]


def qTau (t : ℚ) : ℚ :=
 833785198054259/2500000000000000 +
 (9910892060407/10000000000000000)*(4000*(t-401/4000)) +
 (10559931761/10000000000000000)*(4000*(t-401/4000))^2

theorem cast_qTau (t : ℚ) : (qTau t : ℝ) = tauReal t := by
 unfold qTau tauReal
 push_cast
 rfl

def windowGeometry (i : Fin 5) : Prop :=
 9/100 ≤ (familyWindow i).lo ∧ (familyWindow i).hi ≤ 11/100 ∧
 (i.val = 0 ∨ qTau (familyWindow i).lo < (familyPiece i).lo) ∧
 (i.val = 4 ∨ (familyPiece i).hi < qTau (familyWindow i).hi)

theorem window_geometry (i : Fin 5) : windowGeometry i := by
 unfold windowGeometry
 fin_cases i <;> decide +kernel

theorem old_indexed (i : Fin 5) : familyPiece i =
 CurrentSourceGeometry.indexedPiece ⟨824+i.val,by omega⟩ := by
 fin_cases i <;> rfl

theorem window_from_piece {t : ℝ}
 (ht : t ∈ Icc (piece_317.lo : ℝ) (piece_317.hi : ℝ))
 (i : Fin 5) (hp : tauReal t ∈ Icc ((familyPiece i).lo : ℝ) ((familyPiece i).hi : ℝ)) :
 (familyWindow i).Contains t := by
 have htWide : t ∈ Icc (9/100:ℝ) (11/100) := by
   norm_num [piece_317] at ht ⊢
   constructor <;> linarith [ht.1, ht.2]
 rcases window_geometry i with ⟨hlo,hhi,hleft,hright⟩
 have hloWide : ((familyWindow i).lo : ℝ) ∈ Icc (9/100:ℝ) (11/100) := by
   have hh : (familyWindow i).lo ≤ (familyWindow i).hi := by fin_cases i <;> decide +kernel
   exact ⟨by convert (Rat.cast_le (K := ℝ)).mpr hlo using 1; norm_num, by convert (Rat.cast_le (K := ℝ)).mpr (hh.trans hhi) using 1; norm_num⟩
 have hhiWide : ((familyWindow i).hi : ℝ) ∈ Icc (9/100:ℝ) (11/100) := by
   have hh : (familyWindow i).lo ≤ (familyWindow i).hi := by fin_cases i <;> decide +kernel
   exact ⟨by convert (Rat.cast_le (K := ℝ)).mpr (hlo.trans hh) using 1; norm_num, by convert (Rat.cast_le (K := ℝ)).mpr hhi using 1; norm_num⟩
 constructor
 · rcases hleft with hi | hbound
   · have hi0 : i = 0 := Fin.ext hi
     subst i
     norm_num [familyWindow,windows,piece_317] at ht ⊢
     linarith [ht.1]
   · have hb : tauReal ((familyWindow i).lo : ℝ) < ((familyPiece i).lo : ℝ) := by
       rw [← cast_qTau]
       exact_mod_cast hbound
     by_contra hn
     have hm := tau_strictMono.monotoneOn htWide hloWide (le_of_lt (lt_of_not_ge hn))
     linarith [hp.1]
 · rcases hright with hi | hbound
   · have hi4 : i = 4 := Fin.ext hi
     subst i
     norm_num [familyWindow,windows,piece_317] at ht ⊢
     linarith [ht.2]
   · have hb : ((familyPiece i).hi : ℝ) < tauReal ((familyWindow i).hi : ℝ) := by
       rw [← cast_qTau]
       exact_mod_cast hbound
     by_contra hn
     have hm := tau_strictMono.monotoneOn hhiWide htWide (le_of_lt (lt_of_not_ge hn))
     linarith [hp.2]


theorem tau_old_piece {t : ℝ}
 (ht : t ∈ Icc (piece_317.lo : ℝ) (piece_317.hi : ℝ)) :
 ∃ i : Fin 5, tauReal t ∈ Icc ((familyPiece i).lo : ℝ) ((familyPiece i).hi : ℝ) := by
 have htWide : t ∈ Icc (9/100:ℝ) (11/100) := by
   norm_num [piece_317] at ht ⊢
   constructor <;> linarith [ht.1, ht.2]
 have hlo := tau_strictMono.monotoneOn (show (piece_317.lo : ℝ) ∈ Icc (9/100:ℝ) (11/100) by norm_num [piece_317]) htWide ht.1
 have hhi := tau_strictMono.monotoneOn htWide (show (piece_317.hi : ℝ) ∈ Icc (9/100:ℝ) (11/100) by norm_num [piece_317]) ht.2
 have hbounds : tauReal t ∈ Icc (piece_824.lo : ℝ) (piece_828.hi : ℝ) := by
   constructor
   · exact (by norm_num [piece_824,piece_317,tauReal] : (piece_824.lo : ℝ) ≤ tauReal (piece_317.lo : ℝ)).trans hlo
   · exact hhi.trans (by norm_num [piece_828,piece_317,tauReal] : tauReal (piece_317.hi : ℝ) ≤ (piece_828.hi : ℝ))
 have hc : covers piece_824.lo piece_828.hi (allPieces.map fun p => (⟨p.lo,p.hi⟩ : Domain)) = true := by decide +kernel
 have hn : (allPieces.map fun p => (⟨p.lo,p.hi⟩ : Domain)) ≠ [] := by decide
 obtain ⟨d,hd,hdt⟩ := covers_closed_sound _ hn hc hbounds
 obtain ⟨p,hp,rfl⟩ := List.mem_map.mp hd
 obtain ⟨j,hj,hjp⟩ := List.mem_iff_getElem.mp hp
 have hj5 : j < 5 := by simpa [allPieces] using hj
 refine ⟨⟨j,hj5⟩,?_⟩
 simpa only [familyPiece,List.getElem?_eq_getElem hj,Option.getD_some,hjp,Domain.Contains,Set.mem_Icc] using hdt


theorem family_control {t : ℝ}
 (ht : t ∈ Icc (piece_317.lo : ℝ) (piece_317.hi : ℝ)) :
 SourceControlAt CurrentSourceGeometry.F CurrentSourceGeometry.D t := by
 have ht0 : 0 < t := by norm_num [piece_317] at ht; linarith [ht.1]
 have ht1 : t ≤ 1 := by norm_num [piece_317] at ht; linarith [ht.2]
 obtain ⟨i,hp⟩ := tau_old_piece ht
 have hdom := window_from_piece ht i hp
 have hlo : (0:ℝ) < (familyPiece i).lo := by
   fin_cases i <;> norm_num [familyPiece,allPieces,piece_824,piece_825,piece_826,piece_827,piece_828]
 have hhi : ((familyPiece i).hi : ℝ) ≤ 1 := by
   fin_cases i <;> norm_num [familyPiece,allPieces,piece_824,piece_825,piece_826,piece_827,piece_828]
 have hτ0 : 0 < tauReal t := hlo.trans_le hp.1
 have hτ1 : tauReal t ≤ 1 := hp.2.trans hhi
 have hnew := CurrentSourceGeometry.indexedPiece_formulas ⟨317,by decide⟩
   (show t ∈ Icc ((CurrentSourceGeometry.indexedPiece ⟨317,by decide⟩).lo : ℝ)
     ((CurrentSourceGeometry.indexedPiece ⟨317,by decide⟩).hi : ℝ) from ht) ht0
 have hold := CurrentSourceGeometry.indexedPiece_formulas ⟨824+i.val,by omega⟩
   (by simpa only [← old_indexed i] using hp) hτ0
 have hpair := Cell.piece_frontier_support ⟨hτ0,hτ1⟩ hold.1 hold.2
   (fun _ hs => CurrentSourceGeometry.tangent_support hs)
 have hsupported : (profileFrontierB (hornerPoly (familyPiece i).coefficients) (tau.eval t),
   profileFrontierA (hornerPoly (familyPiece i).coefficients) (tau.eval t)) ∈
   supportRegion CurrentSourceGeometry.F := by
   rw [eval_tau, old_indexed]
   exact supportRegion_swap hpair
 have hc := pair_checked i
 simp only [pairCheck,Bool.and_eq_true] at hc
 apply normalized_control (old := (familyPiece i).coefficients) (oc := seedOldCenter)
   (nc := seedCenter) (ne := seedNe) (nl := seedNl) (nq := 32) (depth := 2)
   (r := ratExpr seedR) (w := ratExpr seedW) (tau := tau) (domain := familyWindow i)
   ht0 hdom hnew.1 hnew.2 (CurrentSourceGeometry.derivative_pos ⟨ht0,ht1⟩)
 · norm_num [seedR,seedW,eval_ratExpr]
 · norm_num [seedR,seedW,eval_ratExpr]
 · rwa [eval_tau]
 · norm_num only [eval_ratExpr,seedR,seedW]
   constructor
   · positivity
   · norm_num [piece_317] at ht
     linarith [ht.2]
 · exact hsupported
 · exact hc.1
 · exact hc.2

end LuWang.SourceCertificateFamily.Piece317
#print axioms LuWang.SourceCertificateFamily.Piece317.family_control
#print axioms LuWang.SourceCertificateFamily.Piece317.family_checked
#print axioms LuWang.SourceCertificateFamily.Piece317.tau_strictMono
