import Support.Published.Lemmas.DiagRamsey_V5Bank

/-! Narrow reuse of the fraction/profile portion of `Lemmas.DiagRamsey_V5Fast`
by turibius-of-mogrovejo. Definitions and soundness proofs are unchanged;
the source-foundation and recipe-assembly imports are unnecessary here. -/

set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry

open DiagRamsey.V5
/-- The fraction `n / (d + 1)`. -/
structure FQ where
  n : ℤ
  d : ℕ

namespace FQ

def toQ (a : FQ) : ℚ := (a.n : ℚ) / ((a.d + 1 : ℕ) : ℚ)

lemma den_pos (a : FQ) : (0 : ℚ) < ((a.d + 1 : ℕ) : ℚ) := by exact_mod_cast Nat.succ_pos _

/-- The fraction `n / D` for `D ≥ 1`. -/
def mkD (n : ℤ) (D : ℕ) : FQ := ⟨n, D - 1⟩

lemma toQ_mk (n : ℤ) (D : ℕ) (hD : 1 ≤ D) : (mkD n D).toQ = (n : ℚ) / (D : ℚ) := by
  simp only [toQ, mkD]; rw [Nat.sub_add_cancel hD]

def add (a b : FQ) : FQ := mkD (a.n * (b.d + 1 : ℕ) + b.n * (a.d + 1 : ℕ)) ((a.d + 1) * (b.d + 1))
def sub (a b : FQ) : FQ := mkD (a.n * (b.d + 1 : ℕ) - b.n * (a.d + 1 : ℕ)) ((a.d + 1) * (b.d + 1))
def mul (a b : FQ) : FQ := mkD (a.n * b.n) ((a.d + 1) * (b.d + 1))
def ofInt (n : ℤ) : FQ := ⟨n, 0⟩
/-- `a / b` with `ℚ`'s convention `x / 0 = 0`. -/
def div (a b : FQ) : FQ :=
  if 0 < b.n then mkD (a.n * (b.d + 1 : ℕ)) ((a.d + 1) * b.n.natAbs)
  else if b.n < 0 then mkD (-(a.n * (b.d + 1 : ℕ))) ((a.d + 1) * b.n.natAbs)
  else ⟨0, 0⟩
def le (a b : FQ) : Bool := decide (a.n * (b.d + 1 : ℕ) ≤ b.n * (a.d + 1 : ℕ))
def lt (a b : FQ) : Bool := decide (a.n * (b.d + 1 : ℕ) < b.n * (a.d + 1 : ℕ))
def eq (a b : FQ) : Bool := decide (a.n * (b.d + 1 : ℕ) = b.n * (a.d + 1 : ℕ))
def max (a b : FQ) : FQ := if le a b then b else a
def min (a b : FQ) : FQ := if le a b then a else b

lemma one_le_mul (a b : ℕ) : 1 ≤ (a + 1) * (b + 1) := Nat.one_le_iff_ne_zero.mpr (by positivity)

lemma toQ_add (a b : FQ) : (add a b).toQ = a.toQ + b.toQ := by
  rw [add, toQ_mk _ _ (one_le_mul _ _)]
  have ha := a.den_pos; have hb := b.den_pos
  simp only [toQ]; push_cast at *; field_simp

lemma toQ_sub (a b : FQ) : (sub a b).toQ = a.toQ - b.toQ := by
  rw [sub, toQ_mk _ _ (one_le_mul _ _)]
  have ha := a.den_pos; have hb := b.den_pos
  simp only [toQ]; push_cast at *; field_simp

lemma toQ_mul (a b : FQ) : (mul a b).toQ = a.toQ * b.toQ := by
  rw [mul, toQ_mk _ _ (one_le_mul _ _)]
  simp only [toQ]; push_cast; rw [div_mul_div_comm]

lemma toQ_ofInt (n : ℤ) : (ofInt n).toQ = n := by simp [toQ, ofInt]

