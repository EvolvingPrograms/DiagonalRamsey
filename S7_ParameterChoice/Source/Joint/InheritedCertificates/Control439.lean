import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate439
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(72731066713/250000000000 : ℚ), (12815643206531/10000000000 : ℚ), (-93398458891087/250000000000 : ℚ), 12⟩,
    ⟨(36467240261/125000000000 : ℚ), (349837995449/2500000000 : ℚ), (-41295278453889/1000000000000 : ℚ), 9⟩,
    ⟨(146678698307/500000000000 : ℚ), (244908592829/5000000000 : ℚ), (-14711278502537/1000000000000 : ℚ), 7⟩,
    ⟨(147883547003/500000000000 : ℚ), (240941799811/10000000000 : ℚ), (-3693483808793/500000000000 : ℚ), 6⟩,
    ⟨(298943807561/1000000000000 : ℚ), (139482155843/10000000000 : ℚ), (-4372680822677/1000000000000 : ℚ), 6⟩,
    ⟨(30285694379/100000000000 : ℚ), (88723747483/10000000000 : ℚ), (-569334828077/200000000000 : ℚ), 5⟩,
    ⟨(153734408527/500000000000 : ℚ), (1498315423/250000000 : ℚ), (-1968806936963/1000000000000 : ℚ), 5⟩,
    ⟨(312735012489/1000000000000 : ℚ), (42150970001/10000000000 : ℚ), (-1417834919013/1000000000000 : ℚ), 4⟩,
    ⟨(318604813757/1000000000000 : ℚ), (15235606849/5000000000 : ℚ), (-524710272239/500000000000 : ℚ), 4⟩,
    ⟨(325021691463/1000000000000 : ℚ), (11216227003/5000000000 : ℚ), (-39545431583/50000000000 : ℚ), 4⟩,
    ⟨(66384769513/200000000000 : ℚ), (4173130823/2500000000 : ℚ), (-602494768741/1000000000000 : ℚ), 3⟩,
    ⟨(339244810527/1000000000000 : ℚ), (12470279527/10000000000 : ℚ), (-36871353/80000000 : ℚ), 3⟩,
    ⟨(13876563019/40000000000 : ℚ), (928698699/1000000000 : ℚ), (-351743061363/1000000000000 : ℚ), 3⟩,
    ⟨(70971556639/200000000000 : ℚ), (3418326801/5000000000 : ℚ), (-53161998577/200000000000 : ℚ), 3⟩,
    ⟨(181499715719/500000000000 : ℚ), (4916783211/10000000000 : ℚ), (-196933577791/1000000000000 : ℚ), 3⟩,
    ⟨(371260611681/1000000000000 : ℚ), (42367621/125000000 : ℚ), (-35220853503/250000000000 : ℚ), 3⟩,
    ⟨(379561764243/1000000000000 : ℚ), (539546453/2500000000 : ℚ), (-94679720871/1000000000000 : ℚ), 3⟩,
    ⟨(193911472243/500000000000 : ℚ), (57719901/500000000 : ℚ), (-438892421/7812500000 : ℚ), 3⟩,
    ⟨(395964592729/1000000000000 : ℚ), (164074677/5000000000 : ℚ), (-23807628883/1000000000000 : ℚ), 3⟩,
    ⟨(12622134389/31250000000 : ℚ), (-178678689/5000000000 : ℚ), (3601321347/1000000000000 : ℚ), 2⟩,
    ⟨(102894391349/250000000000 : ℚ), (-464809363/5000000000 : ℚ), (26929851997/1000000000000 : ℚ), 2⟩,
    ⟨(418898528359/1000000000000 : ℚ), (-140941063/1000000000 : ℚ), (46849060953/1000000000000 : ℚ), 2⟩,
    ⟨(425800684461/1000000000000 : ℚ), (-1812574493/10000000000 : ℚ), (31937083289/500000000000 : ℚ), 2⟩,
    ⟨(216108781083/500000000000 : ℚ), (-2151274843/10000000000 : ℚ), (78403006391/1000000000000 : ℚ), 2⟩,
    ⟨(219043681717/500000000000 : ℚ), (-304362279/1250000000 : ℚ), (5671488089/62500000000 : ℚ), 2⟩,
    ⟨(44335355887/100000000000 : ℚ), (-2670704033/10000000000 : ℚ), (6320970447/62500000000 : ℚ), 2⟩,
    ⟨(447965432133/1000000000000 : ℚ), (-2864300549/10000000000 : ℚ), (10976290119/100000000000 : ℚ), 2⟩,
    ⟨(225939284181/500000000000 : ℚ), (-3019995831/10000000000 : ℚ), (11676772951/100000000000 : ℚ), 2⟩,
    ⟨(455055281917/1000000000000 : ℚ), (-3141056849/10000000000 : ℚ), (122257324489/1000000000000 : ℚ), 2⟩,
    ⟨(457464979309/1000000000000 : ℚ), (-1614949999/5000000000 : ℚ), (15788854113/125000000000 : ℚ), 2⟩,
    ⟨(114771113459/250000000000 : ℚ), (-3288228723/10000000000 : ℚ), (128983876259/1000000000000 : ℚ), 2⟩,
    ⟨(459898109071/1000000000000 : ℚ), (-1658564443/5000000000 : ℚ), (65155905863/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1660364581/5000000000 : ℚ), (65238703039/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (329859803331/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control439.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control439.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate439
