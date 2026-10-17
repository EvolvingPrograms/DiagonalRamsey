import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate490
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29171550073/100000000000 : ℚ), (3336860865463/2500000000 : ℚ), (-390103637536013/1000000000000 : ℚ), 12⟩,
    ⟨(14623861227/50000000000 : ℚ), (1458368184607/10000000000 : ℚ), (-43114216483257/1000000000000 : ℚ), 9⟩,
    ⟨(146996668171/500000000000 : ℚ), (102181432459/2000000000 : ℚ), (-15354939879267/1000000000000 : ℚ), 7⟩,
    ⟨(296249235151/1000000000000 : ℚ), (98256507/3906250 : ℚ), (-3853409483353/500000000000 : ℚ), 6⟩,
    ⟨(299223195429/1000000000000 : ℚ), (145733014621/10000000000 : ℚ), (-2279633587607/500000000000 : ℚ), 6⟩,
    ⟨(302886576313/1000000000000 : ℚ), (3710425829/400000000 : ℚ), (-1482896141829/500000000000 : ℚ), 5⟩,
    ⟨(307204097441/1000000000000 : ℚ), (62686605997/10000000000 : ℚ), (-2049111764673/1000000000000 : ℚ), 5⟩,
    ⟨(12485367149/40000000000 : ℚ), (44093786943/10000000000 : ℚ), (-368444924601/250000000000 : ℚ), 4⟩,
    ⟨(79407335197/250000000000 : ℚ), (31867737309/10000000000 : ℚ), (-272269459133/250000000000 : ℚ), 4⟩,
    ⟨(64727332443/200000000000 : ℚ), (23443132581/10000000000 : ℚ), (-163827843893/200000000000 : ℚ), 4⟩,
    ⟨(66019657843/200000000000 : ℚ), (17420386651/10000000000 : ℚ), (-4979198613/8000000000 : ℚ), 4⟩,
    ⟨(33695199279/100000000000 : ℚ), (12984619039/10000000000 : ℚ), (-59317884023/125000000000 : ℚ), 3⟩,
    ⟨(86032942007/250000000000 : ℚ), (602261609/625000000 : ℚ), (-360577052931/1000000000000 : ℚ), 3⟩,
    ⟨(175784234883/500000000000 : ℚ), (7055560297/10000000000 : ℚ), (-16928425773/62500000000 : ℚ), 3⟩,
    ⟨(44898809813/125000000000 : ℚ), (1006232469/2000000000 : ℚ), (-49736127539/250000000000 : ℚ), 3⟩,
    ⟨(366924390129/1000000000000 : ℚ), (2670891/7812500 : ℚ), (-140428235837/1000000000000 : ℚ), 3⟩,
    ⟨(187347861423/500000000000 : ℚ), (1058743059/5000000000 : ℚ), (-46096980979/500000000000 : ℚ), 3⟩,
    ⟨(382429634471/1000000000000 : ℚ), (527725007/5000000000 : ℚ), (-26001060489/500000000000 : ℚ), 3⟩,
    ⟨(390051643209/1000000000000 : ℚ), (180345901/10000000000 : ℚ), (-1138217239/62500000000 : ℚ), 3⟩,
    ⟨(99372086237/250000000000 : ℚ), (-273207099/5000000000 : ℚ), (10399289277/1000000000000 : ℚ), 3⟩,
    ⟨(80933624037/200000000000 : ℚ), (-72105329/625000000 : ℚ), (34750654623/1000000000000 : ℚ), 3⟩,
    ⟨(5144022797/12500000000 : ℚ), (-831641713/5000000000 : ℚ), (55543568411/1000000000000 : ℚ), 2⟩,
    ⟨(417983450761/1000000000000 : ℚ), (-2091852113/10000000000 : ℚ), (36658047127/500000000000 : ℚ), 2⟩,
    ⟨(423990772187/1000000000000 : ℚ), (-306522127/1250000000 : ℚ), (88483614599/1000000000000 : ℚ), 2⟩,
    ⟨(1717943737/4000000000 : ℚ), (-2754126733/10000000000 : ℚ), (101367841831/1000000000000 : ℚ), 2⟩,
    ⟨(217208007767/500000000000 : ℚ), (-1502667233/5000000000 : ℚ), (2805451659/25000000000 : ℚ), 2⟩,
    ⟨(219366768331/500000000000 : ℚ), (-3211697283/10000000000 : ℚ), (121226912861/1000000000000 : ℚ), 2⟩,
    ⟨(221198458773/500000000000 : ℚ), (-3377744471/10000000000 : ℚ), (12854213241/100000000000 : ℚ), 2⟩,
    ⟨(3479459983/7812500000 : ℚ), (-3506909999/10000000000 : ℚ), (67137730887/500000000000 : ℚ), 2⟩,
    ⟨(447626776633/1000000000000 : ℚ), (-1800866539/5000000000 : ℚ), (138509251453/1000000000000 : ℚ), 2⟩,
    ⟨(112285722109/250000000000 : ℚ), (-732800643/2000000000 : ℚ), (7065066773/50000000000 : ℚ), 2⟩,
    ⟨(89980922449/200000000000 : ℚ), (-923715213/2500000000 : ℚ), (570753831/4000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-9246763/25000000 : ℚ), (3571535877/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (83191898217/250000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control490.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control490.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate490