lemma toQ_div (a b : FQ) : (div a b).toQ = a.toQ / b.toQ := by
  have ha := a.den_pos; have hb := b.den_pos
  unfold div
  split_ifs with h1 h2
  · have hD : 1 ≤ (a.d + 1) * b.n.natAbs :=
      Nat.one_le_iff_ne_zero.mpr (Nat.mul_ne_zero (Nat.succ_ne_zero _) (by omega))
    rw [toQ_mk _ _ hD]
    have : ((b.n.natAbs : ℕ) : ℚ) = (b.n : ℚ) := by
      rw [Nat.cast_natAbs]; push_cast; exact_mod_cast abs_of_pos h1
    simp only [toQ]; push_cast [this] at *
    have hbn : (b.n : ℚ) ≠ 0 := by exact_mod_cast h1.ne'
    field_simp
  · have hD : 1 ≤ (a.d + 1) * b.n.natAbs :=
      Nat.one_le_iff_ne_zero.mpr (Nat.mul_ne_zero (Nat.succ_ne_zero _) (by omega))
    rw [toQ_mk _ _ hD]
    have : ((b.n.natAbs : ℕ) : ℚ) = -(b.n : ℚ) := by
      rw [Nat.cast_natAbs]; push_cast; rw [abs_of_neg (by exact_mod_cast h2)]
    simp only [toQ]; push_cast [this] at *
    have hbn : (b.n : ℚ) ≠ 0 := by exact_mod_cast h2.ne
    field_simp
  · have : b.n = 0 := by omega
    simp [toQ, this]

lemma le_eq (a b : FQ) : le a b = decide (a.toQ ≤ b.toQ) := by
  have ha := a.den_pos; have hb := b.den_pos
  have key : a.n * ((b.d + 1 : ℕ) : ℤ) ≤ b.n * ((a.d + 1 : ℕ) : ℤ) ↔ a.toQ ≤ b.toQ := by
    simp only [toQ]; rw [div_le_div_iff₀ ha hb]; constructor <;> intro h <;> exact_mod_cast h
  simp only [le]; exact decide_eq_decide.mpr key

lemma lt_eq (a b : FQ) : lt a b = decide (a.toQ < b.toQ) := by
  have ha := a.den_pos; have hb := b.den_pos
  have key : a.n * ((b.d + 1 : ℕ) : ℤ) < b.n * ((a.d + 1 : ℕ) : ℤ) ↔ a.toQ < b.toQ := by
    simp only [toQ]; rw [div_lt_div_iff₀ ha hb]; constructor <;> intro h <;> exact_mod_cast h
  simp only [lt]; exact decide_eq_decide.mpr key

lemma eq_eq (a b : FQ) : eq a b = decide (a.toQ = b.toQ) := by
  have ha := a.den_pos; have hb := b.den_pos
  have key : a.n * ((b.d + 1 : ℕ) : ℤ) = b.n * ((a.d + 1 : ℕ) : ℤ) ↔ a.toQ = b.toQ := by
    simp only [toQ]; rw [div_eq_div_iff ha.ne' hb.ne']; constructor <;> intro h <;> exact_mod_cast h
  simp only [eq]; exact decide_eq_decide.mpr key

lemma toQ_max (a b : FQ) : (max a b).toQ = Max.max a.toQ b.toQ := by
  unfold max; rw [le_eq]
  by_cases h : a.toQ ≤ b.toQ
  · simp [h]
  · simp [h, max_eq_left (le_of_not_ge h)]

lemma toQ_min (a b : FQ) : (min a b).toQ = Min.min a.toQ b.toQ := by
  unfold min; rw [le_eq]
  by_cases h : a.toQ ≤ b.toQ
  · simp [h]
  · simp [h, min_eq_right (le_of_not_ge h)]

end FQ

open DiagRamsey.PL

namespace FQ
def zero : FQ := ⟨0, 0⟩
def one : FQ := ⟨1, 0⟩
lemma toQ_zero : zero.toQ = 0 := by simp [toQ, zero]
lemma toQ_one : one.toQ = 1 := by simp [toQ, one]
end FQ

open FQ

/-- The list mapped to `ℚ`. -/
def mapQ (l : List FQ) : List ℚ := l.map FQ.toQ

@[simp] lemma mapQ_nil : mapQ [] = [] := rfl
@[simp] lemma mapQ_cons (a : FQ) (l : List FQ) : mapQ (a :: l) = a.toQ :: mapQ l := rfl

def sortedF : List FQ → Bool
  | a :: b :: rest => lt a b && sortedF (b :: rest)
  | _ => true

lemma sortedF_eq : ∀ l : List FQ, sortedF l = sortedQ (mapQ l)
  | a :: b :: rest => by simp only [sortedF, sortedQ, mapQ_cons, lt_eq, sortedF_eq (b :: rest)]
  | [] => rfl
  | [_] => rfl

