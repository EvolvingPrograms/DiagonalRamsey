import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate445
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49678454107/200000000000 : ℚ), (12201108773253/10000000000 : ℚ), (-303708839939311/1000000000000 : ℚ), 12⟩,
    ⟨(15570116453/62500000000 : ℚ), (1331431401603/10000000000 : ℚ), (-1342740758033/40000000000 : ℚ), 9⟩,
    ⟨(250574022297/1000000000000 : ℚ), (116405612937/2500000000 : ℚ), (-5978571534141/500000000000 : ℚ), 7⟩,
    ⟨(252734762597/1000000000000 : ℚ), (57197473889/2500000000 : ℚ), (-6002796728731/1000000000000 : ℚ), 6⟩,
    ⟨(255583275037/1000000000000 : ℚ), (4133801601/312500000 : ℚ), (-3552231896951/1000000000000 : ℚ), 6⟩,
    ⟨(129546063443/500000000000 : ℚ), (42012478687/5000000000 : ℚ), (-115576381053/50000000000 : ℚ), 5⟩,
    ⟨(131613762991/500000000000 : ℚ), (56667975677/10000000000 : ℚ), (-199712088011/125000000000 : ℚ), 5⟩,
    ⟨(26794964617/100000000000 : ℚ), (19890743441/5000000000 : ℚ), (-229917218503/200000000000 : ℚ), 4⟩,
    ⟨(136606505427/500000000000 : ℚ), (28695481109/10000000000 : ℚ), (-849858351001/1000000000000 : ℚ), 4⟩,
    ⟨(34870866369/125000000000 : ℚ), (10534370457/5000000000 : ℚ), (-159862525311/250000000000 : ℚ), 4⟩,
    ⟨(28515599307/100000000000 : ℚ), (15624741067/10000000000 : ℚ), (-486004117369/1000000000000 : ℚ), 3⟩,
    ⟨(72930148289/250000000000 : ℚ), (1452601533/1250000000 : ℚ), (-3705911943/10000000000 : ℚ), 3⟩,
    ⟨(298597510521/1000000000000 : ℚ), (8601999981/10000000000 : ℚ), (-140771040087/500000000000 : ℚ), 3⟩,
    ⟨(152860258347/500000000000 : ℚ), (6277669133/10000000000 : ℚ), (-105674566183/500000000000 : ℚ), 3⟩,
    ⟨(31302101323/100000000000 : ℚ), (1113902521/2500000000 : ℚ), (-31001631549/200000000000 : ℚ), 3⟩,
    ⟨(160214346179/500000000000 : ℚ), (3004964061/10000000000 : ℚ), (-54541606447/500000000000 : ℚ), 3⟩,
    ⟨(81968053519/250000000000 : ℚ), (1834426937/10000000000 : ℚ), (-71155316583/1000000000000 : ℚ), 3⟩,
    ⟨(83819973301/250000000000 : ℚ), (878946411/10000000000 : ℚ), (-2467809709/62500000000 : ℚ), 3⟩,
    ⟨(17129019487/50000000000 : ℚ), (45668379/5000000000 : ℚ), (-4095551/320000000 : ℚ), 3⟩,
    ⟨(349703395913/1000000000000 : ℚ), (-281578517/5000000000 : ℚ), (1970055837/200000000000 : ℚ), 3⟩,
    ⟨(178290156639/500000000000 : ℚ), (-1110470829/10000000000 : ℚ), (116695877/4000000000 : ℚ), 2⟩,
    ⟨(90786228341/250000000000 : ℚ), (-1570173361/10000000000 : ℚ), (22856958957/500000000000 : ℚ), 2⟩,
    ⟨(184666987741/500000000000 : ℚ), (-391432641/2000000000 : ℚ), (59884893429/1000000000000 : ℚ), 2⟩,
    ⟨(18754394779/50000000000 : ℚ), (-2282863273/10000000000 : ℚ), (36003177879/500000000000 : ℚ), 2⟩,
    ⟨(47543907533/125000000000 : ℚ), (-1278037111/5000000000 : ℚ), (82325104897/1000000000000 : ℚ), 2⟩,
    ⟨(385073380453/1000000000000 : ℚ), (-278359199/1000000000 : ℚ), (22757968913/250000000000 : ℚ), 2⟩,
    ⟨(97302194887/250000000000 : ℚ), (-1485329639/5000000000 : ℚ), (491368239/5000000000 : ℚ), 2⟩,
    ⟨(392717631397/1000000000000 : ℚ), (-78032449/250000000 : ℚ), (20832571747/200000000000 : ℚ), 2⟩,
    ⟨(395566143837/1000000000000 : ℚ), (-809638601/2500000000 : ℚ), (27196080817/250000000000 : ℚ), 2⟩,
    ⟨(397726884137/1000000000000 : ℚ), (-415584951/1250000000 : ℚ), (112200406959/1000000000000 : ℚ), 2⟩,
    ⟨(199589521593/500000000000 : ℚ), (-3381259167/10000000000 : ℚ), (114454823847/1000000000000 : ℚ), 2⟩,
    ⟨(399908635899/1000000000000 : ℚ), (-3409303249/10000000000 : ℚ), (115575306321/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1706398687/5000000000 : ℚ), (115715055359/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (361687049337/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control445.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control445.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate445
