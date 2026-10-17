import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate129
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(234245955167/1000000000000 : ℚ), (9233765516051/10000000000 : ℚ), (-108518834868103/500000000000 : ℚ), 11⟩,
    ⟨(29422561401/125000000000 : ℚ), (1000670404471/10000000000 : ℚ), (-12004468860483/500000000000 : ℚ), 8⟩,
    ⟨(237638637087/1000000000000 : ℚ), (34671510551/1000000000 : ℚ), (-4283300983573/500000000000 : ℚ), 6⟩,
    ⟨(120499322813/500000000000 : ℚ), (168659371151/10000000000 : ℚ), (-862405260663/200000000000 : ℚ), 5⟩,
    ⟨(49085631621/200000000000 : ℚ), (19311675169/2000000000 : ℚ), (-2561099586707/1000000000000 : ℚ), 5⟩,
    ⟨(250884515897/1000000000000 : ℚ), (7598245313/1250000000 : ℚ), (-837345882697/500000000000 : ℚ), 4⟩,
    ⟨(51463034259/200000000000 : ℚ), (8137913701/2000000000 : ℚ), (-291191299251/250000000000 : ℚ), 4⟩,
    ⟨(264658193571/1000000000000 : ℚ), (5681902889/2000000000 : ℚ), (-211176077823/250000000000 : ℚ), 3⟩,
    ⟨(1065792443/3906250000 : ℚ), (638589193/312500000 : ℚ), (-315329058739/500000000000 : ℚ), 3⟩,
    ⟨(14089518197/50000000000 : ℚ), (1876336619/1250000000 : ℚ), (-480416925779/1000000000000 : ℚ), 3⟩,
    ⟨(145707259933/500000000000 : ℚ), (11183680537/10000000000 : ℚ), (-74171146303/200000000000 : ℚ), 3⟩,
    ⟨(37702830913/125000000000 : ℚ), (1680319691/2000000000 : ℚ), (-721115907/2500000000 : ℚ), 3⟩,
    ⟨(62463287281/200000000000 : ℚ), (6327907149/10000000000 : ℚ), (-224849968903/1000000000000 : ℚ), 2⟩,
    ⟨(161696450067/500000000000 : ℚ), (2374447029/5000000000 : ℚ), (-10918929387/62500000000 : ℚ), 2⟩,
    ⟨(83686341523/250000000000 : ℚ), (1762081517/5000000000 : ℚ), (-16803928373/125000000000 : ℚ), 2⟩,
    ⟨(13850580153/40000000000 : ℚ), (1279413173/5000000000 : ℚ), (-101583472537/1000000000000 : ℚ), 2⟩,
    ⟨(17891968887/50000000000 : ℚ), (893595517/5000000000 : ℚ), (-2326064799/31250000000 : ℚ), 2⟩,
    ⟨(23084907217/62500000000 : ℚ), (1162828301/10000000000 : ℚ), (-12936019867/250000000000 : ℚ), 2⟩,
    ⟨(38071098143/100000000000 : ℚ), (130466813/2000000000 : ℚ), (-16303659713/500000000000 : ℚ), 2⟩,
    ⟨(9794686129/25000000000 : ℚ), (231300007/10000000000 : ℚ), (-2043886273/125000000000 : ℚ), 2⟩,
    ⟨(402481234261/1000000000000 : ℚ), (-29587663/2500000000 : ℚ), (-2469691669/1000000000000 : ℚ), 2⟩,
    ⟨(206344680849/500000000000 : ℚ), (-205080981/5000000000 : ℚ), (4710484493/500000000000 : ℚ), 2⟩,
    ⟨(3378508141/8000000000 : ℚ), (-654382157/10000000000 : ℚ), (19615008341/1000000000000 : ℚ), 2⟩,
    ⟨(431261016157/1000000000000 : ℚ), (-858827947/10000000000 : ℚ), (28339001097/1000000000000 : ℚ), 2⟩,
    ⟨(439445687993/1000000000000 : ℚ), (-205899391/2000000000 : ℚ), (17884072211/500000000000 : ℚ), 2⟩,
    ⟨(446788710269/1000000000000 : ℚ), (-1171006883/10000000000 : ℚ), (5254757873/125000000000 : ℚ), 2⟩,
    ⟨(453219365667/1000000000000 : ℚ), (-1286913457/10000000000 : ℚ), (47253526047/1000000000000 : ℚ), 2⟩,
    ⟨(22933786173/50000000000 : ℚ), (-1379942113/10000000000 : ℚ), (25747466477/500000000000 : ℚ), 2⟩,
    ⟨(463105235939/1000000000000 : ℚ), (-1452157207/10000000000 : ℚ), (54823152661/1000000000000 : ℚ), 2⟩,
    ⟨(466465244477/1000000000000 : ℚ), (-94067811/625000000 : ℚ), (447524327/7812500000 : ℚ), 2⟩,
    ⟨(117180847589/250000000000 : ℚ), (-61592057/400000000 : ℚ), (58906422607/1000000000000 : ℚ), 2⟩,
    ⟨(469857926397/1000000000000 : ℚ), (-311398533/2000000000 : ℚ), (5971318987/100000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-155913383/1000000000 : ℚ), (29906904709/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (301328834669/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control129.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control129.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate129
