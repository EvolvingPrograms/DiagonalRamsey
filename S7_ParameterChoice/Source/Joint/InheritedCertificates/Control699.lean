import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate699
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(253829362463/1000000000000 : ℚ), (14208943039339/10000000000 : ℚ), (-18057154117533/50000000000 : ℚ), 13⟩,
    ⟨(7946630353/31250000000 : ℚ), (1556318196799/10000000000 : ℚ), (-4984315644857/125000000000 : ℚ), 10⟩,
    ⟨(12760666593/50000000000 : ℚ), (54683298749/1000000000 : ℚ), (-14172893800489/1000000000000 : ℚ), 8⟩,
    ⟨(2052671783/8000000000 : ℚ), (33743607233/1250000000 : ℚ), (-709164599341/100000000000 : ℚ), 7⟩,
    ⟨(258390894319/1000000000000 : ℚ), (15670094581/1000000000 : ℚ), (-83546885747/20000000000 : ℚ), 7⟩,
    ⟨(5212333891/20000000000 : ℚ), (24953197573/2500000000 : ℚ), (-540381843253/200000000000 : ℚ), 6⟩,
    ⟨(32904992237/125000000000 : ℚ), (16847116513/2500000000 : ℚ), (-231636144201/125000000000 : ℚ), 6⟩,
    ⟨(266235361089/1000000000000 : ℚ), (47252872247/10000000000 : ℚ), (-165038109843/125000000000 : ℚ), 5⟩,
    ⟨(269574116567/1000000000000 : ℚ), (4243365003/1250000000 : ℚ), (-192802300909/200000000000 : ℚ), 5⟩,
    ⟨(17076503143/62500000000 : ℚ), (24729339323/10000000000 : ℚ), (-713966680831/1000000000000 : ℚ), 5⟩,
    ⟨(277150011397/1000000000000 : ℚ), (9051271373/5000000000 : ℚ), (-16615246247/31250000000 : ℚ), 4⟩,
    ⟨(14065709537/50000000000 : ℚ), (6596603979/5000000000 : ℚ), (-197330576451/500000000000 : ℚ), 4⟩,
    ⟨(71419121249/250000000000 : ℚ), (2366217273/2500000000 : ℚ), (-72251427981/250000000000 : ℚ), 4⟩,
    ⟨(58038976577/200000000000 : ℚ), (3286863899/5000000000 : ℚ), (-205789292227/1000000000000 : ℚ), 4⟩,
    ⟨(147412934883/500000000000 : ℚ), (536449253/1250000000 : ℚ), (-34764080937/250000000000 : ℚ), 4⟩,
    ⟨(18720302919/62500000000 : ℚ), (615622861/2500000000 : ℚ), (-21178982093/250000000000 : ℚ), 4⟩,
    ⟨(152123279991/500000000000 : ℚ), (488560239/5000000000 : ℚ), (-39886508217/1000000000000 : ℚ), 4⟩,
    ⟨(308945536919/1000000000000 : ℚ), (-242745549/10000000000 : ℚ), (-77956027/31250000000 : ℚ), 3⟩,
    ⟨(313576523801/1000000000000 : ℚ), (-250821929/2000000000 : ℚ), (28978845627/1000000000000 : ℚ), 3⟩,
    ⟨(31809492169/100000000000 : ℚ), (-2099146949/10000000000 : ℚ), (13915870593/250000000000 : ℚ), 3⟩,
    ⟨(64491443189/200000000000 : ℚ), (-2809463127/10000000000 : ℚ), (4900614977/62500000000 : ℚ), 3⟩,
    ⟨(326621395289/1000000000000 : ℚ), (-3408993389/10000000000 : ℚ), (19572909489/200000000000 : ℚ), 3⟩,
    ⟨(165273678199/500000000000 : ℚ), (-3916015691/10000000000 : ℚ), (57261410317/500000000000 : ℚ), 3⟩,
    ⟨(334197290119/1000000000000 : ℚ), (-271535873/625000000 : ℚ), (128765754979/1000000000000 : ℚ), 3⟩,
    ⟨(337536045597/1000000000000 : ℚ), (-941100091/2000000000 : ℚ), (14088730367/100000000000 : ℚ), 3⟩,
    ⟨(34053146879/100000000000 : ℚ), (-625895039/1250000000 : ℚ), (151114100323/1000000000000 : ℚ), 3⟩,
    ⟨(42894339017/125000000000 : ℚ), (-525600027/1000000000 : ℚ), (79810112979/500000000000 : ℚ), 3⟩,
    ⟨(345380512367/1000000000000 : ℚ), (-2728478091/5000000000 : ℚ), (83269160807/500000000000 : ℚ), 3⟩,
    ⟨(347187433811/1000000000000 : ℚ), (-1403439183/2500000000 : ℚ), (8598399553/50000000000 : ℚ), 3⟩,
    ⟨(174279037413/500000000000 : ℚ), (-2864574347/5000000000 : ℚ), (175982129067/1000000000000 : ℚ), 3⟩,
    ⟨(34947923539/100000000000 : ℚ), (-5805061053/10000000000 : ℚ), (89315801059/500000000000 : ℚ), 3⟩,
    ⟨(349942044223/1000000000000 : ℚ), (-5842719601/10000000000 : ℚ), (43932754/244140625 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2923706569/5000000000 : ℚ), (180112820577/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (53507812251/125000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control699.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control699.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate699
