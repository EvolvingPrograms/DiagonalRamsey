import S7_ParameterChoice.Source.Joint.Controls.ControlHardData
import S7_ParameterChoice.Source.Joint.Controls.FastControlDomain
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace DiagonalRamsey.JointControlHardData
open RamseyAnalytic
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row0
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row1
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row2
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row3
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row4
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row5
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row6
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row7
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row8
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row9
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row10
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row11
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row12
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row13
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row14
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row15
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row16
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row17
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row18
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row19
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row20
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row21
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row22
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row23
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row24
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row25
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row26
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row27
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row28
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row29
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row30
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row31
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row32
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row33
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row34
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row35
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row36
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row37
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row38
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row39
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row40
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row41
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row42
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row43
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row44
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row45
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row46
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row47
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row48
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row49
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row50
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row51
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row52
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row53
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row54
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row55
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row56
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row57
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row58
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row59
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row60
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row61
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row62
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row63
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by
  unfold JointControlDomain.rowCheck
  simp only [Bool.and_eq_true]
  constructor
  · decide +kernel
  · decide +kernel
#print axioms row64
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64

#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem integralFast : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms integralFast
theorem check5 : ((ControlCertificate.totalExpr data).safe (AnalyticBounds.FixedPointInterval.point 0) && decide (TangentExpressions.boundHi ((ControlCertificate.totalExpr data).bound (AnalyticBounds.FixedPointInterval.point 0)) < -data.margin)) = true := by
  rw [← JointControlExpressions.integralCheck_eq]
  exact integralFast
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,integralFast,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
end DiagonalRamsey.JointControlHardData
