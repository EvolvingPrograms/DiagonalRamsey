import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate628
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(109184220851/500000000000 : ℚ), (8308320010723/5000000000 : ℚ), (-363328859557023/1000000000000 : ℚ), 13⟩,
    ⟨(43752256617/200000000000 : ℚ), (1819921690793/10000000000 : ℚ), (-8021646044071/200000000000 : ℚ), 9⟩,
    ⟨(219543182573/1000000000000 : ℚ), (639325992969/10000000000 : ℚ), (-2850076411607/200000000000 : ℚ), 8⟩,
    ⟨(220706610047/1000000000000 : ℚ), (78871763993/2500000000 : ℚ), (-3563015038549/500000000000 : ℚ), 7⟩,
    ⟨(44448072213/200000000000 : ℚ), (9151008327/500000000 : ℚ), (-2096958582589/500000000000 : ℚ), 6⟩,
    ⟨(44825932953/200000000000 : ℚ), (116467443331/10000000000 : ℚ), (-1354694135213/500000000000 : ℚ), 6⟩,
    ⟨(5658908153/25000000000 : ℚ), (19631629851/2500000000 : ℚ), (-463814255137/250000000000 : ℚ), 5⟩,
    ⟨(45779780233/200000000000 : ℚ), (54958293249/10000000000 : ℚ), (-329764458307/250000000000 : ℚ), 5⟩,
    ⟨(231732903511/1000000000000 : ℚ), (19689040309/5000000000 : ℚ), (-120049862471/125000000000 : ℚ), 5⟩,
    ⟨(234831040167/1000000000000 : ℚ), (28579763929/10000000000 : ℚ), (-354306143973/500000000000 : ℚ), 4⟩,
    ⟨(238163474383/1000000000000 : ℚ), (1300736387/625000000 : ℚ), (-524983140417/1000000000000 : ℚ), 4⟩,
    ⟨(48339622599/200000000000 : ℚ), (15052708237/10000000000 : ℚ), (-386862496881/1000000000000 : ℚ), 4⟩,
    ⟨(245400915503/1000000000000 : ℚ), (2668778027/2500000000 : ℚ), (-11211492529/40000000000 : ℚ), 4⟩,
    ⟨(124618110947/500000000000 : ℚ), (7276922239/10000000000 : ℚ), (-39254686153/200000000000 : ℚ), 4⟩,
    ⟨(253167096069/1000000000000 : ℚ), (114782423/250000000 : ℚ), (-64415876219/500000000000 : ℚ), 4⟩,
    ⟨(257155681563/1000000000000 : ℚ), (2435868059/10000000000 : ℚ), (-73849457959/1000000000000 : ℚ), 3⟩,
    ⟨(261163566117/1000000000000 : ℚ), (21339703/312500000 : ℚ), (-2843057427/100000000000 : ℚ), 3⟩,
    ⟨(265152151611/1000000000000 : ℚ), (-23722221/312500000 : ℚ), (9507659259/1000000000000 : ℚ), 3⟩,
    ⟨(269083025787/1000000000000 : ℚ), (-489166131/2500000000 : ℚ), (41490069339/1000000000000 : ℚ), 3⟩,
    ⟨(272918332177/1000000000000 : ℚ), (-369879179/1250000000 : ℚ), (34324849831/500000000000 : ℚ), 3⟩,
    ⟨(55324226937/200000000000 : ℚ), (-237693751/625000000 : ℚ), (91838741767/1000000000000 : ℚ), 3⟩,
    ⟨(140077886649/500000000000 : ℚ), (-282298617/625000000 : ℚ), (27926078783/250000000000 : ℚ), 3⟩,
    ⟨(141744103757/500000000000 : ℚ), (-204854733/400000000 : ℚ), (16092665457/125000000000 : ℚ), 3⟩,
    ⟨(28658634417/100000000000 : ℚ), (-1408306603/2500000000 : ℚ), (17916254407/125000000000 : ℚ), 3⟩,
    ⟨(72355086629/250000000000 : ℚ), (-303247879/500000000 : ℚ), (155763271247/1000000000000 : ℚ), 3⟩,
    ⟨(7299073039/25000000000 : ℚ), (-1285257853/2000000000 : ℚ), (41566597969/250000000000 : ℚ), 3⟩,
    ⟨(73547395729/250000000000 : ℚ), (-6724712911/10000000000 : ℚ), (35002436953/200000000000 : ℚ), 3⟩,
    ⟨(37009860827/125000000000 : ℚ), (-6965960683/10000000000 : ℚ), (45533016829/250000000000 : ℚ), 3⟩,
    ⟨(297612637633/1000000000000 : ℚ), (-1788590127/2500000000 : ℚ), (93862277073/500000000000 : ℚ), 3⟩,
    ⟨(298776065107/1000000000000 : ℚ), (-7293099209/10000000000 : ℚ), (191861629973/1000000000000 : ℚ), 3⟩,
    ⟨(74889491149/250000000000 : ℚ), (-3692207027/5000000000 : ℚ), (194593459073/1000000000000 : ℚ), 3⟩,
    ⟨(149975402989/500000000000 : ℚ), (-1485945281/2000000000 : ℚ), (6123491107/31250000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-929421809/1250000000 : ℚ), (39224228709/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (392004486461/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control628.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control628.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate628