def posF : List FQ → Bool
  | a :: _ => lt zero a
  | [] => true

lemma posF_eq (l : List FQ) : posF l = posQ (mapQ l) := by
  cases l <;> simp [posF, posQ, lt_eq, toQ_zero]

def noKnotF (xs : List FQ) : List FQ → Bool
  | a :: b :: rest => xs.all (fun x => le x a || le b x) && noKnotF xs (b :: rest)
  | _ => true

lemma noKnotF_eq (xs : List FQ) : ∀ bp : List FQ, noKnotF xs bp = noKnotQ (mapQ xs) (mapQ bp)
  | a :: b :: rest => by
      have ih := noKnotF_eq xs (b :: rest)
      show (xs.all (fun x => le x a || le b x) && noKnotF xs (b :: rest)) =
        ((mapQ xs).all (fun x => decide (x ≤ a.toQ) || decide (b.toQ ≤ x)) && noKnotQ (mapQ xs) (mapQ (b :: rest)))
      rw [ih]; congr 1
      simp only [mapQ, List.all_map, le_eq]; rfl
  | [] => rfl
  | [_] => rfl

def noKnotReflF (xs : List FQ) : List FQ → Bool
  | a :: b :: rest => xs.all (fun x => le x (div one b) || le (div one a) x) && noKnotReflF xs (b :: rest)
  | _ => true

lemma noKnotReflF_eq (xs : List FQ) : ∀ bp : List FQ, noKnotReflF xs bp = noKnotReflQ (mapQ xs) (mapQ bp)
  | a :: b :: rest => by
      have ih := noKnotReflF_eq xs (b :: rest)
      show (xs.all (fun x => le x (div one b) || le (div one a) x) && noKnotReflF xs (b :: rest)) =
        ((mapQ xs).all (fun x => decide (x ≤ 1 / b.toQ) || decide (1 / a.toQ ≤ x)) &&
          noKnotReflQ (mapQ xs) (mapQ (b :: rest)))
      rw [ih]; congr 1
      simp only [mapQ, List.all_map, le_eq, toQ_div, toQ_one]; rfl
  | [] => rfl
  | [_] => rfl

/-- Linear interpolation on `[x0, x1]` in `evalQ`'s clamp form. -/
def interp (x0 x1 y0 y1 r : FQ) : FQ :=
  add y0 (mul (div (sub y1 y0) (sub x1 x0)) (max zero (sub (min r x1) x0)))

/-- The interpolant, evaluated on the first segment whose right end is `≥ r` (equal to `evalQ` on sorted nodes). -/
def evalF : List FQ → List FQ → FQ → FQ
  | x0 :: x1 :: xs, y0 :: y1 :: ys, r => if le r x1 then interp x0 x1 y0 y1 r else evalF (x1 :: xs) (y1 :: ys) r
  | _, y0 :: _, _ => y0
  | _, [], _ => zero

/-- On sorted nodes, `evalQ` left of the first node is the first value. -/
lemma evalQ_left : ∀ (xs ys : List ℚ) (r : ℚ), sortedQ xs = true → (∀ x ∈ xs.head?, r ≤ x) →
    evalQ xs ys r = ys.headD 0
  | x0 :: x1 :: xs, y0 :: y1 :: ys, r, hs, hr => by
      simp only [sortedQ, Bool.and_eq_true, decide_eq_true_eq] at hs
      have h0 : r ≤ x0 := hr x0 rfl
      have ih := evalQ_left (x1 :: xs) (y1 :: ys) r hs.2 (fun x hx => by
        simp at hx; subst hx; linarith [hs.1])
      rw [evalQ, ih, min_eq_left (by linarith [hs.1]), max_eq_left (by linarith)]
      simp
  | [], y0 :: _, _, _, _ => by simp [evalQ]
  | [_], y0 :: _, _, _, _ => by simp [evalQ]
  | _ :: _ :: _, [_], _, _, _ => by simp [evalQ]
  | xs, [], _, _, _ => by cases xs <;> simp [evalQ]

