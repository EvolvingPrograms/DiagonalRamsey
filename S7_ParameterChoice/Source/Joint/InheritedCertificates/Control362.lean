import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate362
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118313301397/500000000000 : ℚ), (2594744763777/2000000000 : ℚ), (-307638808802347/1000000000000 : ℚ), 12⟩,
    ⟨(237316568841/1000000000000 : ℚ), (1415795112927/10000000000 : ℚ), (-17000359240573/500000000000 : ℚ), 9⟩,
    ⟨(119344928093/500000000000 : ℚ), (247567395649/5000000000 : ℚ), (-12109505065203/1000000000000 : ℚ), 7⟩,
    ⟨(240733239319/1000000000000 : ℚ), (15205272249/625000000 : ℚ), (-607803993221/100000000000 : ℚ), 6⟩,
    ⟨(48685407869/200000000000 : ℚ), (14064822867/1000000000 : ℚ), (-3595715231439/1000000000000 : ℚ), 5⟩,
    ⟨(30843164187/125000000000 : ℚ), (89321963023/10000000000 : ℚ), (-584727047137/250000000000 : ℚ), 5⟩,
    ⟨(250656104979/1000000000000 : ℚ), (60220829871/10000000000 : ℚ), (-807894034641/500000000000 : ℚ), 4⟩,
    ⟨(127560875367/500000000000 : ℚ), (42254630741/10000000000 : ℚ), (-580910111879/500000000000 : ℚ), 4⟩,
    ⟨(260099244151/1000000000000 : ℚ), (6091451863/2000000000 : ℚ), (-85814783293/100000000000 : ℚ), 4⟩,
    ⟨(8298145289/31250000000 : ℚ), (5584746829/2500000000 : ℚ), (-128988558843/200000000000 : ℚ), 4⟩,
    ⟨(135696781159/500000000000 : ℚ), (4135569151/2500000000 : ℚ), (-489429105743/1000000000000 : ℚ), 3⟩,
    ⟨(27760161661/100000000000 : ℚ), (3069326113/2500000000 : ℚ), (-186216414239/500000000000 : ℚ), 3⟩,
    ⟨(142052512583/500000000000 : ℚ), (9060220811/10000000000 : ℚ), (-881669263/3125000000 : ℚ), 3⟩,
    ⟨(284024567/976562500 : ℚ), (6581929091/10000000000 : ℚ), (-26366124367/125000000000 : ℚ), 3⟩,
    ⟨(297745138307/1000000000000 : ℚ), (579751553/1250000000 : ℚ), (-76874622933/500000000000 : ℚ), 3⟩,
    ⟨(152375240573/500000000000 : ℚ), (1544653061/5000000000 : ℚ), (-21423112391/200000000000 : ℚ), 3⟩,
    ⟨(311789719843/1000000000000 : ℚ), (919358591/5000000000 : ℚ), (-68578861879/1000000000000 : ℚ), 3⟩,
    ⟨(159397531341/500000000000 : ℚ), (408537933/5000000000 : ℚ), (-142103313/3906250000 : ℚ), 3⟩,
    ⟨(325699044381/1000000000000 : ℚ), (-25783101/10000000000 : ℚ), (-9225728603/1000000000000 : ℚ), 2⟩,
    ⟨(332435175823/1000000000000 : ℚ), (-4542517/62500000 : ℚ), (1383658423/100000000000 : ℚ), 2⟩,
    ⟨(338938584379/1000000000000 : ℚ), (-1313545647/10000000000 : ℚ), (1341139731/40000000000 : ℚ), 2⟩,
    ⟨(345146638671/1000000000000 : ℚ), (-1806802847/10000000000 : ℚ), (25198471207/500000000000 : ℚ), 2⟩,
    ⟨(350999551741/1000000000000 : ℚ), (-1111199541/5000000000 : ℚ), (32430297161/500000000000 : ℚ), 2⟩,
    ⟨(178220478419/500000000000 : ℚ), (-128623193/500000000 : ℚ), (77241633037/1000000000000 : ℚ), 2⟩,
    ⟨(72283690051/200000000000 : ℚ), (-286633949/1000000000 : ℚ), (87788731457/1000000000000 : ℚ), 2⟩,
    ⟨(36588409601/100000000000 : ℚ), (-311123813/1000000000 : ℚ), (48346941093/500000000000 : ℚ), 2⟩,
    ⟨(369794887493/1000000000000 : ℚ), (-828180529/2500000000 : ℚ), (416419539/4000000000 : ℚ), 2⟩,
    ⟨(93278290411/250000000000 : ℚ), (-3475057547/10000000000 : ℚ), (110134690701/1000000000000 : ℚ), 2⟩,
    ⟨(37580696167/100000000000 : ℚ), (-720295031/2000000000 : ℚ), (57434210623/500000000000 : ℚ), 2⟩,
    ⟨(377850344803/1000000000000 : ℚ), (-3694361813/10000000000 : ℚ), (118368613803/1000000000000 : ℚ), 2⟩,
    ⟨(379223632147/1000000000000 : ℚ), (-46942483/125000000 : ℚ), (1508488387/12500000000 : ℚ), 2⟩,
    ⟨(75982719639/200000000000 : ℚ), (-3785656583/10000000000 : ℚ), (121827565933/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3789426757/10000000000 : ℚ), (121970816283/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (341836975833/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control362.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control362.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate362
