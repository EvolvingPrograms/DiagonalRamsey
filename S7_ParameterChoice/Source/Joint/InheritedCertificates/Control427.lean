import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate427
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(269901040281/1000000000000 : ℚ), (11815517984987/10000000000 : ℚ), (-319600654433421/1000000000000 : ℚ), 12⟩,
    ⟨(270719619663/1000000000000 : ℚ), (1288999467331/10000000000 : ℚ), (-1104070662749/31250000000 : ℚ), 9⟩,
    ⟨(13617444753/50000000000 : ℚ), (18025752103/400000000 : ℚ), (-2517700849809/200000000000 : ℚ), 7⟩,
    ⟨(274773175659/1000000000000 : ℚ), (55343910479/2500000000 : ℚ), (-158068937073/25000000000 : ℚ), 6⟩,
    ⟨(277969114313/1000000000000 : ℚ), (127981151779/10000000000 : ℚ), (-3744078909387/1000000000000 : ℚ), 5⟩,
    ⟨(140952966193/500000000000 : ℚ), (81301536833/10000000000 : ℚ), (-2438560177143/1000000000000 : ℚ), 5⟩,
    ⟨(143272858083/500000000000 : ℚ), (6856569821/1250000000 : ℚ), (-1687488866211/1000000000000 : ℚ), 5⟩,
    ⟨(291843782001/1000000000000 : ℚ), (7707348269/2000000000 : ℚ), (-1216051276853/1000000000000 : ℚ), 4⟩,
    ⟨(297749106621/1000000000000 : ℚ), (27833128363/10000000000 : ℚ), (-225192935503/250000000000 : ℚ), 4⟩,
    ⟨(304204818519/1000000000000 : ℚ), (20475527181/10000000000 : ℚ), (-679496686837/1000000000000 : ℚ), 4⟩,
    ⟨(311148745663/1000000000000 : ℚ), (951781843/625000000 : ℚ), (-129543878201/250000000000 : ℚ), 3⟩,
    ⟨(159257007119/500000000000 : ℚ), (454937659/400000000 : ℚ), (-99221980747/250000000000 : ℚ), 3⟩,
    ⟨(326229692681/1000000000000 : ℚ), (211754441/250000000 : ℚ), (-151676605081/500000000000 : ℚ), 3⟩,
    ⟨(334221474791/1000000000000 : ℚ), (3118800579/5000000000 : ℚ), (-229669833879/1000000000000 : ℚ), 3⟩,
    ⟨(342412395337/1000000000000 : ℚ), (89796727/200000000 : ℚ), (-10660657071/62500000000 : ℚ), 3⟩,
    ⟨(350723571277/1000000000000 : ℚ), (775090599/2500000000 : ℚ), (-61219049049/500000000000 : ℚ), 3⟩,
    ⟨(89768740361/250000000000 : ℚ), (1980917903/10000000000 : ℚ), (-82725439843/1000000000000 : ℚ), 3⟩,
    ⟨(45923267173/125000000000 : ℚ), (534313713/5000000000 : ℚ), (-24800121109/500000000000 : ℚ), 3⟩,
    ⟨(37557705793/100000000000 : ℚ), (15894407/500000000 : ℚ), (-271505207/12500000000 : ℚ), 3⟩,
    ⟨(9589221001/25000000000 : ℚ), (-304888713/10000000000 : ℚ), (1912141441/1000000000000 : ℚ), 2⟩,
    ⟨(391284518483/1000000000000 : ℚ), (-412385353/5000000000 : ℚ), (22049168339/1000000000000 : ℚ), 2⟩,
    ⟨(398649787057/1000000000000 : ℚ), (-25213499/200000000 : ℚ), (9815671991/250000000000 : ℚ), 2⟩,
    ⟨(405593714201/1000000000000 : ℚ), (-1627008199/10000000000 : ℚ), (53991458797/1000000000000 : ℚ), 2⟩,
    ⟨(4120494261/10000000000 : ℚ), (-386964163/2000000000 : ℚ), (2662957533/40000000000 : ℚ), 2⟩,
    ⟨(417954750719/1000000000000 : ℚ), (-87705233/400000000 : ℚ), (9659008621/125000000000 : ℚ), 2⟩,
    ⟨(211626408277/500000000000 : ℚ), (-2407019901/10000000000 : ℚ), (43144346101/500000000000 : ℚ), 2⟩,
    ⟨(85578520067/200000000000 : ℚ), (-161441803/625000000 : ℚ), (3751218201/40000000000 : ℚ), 2⟩,
    ⟨(53978677301/125000000000 : ℚ), (-1362339039/5000000000 : ℚ), (99867460367/1000000000000 : ℚ), 2⟩,
    ⟨(435025357061/1000000000000 : ℚ), (-566960801/2000000000 : ℚ), (20928101719/200000000000 : ℚ), 2⟩,
    ⟨(437449637661/1000000000000 : ℚ), (-364454071/1250000000 : ℚ), (27041626943/250000000000 : ℚ), 2⟩,
    ⟨(439078913057/1000000000000 : ℚ), (-2968704391/10000000000 : ℚ), (5524622141/50000000000 : ℚ), 2⟩,
    ⟨(439897492439/1000000000000 : ℚ), (-46796897/156250000 : ℚ), (27912041011/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-374784683/1250000000 : ℚ), (55896146863/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (88207423723/250000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control427.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control427.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate427
