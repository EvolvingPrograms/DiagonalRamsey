import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate166
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(112682820023/500000000000 : ℚ), (4454729354659/5000000000 : ℚ), (-1259184236901/6250000000 : ℚ), 11⟩,
    ⟨(7076458251/31250000000 : ℚ), (96569163109/1000000000 : ℚ), (-22286308292577/1000000000000 : ℚ), 8⟩,
    ⟨(228598301153/1000000000000 : ℚ), (334673153421/10000000000 : ℚ), (-7951589942093/1000000000000 : ℚ), 6⟩,
    ⟨(231799829967/1000000000000 : ℚ), (162841664357/10000000000 : ℚ), (-50026761457/12500000000 : ℚ), 5⟩,
    ⟨(236020418001/1000000000000 : ℚ), (46624424943/5000000000 : ℚ), (-1188373020739/500000000000 : ℚ), 5⟩,
    ⟨(48243883737/200000000000 : ℚ), (14678193349/2500000000 : ℚ), (-776924326807/500000000000 : ℚ), 4⟩,
    ⟨(247346762801/1000000000000 : ℚ), (1965260129/500000000 : ℚ), (-135052376471/125000000000 : ℚ), 4⟩,
    ⟨(10173737627/40000000000 : ℚ), (2744180487/1000000000 : ℚ), (-78322903947/100000000000 : ℚ), 3⟩,
    ⟨(131071035237/500000000000 : ℚ), (9867234219/5000000000 : ℚ), (-146111010953/250000000000 : ℚ), 3⟩,
    ⟨(270667547131/1000000000000 : ℚ), (14489596637/10000000000 : ℚ), (-111220903407/250000000000 : ℚ), 3⟩,
    ⟨(55967553129/200000000000 : ℚ), (1348384167/1250000000 : ℚ), (-343082902681/1000000000000 : ℚ), 3⟩,
    ⟨(144782205899/500000000000 : ℚ), (1618776509/2000000000 : ℚ), (-53297061343/200000000000 : ℚ), 3⟩,
    ⟨(299753812671/1000000000000 : ℚ), (1217030153/2000000000 : ℚ), (-207351102801/1000000000000 : ℚ), 2⟩,
    ⟨(310307838763/1000000000000 : ℚ), (113863633/250000000 : ℚ), (-160702141437/1000000000000 : ℚ), 2⟩,
    ⟨(160562424517/500000000000 : ℚ), (3366496073/10000000000 : ℚ), (-123221757629/1000000000000 : ℚ), 2⟩,
    ⟨(332100669761/1000000000000 : ℚ), (485871989/2000000000 : ℚ), (-1447409347/15625000000 : ℚ), 2⟩,
    ⟨(343129597791/1000000000000 : ℚ), (839838727/5000000000 : ℚ), (-67338698751/1000000000000 : ℚ), 2⟩,
    ⟨(354105418519/1000000000000 : ℚ), (1072588881/10000000000 : ℚ), (-9237077379/200000000000 : ℚ), 2⟩,
    ⟨(36492242879/100000000000 : ℚ), (57581237/1000000000 : ℚ), (-2833346861/100000000000 : ℚ), 2⟩,
    ⟨(187738227441/500000000000 : ℚ), (16575513/1000000000 : ℚ), (-13158876177/1000000000000 : ℚ), 2⟩,
    ⟨(77133171151/200000000000 : ℚ), (-87529211/5000000000 : ℚ), (-192586179/1000000000000 : ℚ), 2⟩,
    ⟨(98848125477/250000000000 : ℚ), (-91944679/2000000000 : ℚ), (2730377999/250000000000 : ℚ), 2⟩,
    ⟨(404562720421/1000000000000 : ℚ), (-139629783/2000000000 : ℚ), (2045597671/100000000000 : ℚ), 2⟩,
    ⟨(206544098539/500000000000 : ℚ), (-89789301/1000000000 : ℚ), (1144825761/40000000000 : ℚ), 2⟩,
    ⟨(210443413439/500000000000 : ℚ), (-1064754403/10000000000 : ℚ), (7115528327/200000000000 : ℚ), 2⟩,
    ⟨(26742719047/62500000000 : ℚ), (-601598519/5000000000 : ℚ), (20726179831/500000000000 : ℚ), 2⟩,
    ⟨(434010848867/1000000000000 : ℚ), (-131665757/1000000000 : ℚ), (46341558373/1000000000000 : ℚ), 2⟩,
    ⟨(27450615597/62500000000 : ℚ), (-1407769537/10000000000 : ℚ), (25159702677/500000000000 : ℚ), 2⟩,
    ⟨(221715218793/500000000000 : ℚ), (-1478527157/10000000000 : ℚ), (53441984371/1000000000000 : ℚ), 2⟩,
    ⟨(446631966399/1000000000000 : ℚ), (-1530404423/10000000000 : ℚ), (55750644473/1000000000000 : ℚ), 2⟩,
    ⟨(1402448761/3125000000 : ℚ), (-24444379/156250000 : ℚ), (28637221743/500000000000 : ℚ), 2⟩,
    ⟨(449864627507/1000000000000 : ℚ), (-316259399/2000000000 : ℚ), (5803185601/100000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-197924577/1250000000 : ℚ), (58126324711/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (329690669037/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control166.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control166.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate166
