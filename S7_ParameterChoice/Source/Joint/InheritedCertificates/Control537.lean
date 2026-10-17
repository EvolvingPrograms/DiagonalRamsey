import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate537
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(293256131513/1000000000000 : ℚ), (8142796511239/5000000000 : ℚ), (-478308665847447/1000000000000 : ℚ), 12⟩,
    ⟨(29386607009/100000000000 : ℚ), (1782580223187/10000000000 : ℚ), (-1651128273579/31250000000 : ℚ), 9⟩,
    ⟨(295080073203/1000000000000 : ℚ), (625902717073/10000000000 : ℚ), (-3759629838659/200000000000 : ℚ), 8⟩,
    ⟨(148443224669/500000000000 : ℚ), (308847406001/10000000000 : ℚ), (-235503845479/25000000000 : ℚ), 7⟩,
    ⟨(149633901053/500000000000 : ℚ), (89641441231/5000000000 : ℚ), (-5560681952823/1000000000000 : ℚ), 6⟩,
    ⟨(302201197777/1000000000000 : ℚ), (114270564673/10000000000 : ℚ), (-1803397746059/500000000000 : ℚ), 5⟩,
    ⟨(305658386147/1000000000000 : ℚ), (3090599333/400000000 : ℚ), (-99311450023/40000000000 : ℚ), 5⟩,
    ⟨(309606072603/1000000000000 : ℚ), (54319654899/10000000000 : ℚ), (-177733677601/100000000000 : ℚ), 5⟩,
    ⟨(62801247753/200000000000 : ℚ), (39183089953/10000000000 : ℚ), (-1305639307841/1000000000000 : ℚ), 4⟩,
    ⟨(31881650863/100000000000 : ℚ), (28717228433/10000000000 : ℚ), (-487333572231/500000000000 : ℚ), 4⟩,
    ⟨(323990556667/1000000000000 : ℚ), (2651053731/1250000000 : ℚ), (-73345491069/100000000000 : ℚ), 4⟩,
    ⟨(329478553967/1000000000000 : ℚ), (1957233609/1250000000 : ℚ), (-276092694901/500000000000 : ℚ), 4⟩,
    ⟨(67045529623/200000000000 : ℚ), (11452331479/10000000000 : ℚ), (-412474816783/1000000000000 : ℚ), 3⟩,
    ⟨(341182472191/1000000000000 : ℚ), (1024885663/1250000000 : ℚ), (-18905816233/62500000000 : ℚ), 3⟩,
    ⟨(69457135597/200000000000 : ℚ), (2818822303/5000000000 : ℚ), (-214352144581/1000000000000 : ℚ), 3⟩,
    ⟨(11046202759/31250000000 : ℚ), (718018301/2000000000 : ℚ), (-35658369671/250000000000 : ℚ), 3⟩,
    ⟨(359701262953/1000000000000 : ℚ), (965923411/5000000000 : ℚ), (-4175987949/50000000000 : ℚ), 3⟩,
    ⟨(45736759157/125000000000 : ℚ), (573814361/10000000000 : ℚ), (-34263613191/1000000000000 : ℚ), 3⟩,
    ⟨(7439945581/20000000000 : ℚ), (-548886519/10000000000 : ℚ), (3574222723/500000000000 : ℚ), 3⟩,
    ⟨(188976051563/500000000000 : ℚ), (-296846983/2000000000 : ℚ), (2110735511/50000000000 : ℚ), 3⟩,
    ⟨(191850598637/500000000000 : ℚ), (-567043919/2500000000 : ℚ), (36032126293/500000000000 : ℚ), 3⟩,
    ⟨(194594597287/500000000000 : ℚ), (-182995663/625000000 : ℚ), (24389147291/250000000000 : ℚ), 3⟩,
    ⟨(394363242611/1000000000000 : ℚ), (-1742147841/5000000000 : ℚ), (11935114177/100000000000 : ℚ), 3⟩,
    ⟨(99793378119/250000000000 : ℚ), (-1976631443/5000000000 : ℚ), (8622284907/62500000000 : ℚ), 3⟩,
    ⟨(201786839319/500000000000 : ℚ), (-86943663/200000000 : ℚ), (1537663349/10000000000 : ℚ), 3⟩,
    ⟨(203760682547/500000000000 : ℚ), (-1168902873/2500000000 : ℚ), (167084935263/1000000000000 : ℚ), 3⟩,
    ⟨(51372319183/125000000000 : ℚ), (-2472964003/5000000000 : ℚ), (35629439351/200000000000 : ℚ), 3⟩,
    ⟨(82782389827/200000000000 : ℚ), (-645474709/1250000000 : ℚ), (187132881433/1000000000000 : ℚ), 3⟩,
    ⟨(416293301903/1000000000000 : ℚ), (-333344487/625000000 : ℚ), (24272204573/125000000000 : ℚ), 3⟩,
    ⟨(209049839019/500000000000 : ℚ), (-5458240307/10000000000 : ℚ), (24922651989/125000000000 : ℚ), 2⟩,
    ⟨(419313681151/1000000000000 : ℚ), (-69252687/125000000 : ℚ), (202813534693/1000000000000 : ℚ), 2⟩,
    ⟨(26245226233/62500000000 : ℚ), (-5580856793/10000000000 : ℚ), (204518939951/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-698240127/1250000000 : ℚ), (102365808997/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (307272638297/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control537.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control537.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate537
