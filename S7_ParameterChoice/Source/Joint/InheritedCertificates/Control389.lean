import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate389
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254177304839/1000000000000 : ℚ), (5865017547397/5000000000 : ℚ), (-149412843088753/500000000000 : ℚ), 12⟩,
    ⟨(254975305247/1000000000000 : ℚ), (639566815813/5000000000 : ℚ), (-825850668813/25000000000 : ℚ), 8⟩,
    ⟨(64140905221/250000000000 : ℚ), (223465211277/5000000000 : ℚ), (-11770557585033/1000000000000 : ℚ), 7⟩,
    ⟨(258926955401/1000000000000 : ℚ), (219402858641/10000000000 : ℚ), (-2956040088833/500000000000 : ℚ), 6⟩,
    ⟨(131021274297/500000000000 : ℚ), (63374546969/5000000000 : ℚ), (-1750493017101/500000000000 : ℚ), 5⟩,
    ⟨(265880395599/1000000000000 : ℚ), (80458836451/10000000000 : ℚ), (-570070129731/250000000000 : ℚ), 5⟩,
    ⟨(270403535851/1000000000000 : ℚ), (54242692373/10000000000 : ℚ), (-394492568949/250000000000 : ℚ), 4⟩,
    ⟨(275568409037/1000000000000 : ℚ), (7615709731/2000000000 : ℚ), (-71069095077/62500000000 : ℚ), 4⟩,
    ⟨(281325274603/1000000000000 : ℚ), (5495959299/2000000000 : ℚ), (-168447409213/200000000000 : ℚ), 4⟩,
    ⟨(287618690789/1000000000000 : ℚ), (20197840041/10000000000 : ℚ), (-635251715743/1000000000000 : ℚ), 4⟩,
    ⟨(58877609711/200000000000 : ℚ), (15007100183/10000000000 : ℚ), (-484312758877/1000000000000 : ℚ), 3⟩,
    ⟨(150784077643/500000000000 : ℚ), (2238971061/2000000000 : ℚ), (-370795385689/1000000000000 : ℚ), 3⟩,
    ⟨(30908986263/100000000000 : ℚ), (8324716783/10000000000 : ℚ), (-56643600523/200000000000 : ℚ), 3⟩,
    ⟨(316880732431/1000000000000 : ℚ), (1529517653/2500000000 : ℚ), (-5354843067/25000000000 : ℚ), 3⟩,
    ⟨(324865734357/1000000000000 : ℚ), (4390775901/10000000000 : ℚ), (-79399435099/500000000000 : ℚ), 3⟩,
    ⟨(41620996059/125000000000 : ℚ), (754388757/2500000000 : ℚ), (-113652803339/1000000000000 : ℚ), 3⟩,
    ⟨(341109405833/1000000000000 : ℚ), (955531383/5000000000 : ℚ), (-76375468969/1000000000000 : ℚ), 3⟩,
    ⟨(87302909987/250000000000 : ℚ), (126139339/1250000000 : ℚ), (-45255311233/1000000000000 : ℚ), 3⟩,
    ⟨(357196641873/1000000000000 : ℚ), (16664957/625000000 : ℚ), (-19039197163/1000000000000 : ℚ), 2⟩,
    ⟨(14599500467/40000000000 : ℚ), (-174768721/5000000000 : ℚ), (320433437/100000000000 : ℚ), 2⟩,
    ⟨(186254609509/500000000000 : ℚ), (-13502429/156250000 : ℚ), (22176377813/1000000000000 : ℚ), 2⟩,
    ⟨(379689325749/1000000000000 : ℚ), (-1295870691/10000000000 : ℚ), (1920500837/50000000000 : ℚ), 2⟩,
    ⟨(77291736703/200000000000 : ℚ), (-829440271/5000000000 : ℚ), (1634805733/31250000000 : ℚ), 2⟩,
    ⟨(392752099701/1000000000000 : ℚ), (-982033519/5000000000 : ℚ), (32101255353/500000000000 : ℚ), 2⟩,
    ⟨(99627241317/250000000000 : ℚ), (-2219812847/10000000000 : ℚ), (7431959767/100000000000 : ℚ), 2⟩,
    ⟨(403673838453/1000000000000 : ℚ), (-2432591131/10000000000 : ℚ), (16570663027/200000000000 : ℚ), 2⟩,
    ⟨(81639395741/200000000000 : ℚ), (-1303698141/5000000000 : ℚ), (89948890881/1000000000000 : ℚ), 2⟩,
    ⟨(41203482571/100000000000 : ℚ), (-687015169/2500000000 : ℚ), (95717546777/1000000000000 : ℚ), 2⟩,
    ⟨(51893802363/125000000000 : ℚ), (-2857488129/10000000000 : ℚ), (50121639371/500000000000 : ℚ), 2⟩,
    ⟨(417513753421/1000000000000 : ℚ), (-2937825121/10000000000 : ℚ), (103587921469/1000000000000 : ℚ), 2⟩,
    ⟨(419102069057/1000000000000 : ℚ), (-2990584179/10000000000 : ℚ), (26448715443/250000000000 : ℚ), 2⟩,
    ⟨(83980013893/200000000000 : ℚ), (-1508364607/5000000000 : ℚ), (21378329441/200000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-754996619/2500000000 : ℚ), (26757108981/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (2757340233/7812500000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control389.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control389.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate389
