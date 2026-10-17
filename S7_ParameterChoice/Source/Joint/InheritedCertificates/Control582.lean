import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate582
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140327926949/500000000000 : ℚ), (13339046953273/10000000000 : ℚ), (-375018069508953/1000000000000 : ℚ), 12⟩,
    ⟨(281326429693/1000000000000 : ℚ), (1458505642587/10000000000 : ℚ), (-10359274314759/250000000000 : ℚ), 9⟩,
    ⟨(282661123269/1000000000000 : ℚ), (5114138909/100000000 : ℚ), (-3687620910451/250000000000 : ℚ), 8⟩,
    ⟨(355808851/1250000000 : ℚ), (252003299217/10000000000 : ℚ), (-1849469109743/250000000000 : ℚ), 7⟩,
    ⟨(71816294107/250000000000 : ℚ), (146104107989/10000000000 : ℚ), (-4371918373541/1000000000000 : ℚ), 6⟩,
    ⟨(14524509823/50000000000 : ℚ), (23258541203/2500000000 : ℚ), (-709994319121/250000000000 : ℚ), 5⟩,
    ⟨(294291082193/1000000000000 : ℚ), (62871269139/10000000000 : ℚ), (-979335888419/500000000000 : ℚ), 5⟩,
    ⟨(37328903627/125000000000 : ℚ), (22099978631/5000000000 : ℚ), (-702759651509/500000000000 : ℚ), 5⟩,
    ⟨(151734419473/500000000000 : ℚ), (15952583403/5000000000 : ℚ), (-1035626575003/1000000000000 : ℚ), 4⟩,
    ⟨(19297332697/62500000000 : ℚ), (936817937/400000000 : ℚ), (-388029523721/500000000000 : ℚ), 4⟩,
    ⟨(157222875321/500000000000 : ℚ), (8672533713/5000000000 : ℚ), (-586859409643/1000000000000 : ℚ), 4⟩,
    ⟨(320479338749/1000000000000 : ℚ), (2572621119/2000000000 : ℚ), (-17786045521/40000000000 : ℚ), 4⟩,
    ⟨(326799980721/1000000000000 : ℚ), (9474018307/10000000000 : ℚ), (-67004381967/200000000000 : ℚ), 3⟩,
    ⟨(333346805321/1000000000000 : ℚ), (3428754573/5000000000 : ℚ), (-24869768379/100000000000 : ℚ), 3⟩,
    ⟨(340056763049/1000000000000 : ℚ), (4801343731/10000000000 : ℚ), (-35899043047/200000000000 : ℚ), 3⟩,
    ⟨(5419769271/15625000000 : ℚ), (158035861/500000000 : ℚ), (-123167337199/1000000000000 : ℚ), 3⟩,
    ⟨(88426661729/250000000000 : ℚ), (91717727/500000000 : ℚ), (-76722328907/1000000000000 : ℚ), 3⟩,
    ⟨(360515117211/1000000000000 : ℚ), (749915221/10000000000 : ℚ), (-38007292821/1000000000000 : ℚ), 3⟩,
    ⟨(367225074939/1000000000000 : ℚ), (-145212891/10000000000 : ℚ), (-136116603/25000000000 : ℚ), 3⟩,
    ⟨(373771899539/1000000000000 : ℚ), (-55617929/625000000 : ℚ), (4427853831/200000000000 : ℚ), 3⟩,
    ⟨(380092541511/1000000000000 : ℚ), (-378295359/2500000000 : ℚ), (45628827389/1000000000000 : ℚ), 3⟩,
    ⟨(193063064809/500000000000 : ℚ), (-1018544897/5000000000 : ℚ), (65697092653/1000000000000 : ℚ), 3⟩,
    ⟨(97953639277/250000000000 : ℚ), (-2478395723/10000000000 : ℚ), (82860374899/1000000000000 : ℚ), 3⟩,
    ⟨(198551520657/500000000000 : ℚ), (-113999761/400000000 : ℚ), (12189610423/125000000000 : ℚ), 3⟩,
    ⟨(100485162811/250000000000 : ℚ), (-3161836181/10000000000 : ℚ), (109974653027/1000000000000 : ℚ), 3⟩,
    ⟨(101570199517/250000000000 : ℚ), (-3421616633/10000000000 : ℚ), (120472017839/1000000000000 : ℚ), 3⟩,
    ⟨(2050408419/5000000000 : ℚ), (-908819061/2500000000 : ℚ), (64596407387/500000000000 : ℚ), 3⟩,
    ⟨(413306703833/1000000000000 : ℚ), (-951843603/2500000000 : ℚ), (136277779949/1000000000000 : ℚ), 3⟩,
    ⟨(20796239973/50000000000 : ℚ), (-788272973/2000000000 : ℚ), (70916563757/500000000000 : ℚ), 3⟩,
    ⟨(417910756991/1000000000000 : ℚ), (-126243721/312500000 : ℚ), (9121061263/62500000000 : ℚ), 3⟩,
    ⟨(52405681321/125000000000 : ℚ), (-128264801/312500000 : ℚ), (74322051373/500000000000 : ℚ), 3⟩,
    ⟨(209958013181/500000000000 : ℚ), (-4136532703/10000000000 : ℚ), (149989237991/1000000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-4140527197/10000000000 : ℚ), (6006279599/40000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (183530979453/500000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control582.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control582.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate582
