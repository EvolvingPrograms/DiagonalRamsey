import S7_ParameterChoice.Source.Joint.Controls.FastControlDomain

/-! Native computation selects a data literal only. Every numerical assertion
about the resulting data is subsequently checked by the kernel. -/
set_option autoImplicit false

open Lean Elab Command in
/-- Pick a literal series length without treating native evaluation as proof. -/
elab "select_control_data " name:ident " from " base:term : command => do
  let chosen ← liftTermElabM do
    let candidate ← Term.elabTerm (← `(let D : RamseyAnalytic.ControlCertificate.Data := $base
      if (D.tangents.take 1).all (DiagonalRamsey.JointControlDomain.rowCheck D) then D.precision else max 32 (2 * D.precision)))
      (some (mkConst ``Nat))
    Term.synthesizeSyntheticMVarsNoPostponing
    unsafe Meta.evalExpr Nat (mkConst ``Nat) candidate
  logInfo m!"controlPrecision := {chosen}"
  let precision := Syntax.mkNumLit (toString chosen)
  elabCommand (← `(def $name : RamseyAnalytic.ControlCertificate.Data :=
    { $base with precision := $precision }))