lemma evalF_eq : ∀ (xs ys : List FQ) (r : FQ), sortedF xs = true →
    (evalF xs ys r).toQ = evalQ (mapQ xs) (mapQ ys) r.toQ
  | x0 :: x1 :: xs, y0 :: y1 :: ys, r, hs => by
      have hs' := hs
      simp only [sortedF, Bool.and_eq_true, lt_eq, decide_eq_true_eq] at hs'
      simp only [evalF, mapQ_cons, evalQ]
      split_ifs with h
      · rw [le_eq, decide_eq_true_eq] at h
        have hl := evalQ_left (mapQ (x1 :: xs)) (mapQ (y1 :: ys)) r.toQ (by rw [← sortedF_eq]; exact hs'.2)
          (fun x hx => by simp [mapQ] at hx; subst hx; exact h)
        simp only [mapQ_cons, List.headD_cons] at hl
        rw [hl]
        simp only [interp, toQ_add, toQ_mul, toQ_div, toQ_sub, toQ_max, toQ_min, toQ_zero]
        ring
      · rw [le_eq, decide_eq_true_eq] at h
        have ih := evalF_eq (x1 :: xs) (y1 :: ys) r hs'.2
        simp only [mapQ_cons] at ih
        rw [← ih]
        have hx : x0.toQ < x1.toQ := hs'.1
        rw [min_eq_right (by linarith [not_le.mp h]), max_eq_right (by linarith)]
        field_simp [sub_ne_zero.mpr hx.ne']
        ring
  | [], y0 :: _, _, _ => by simp [evalF, evalQ]
  | [_], y0 :: _, _, _ => by simp [evalF, evalQ]
  | _ :: _ :: _, [_], _, _ => by simp [evalF, evalQ]
  | xs, [], _, _ => by
      cases xs <;> simp [evalF, evalQ, toQ_zero]

/-! ## Fast piecewise-affine checks -/

lemma all_imp {l : List FQ} {f : FQ → Bool} {g : ℚ → Bool} (h : ∀ x ∈ l, f x = true → g x.toQ = true)
    (hf : l.all f = true) : (mapQ l).all g = true := by
  rw [List.all_eq_true] at hf ⊢
  intro y hy
  obtain ⟨x, hx, rfl⟩ := List.mem_map.mp hy
  exact h x hx (hf x hx)

structure ProfF where
  p : FQ
  xs : List FQ
  ys : List FQ

def ProfF.toD (P : ProfF) : ProfD := ⟨P.p.toQ, mapQ P.xs, mapQ P.ys⟩

def ProfF.ok (P : ProfF) (m : FQ) : Bool :=
  lt zero P.p && lt P.p one && decide (2 ≤ P.xs.length) && decide (P.xs.length = P.ys.length) &&
    sortedF P.xs && posF P.xs && lt zero m && P.xs.all (fun x => le m (evalF P.xs P.ys x)) &&
    noKnotF P.xs P.xs

lemma ProfF.ok_imp (P : ProfF) (m : FQ) (h : P.ok m = true) : P.toD.ok m.toQ = true := by
  simp only [ProfF.ok, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, h8⟩, h9⟩ := h
  simp only [ProfD.ok, ProfF.toD, Bool.and_eq_true]
  rw [lt_eq, toQ_zero] at h1 h7; rw [lt_eq, toQ_one] at h2
  refine ⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, by simpa [mapQ] using h3⟩, by simpa [mapQ] using h4⟩, by rwa [← sortedF_eq]⟩,
    by rwa [← posF_eq]⟩, h7⟩, ?_⟩, by rwa [← noKnotF_eq]⟩
  exact all_imp (fun x _ hx => by rw [le_eq, evalF_eq _ _ _ h5] at hx; exact hx) h8

/-- **Geometric validity.** The fast rational checker proves positivity and
domain conditions; it does not assert Ramsey admissibility. -/
theorem ProfF.valid_of_ok (P : ProfF) (m : FQ) (h : P.ok m = true) :
    P.toD.toBP.Valid :=
  ProfD.valid_of_ok P.toD m.toQ (P.ok_imp m h)

#print axioms ProfF.valid_of_ok

/-- Exact field comparison transports an existing PL curve without any
assertion about Ramsey admissibility. -/
def sameDatum (P Q : ProfD) : Bool :=
  decide (P.p = Q.p) && decide (P.xs = Q.xs) && decide (P.ys = Q.ys)

theorem eq_of_sameDatum {P Q : ProfD} (h : sameDatum P Q = true) : P = Q := by
  simp only [sameDatum, Bool.and_eq_true, decide_eq_true_eq] at h
  cases P
  cases Q
  obtain ⟨⟨hp, hxs⟩, hys⟩ := h
  cases hp
  cases hxs
  cases hys
  rfl

end DiagonalRamsey.JointGeometry
