import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate201
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267436561963/1000000000000 : ℚ), (2865914285911/2500000000 : ℚ), (-38422771511079/125000000000 : ℚ), 11⟩,
    ⟨(134205686237/500000000000 : ℚ), (1247848633901/10000000000 : ℚ), (-6798175269567/200000000000 : ℚ), 8⟩,
    ⟨(270351605539/1000000000000 : ℚ), (434973545133/10000000000 : ℚ), (-2423897354823/200000000000 : ℚ), 7⟩,
    ⟨(68309643913/250000000000 : ℚ), (213005283389/10000000000 : ℚ), (-95212228661/15625000000 : ℚ), 6⟩,
    ⟨(8657639991/31250000000 : ℚ), (61384336043/5000000000 : ℚ), (-903413381359/250000000000 : ℚ), 5⟩,
    ⟨(17608291549/62500000000 : ℚ), (4861345569/625000000 : ℚ), (-2358167749933/1000000000000 : ℚ), 4⟩,
    ⟨(143628990541/500000000000 : ℚ), (13091744067/2500000000 : ℚ), (-1635913868717/1000000000000 : ℚ), 4⟩,
    ⟨(29356721679/100000000000 : ℚ), (2296329849/625000000 : ℚ), (-1182591206583/1000000000000 : ℚ), 4⟩,
    ⟨(150299805259/500000000000 : ℚ), (828976261/312500000 : ℚ), (-219861454831/250000000000 : ℚ), 3⟩,
    ⟨(38535929559/125000000000 : ℚ), (19532763803/10000000000 : ℚ), (-166674927383/250000000000 : ℚ), 3⟩,
    ⟨(79139164171/250000000000 : ℚ), (910259763/625000000 : ℚ), (-511603156423/1000000000000 : ℚ), 3⟩,
    ⟨(325327634043/1000000000000 : ℚ), (10928001717/10000000000 : ℚ), (-98749208333/250000000000 : ℚ), 3⟩,
    ⟨(83628974811/250000000000 : ℚ), (8200281263/10000000000 : ℚ), (-305069477913/1000000000000 : ℚ), 3⟩,
    ⟨(86008241067/250000000000 : ℚ), (3055341047/5000000000 : ℚ), (-117111082427/500000000000 : ℚ), 3⟩,
    ⟨(353787174577/1000000000000 : ℚ), (4480850057/10000000000 : ℚ), (-88695026873/500000000000 : ℚ), 2⟩,
    ⟨(72736918359/200000000000 : ℚ), (3189668281/10000000000 : ℚ), (-16386971747/125000000000 : ℚ), 2⟩,
    ⟨(186814949191/500000000000 : ℚ), (1076429309/5000000000 : ℚ), (-3715653503/40000000000 : ℚ), 2⟩,
    ⟨(383527315599/1000000000000 : ℚ), (81908897/625000000 : ℚ), (-61016426483/1000000000000 : ℚ), 2⟩,
    ⟨(393281525909/1000000000000 : ℚ), (309703733/5000000000 : ℚ), (-17091100429/500000000000 : ℚ), 2⟩,
    ⟨(402798590933/1000000000000 : ℚ), (9527511/2000000000 : ℚ), (-457221919/40000000000 : ℚ), 2⟩,
    ⟨(411986856133/1000000000000 : ℚ), (-428451927/10000000000 : ℚ), (3979948891/500000000000 : ℚ), 2⟩,
    ⟨(105189458373/250000000000 : ℚ), (-826692921/10000000000 : ℚ), (12268965781/500000000000 : ℚ), 2⟩,
    ⟨(53628381713/125000000000 : ℚ), (-1160638381/10000000000 : ℚ), (1936224583/50000000000 : ℚ), 2⟩,
    ⟨(218357439829/500000000000 : ℚ), (-57626671/400000000 : ℚ), (50844378293/1000000000000 : ℚ), 2⟩,
    ⟨(443747273387/1000000000000 : ℚ), (-83738429/500000000 : ℚ), (7643639971/125000000000 : ℚ), 2⟩,
    ⟨(225028254547/500000000000 : ℚ), (-1869113229/10000000000 : ℚ), (34916843693/500000000000 : ℚ), 2⟩,
    ⟨(28473864087/62500000000 : ℚ), (-2028461873/10000000000 : ℚ), (77048858021/1000000000000 : ℚ), 2⟩,
    ⟨(14383437827/31250000000 : ℚ), (-1078234951/5000000000 : ℚ), (82910431047/1000000000000 : ℚ), 2⟩,
    ⟨(18563036581/40000000000 : ℚ), (-2255909167/10000000000 : ℚ), (8750612247/100000000000 : ℚ), 2⟩,
    ⟨(466962884637/1000000000000 : ℚ), (-465766083/2000000000 : ℚ), (45450348751/500000000000 : ℚ), 2⟩,
    ⟨(234451558851/500000000000 : ℚ), (-297084997/1250000000 : ℚ), (18627944329/200000000000 : ℚ), 2⟩,
    ⟨(469877928213/1000000000000 : ℚ), (-9601521/40000000 : ℚ), (11781523523/125000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1201666189/5000000000 : ℚ), (47195460093/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (4658568343/15625000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control201.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control201.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate201
