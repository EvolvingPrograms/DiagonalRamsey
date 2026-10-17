import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate274
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(290608372033/1000000000000 : ℚ), (1675518508967/1250000000 : ℚ), (-78074610085803/200000000000 : ℚ), 11⟩,
    ⟨(145735835593/500000000000 : ℚ), (1462702451511/10000000000 : ℚ), (-8630987365743/200000000000 : ℚ), 8⟩,
    ⟨(5863799109/20000000000 : ℚ), (511573152369/10000000000 : ℚ), (-15377382146673/1000000000000 : ℚ), 7⟩,
    ⟨(295746676809/1000000000000 : ℚ), (125713516343/5000000000 : ℚ), (-3862122993543/500000000000 : ℚ), 6⟩,
    ⟨(74779303159/250000000000 : ℚ), (29086890521/2000000000 : ℚ), (-4574650562029/1000000000000 : ℚ), 5⟩,
    ⟨(303269102831/1000000000000 : ℚ), (4622342763/500000000 : ℚ), (-2980159127853/1000000000000 : ℚ), 5⟩,
    ⟨(308162362421/1000000000000 : ℚ), (15604240243/2500000000 : ℚ), (-1031454169693/500000000000 : ℚ), 4⟩,
    ⟨(313749866641/1000000000000 : ℚ), (2743004201/625000000 : ℚ), (-1487228666661/1000000000000 : ℚ), 4⟩,
    ⟨(319977804771/1000000000000 : ℚ), (3173020337/1000000000 : ℚ), (-1102300280779/1000000000000 : ℚ), 4⟩,
    ⟨(163393099181/500000000000 : ℚ), (23371617129/10000000000 : ℚ), (-832204406033/1000000000000 : ℚ), 3⟩,
    ⟨(334109478863/1000000000000 : ℚ), (17410111117/10000000000 : ℚ), (-158837086943/250000000000 : ℚ), 3⟩,
    ⟨(170938559539/500000000000 : ℚ), (6514954919/5000000000 : ℚ), (-97479759233/200000000000 : ℚ), 3⟩,
    ⟨(175007156193/500000000000 : ℚ), (4865637313/5000000000 : ℚ), (-186676924333/500000000000 : ℚ), 3⟩,
    ⟨(358442693167/1000000000000 : ℚ), (3597478413/5000000000 : ℚ), (-141780302669/500000000000 : ℚ), 3⟩,
    ⟨(91770272877/250000000000 : ℚ), (260490793/500000000 : ℚ), (-211583853753/1000000000000 : ℚ), 3⟩,
    ⟨(375846314909/1000000000000 : ℚ), (726418939/2000000000 : ℚ), (-76501993653/500000000000 : ℚ), 3⟩,
    ⟨(192326974739/500000000000 : ℚ), (295184749/1250000000 : ℚ), (-2617709399/25000000000 : ℚ), 2⟩,
    ⟨(393419172879/1000000000000 : ℚ), (331619979/2500000000 : ℚ), (-64457538903/1000000000000 : ℚ), 2⟩,
    ⟨(402057571219/1000000000000 : ℚ), (59404223/1250000000 : ℚ), (-30610722123/1000000000000 : ℚ), 2⟩,
    ⟨(410485952001/1000000000000 : ℚ), (-115239181/5000000000 : ℚ), (-1947271549/1000000000000 : ℚ), 2⟩,
    ⟨(418623145309/1000000000000 : ℚ), (-409596023/5000000000 : ℚ), (5613153491/250000000000 : ℚ), 2⟩,
    ⟨(106597696381/250000000000 : ℚ), (-131245273/1000000000 : ℚ), (21644650011/500000000000 : ℚ), 2⟩,
    ⟨(54214258253/125000000000 : ℚ), (-863339303/5000000000 : ℚ), (12220087861/200000000000 : ℚ), 2⟩,
    ⟨(88104491923/200000000000 : ℚ), (-2074471299/10000000000 : ℚ), (7630121447/100000000000 : ℚ), 2⟩,
    ⟨(89350079549/200000000000 : ℚ), (-1182775909/5000000000 : ℚ), (89213358969/1000000000000 : ℚ), 2⟩,
    ⟨(90467580393/200000000000 : ℚ), (-1303718703/5000000000 : ℚ), (10008638817/100000000000 : ℚ), 2⟩,
    ⟨(91446232311/200000000000 : ℚ), (-112237441/400000000 : ℚ), (13639164727/125000000000 : ℚ), 2⟩,
    ⟨(1845532207/4000000000 : ℚ), (-741377541/2500000000 : ℚ), (116442403007/1000000000000 : ℚ), 2⟩,
    ⟨(232376793789/500000000000 : ℚ), (-3089545139/10000000000 : ℚ), (15273242037/125000000000 : ℚ), 2⟩,
    ⟨(58413788617/125000000000 : ℚ), (-3180545963/10000000000 : ℚ), (126426810333/1000000000000 : ℚ), 2⟩,
    ⟨(1172571483/2500000000 : ℚ), (-1620139663/5000000000 : ℚ), (64611663933/500000000000 : ℚ), 2⟩,
    ⟨(234945946177/500000000000 : ℚ), (-3269871827/10000000000 : ℚ), (1044900609/8000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1636779091/5000000000 : ℚ), (32696453729/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (28726964961/100000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control274.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control274.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate274
