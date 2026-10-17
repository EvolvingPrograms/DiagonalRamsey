import S7_ParameterChoice.Source.Joint.Geometry

/-! Exact fixed-scale affine samples. Integer division retains the rounding in
historical profile data; rational normalization retains its fraction encoding. -/

set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry.FQ

/-- Entry `i` is `floor ((a * i + b) / q) / scale`, for `i < count`.
All uses in the profile bank have positive `q` and `scale`. -/
def roundedProgression (a b : ℤ) (q scale count : ℕ) : List FQ :=
  (List.range count).map fun (i : ℕ) =>
    let v : ℤ := (a * (i : ℤ) + b) / (q : ℤ)
    let x : ℚ := (v : ℚ) / (scale : ℚ)
    ⟨x.num, x.den - 1⟩

end DiagonalRamsey.JointGeometry.FQ
