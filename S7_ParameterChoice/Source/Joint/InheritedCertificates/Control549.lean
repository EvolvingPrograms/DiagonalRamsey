import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate549
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(75333913879/125000000000 : ℚ), (5219201934221/2500000000 : ℚ), (-314917299572901/250000000000 : ℚ), 12⟩,
    ⟨(301810464993/500000000000 : ℚ), (2291989778929/10000000000 : ℚ), (-6964533022209/50000000000 : ℚ), 9⟩,
    ⟨(121102204509/200000000000 : ℚ), (808685698139/10000000000 : ℚ), (-1241530195231/25000000000 : ℚ), 7⟩,
    ⟨(152080846521/250000000000 : ℚ), (401622358211/10000000000 : ℚ), (-6242109108939/250000000000 : ℚ), 6⟩,
    ⟨(122406187201/200000000000 : ℚ), (235022542517/10000000000 : ℚ), (-740399665377/50000000000 : ℚ), 6⟩,
    ⟨(308298983287/500000000000 : ℚ), (75639887001/5000000000 : ℚ), (-9666071663777/1000000000000 : ℚ), 5⟩,
    ⟨(621980494793/1000000000000 : ℚ), (103524517043/10000000000 : ℚ), (-6710043838531/1000000000000 : ℚ), 5⟩,
    ⟨(62812668397/100000000000 : ℚ), (3693072237/500000000 : ℚ), (-971358260927/200000000000 : ℚ), 4⟩,
    ⟨(126995468589/200000000000 : ℚ), (27131974063/5000000000 : ℚ), (-361965016999/100000000000 : ℚ), 4⟩,
    ⟨(321233248063/500000000000 : ℚ), (40699724657/10000000000 : ℚ), (-550727056887/200000000000 : ℚ), 4⟩,
    ⟨(5204176151/8000000000 : ℚ), (15482307123/5000000000 : ℚ), (-2124514729287/1000000000000 : ℚ), 4⟩,
    ⟨(82383291513/125000000000 : ℚ), (23772273299/10000000000 : ℚ), (-330747891879/200000000000 : ℚ), 3⟩,
    ⟨(334008574703/500000000000 : ℚ), (9165860419/5000000000 : ℚ), (-646430706723/500000000000 : ℚ), 3⟩,
    ⟨(169322067379/250000000000 : ℚ), (2827072701/2000000000 : ℚ), (-1010683188787/1000000000000 : ℚ), 3⟩,
    ⟨(686790406481/1000000000000 : ℚ), (2169137689/2000000000 : ℚ), (-786380926407/1000000000000 : ℚ), 3⟩,
    ⟨(696432049527/1000000000000 : ℚ), (1646288747/2000000000 : ℚ), (-605625792019/1000000000000 : ℚ), 3⟩,
    ⟨(706120344361/1000000000000 : ℚ), (766259271/1250000000 : ℚ), (-229148946733/500000000000 : ℚ), 3⟩,
    ⟨(357880993703/500000000000 : ℚ), (553095567/1250000000 : ℚ), (-67417419543/200000000000 : ℚ), 3⟩,
    ⟨(725264124371/1000000000000 : ℚ), (1514974061/5000000000 : ℚ), (-236608400857/1000000000000 : ℚ), 3⟩,
    ⟨(367267622241/500000000000 : ℚ), (940948797/5000000000 : ℚ), (-1193957897/7812500000 : ℚ), 3⟩,
    ⟨(743486061783/1000000000000 : ℚ), (932463539/10000000000 : ℚ), (-41336427981/500000000000 : ℚ), 2⟩,
    ⟨(188007593753/250000000000 : ℚ), (3620417/250000000 : ℚ), (-4756677489/200000000000 : ℚ), 2⟩,
    ⟨(760085897761/1000000000000 : ℚ), (-509502851/10000000000 : ℚ), (5136342581/200000000000 : ℚ), 2⟩,
    ⟨(767575050943/1000000000000 : ℚ), (-263166183/2500000000 : ℚ), (6716645443/100000000000 : ℚ), 2⟩,
    ⟨(387212854959/500000000000 : ℚ), (-1502035013/10000000000 : ℚ), (101810506341/1000000000000 : ℚ), 2⟩,
    ⟨(156114379819/200000000000 : ℚ), (-467813093/2500000000 : ℚ), (130515565979/1000000000000 : ℚ), 2⟩,
    ⟨(785954427313/1000000000000 : ℚ), (-54275387/250000000 : ℚ), (30798793909/200000000000 : ℚ), 2⟩,
    ⟨(790521457883/1000000000000 : ℚ), (-2409663531/10000000000 : ℚ), (86402295051/500000000000 : ℚ), 2⟩,
    ⟨(198557251951/250000000000 : ℚ), (-2593605861/10000000000 : ℚ), (187379463389/1000000000000 : ℚ), 2⟩,
    ⟨(797041371343/1000000000000 : ℚ), (-2727638899/10000000000 : ℚ), (39608699109/200000000000 : ℚ), 2⟩,
    ⟨(798931463901/1000000000000 : ℚ), (-351897039/1250000000 : ℚ), (205028830693/1000000000000 : ℚ), 2⟩,
    ⟨(99985135357/125000000000 : ℚ), (-114336381/400000000 : ℚ), (208484916993/1000000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1431894407/5000000000 : ℚ), (104457614071/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (31143124831/250000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control549.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control549.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate549
