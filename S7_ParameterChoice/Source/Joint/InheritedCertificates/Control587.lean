import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate587
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(70361011253/250000000000 : ℚ), (3931696721007/2500000000 : ℚ), (-443274360296019/1000000000000 : ℚ), 12⟩,
    ⟨(282014580309/1000000000000 : ℚ), (1721633734469/10000000000 : ℚ), (-24480295688739/500000000000 : ℚ), 9⟩,
    ⟨(141575078167/500000000000 : ℚ), (604575081001/10000000000 : ℚ), (-8707666984241/500000000000 : ℚ), 8⟩,
    ⟨(284839836871/1000000000000 : ℚ), (59667882253/2000000000 : ℚ), (-8724095485857/1000000000000 : ℚ), 7⟩,
    ⟨(71766837343/250000000000 : ℚ), (10823337147/625000000 : ℚ), (-2573616134339/500000000000 : ℚ), 6⟩,
    ⟨(144905620837/500000000000 : ℚ), (110353426233/10000000000 : ℚ), (-1668197211723/500000000000 : ℚ), 6⟩,
    ⟨(58609017719/200000000000 : ℚ), (18646397131/2500000000 : ℚ), (-1147326019829/500000000000 : ℚ), 5⟩,
    ⟨(14836887321/50000000000 : ℚ), (26200172443/5000000000 : ℚ), (-328162074239/200000000000 : ℚ), 5⟩,
    ⟨(75213413209/250000000000 : ℚ), (37759634991/10000000000 : ℚ), (-1203596288777/1000000000000 : ℚ), 4⟩,
    ⟨(61070633883/200000000000 : ℚ), (13816159309/5000000000 : ℚ), (-179359253659/200000000000 : ℚ), 4⟩,
    ⟨(38774120419/125000000000 : ℚ), (2036300467/1000000000 : ℚ), (-67317779131/100000000000 : ℚ), 4⟩,
    ⟨(157663212393/500000000000 : ℚ), (1873340821/1250000000 : ℚ), (-252553859583/500000000000 : ℚ), 4⟩,
    ⟨(80176028919/250000000000 : ℚ), (340968507/312500000 : ℚ), (-187774516113/500000000000 : ℚ), 4⟩,
    ⟨(326274245921/1000000000000 : ℚ), (7756293967/10000000000 : ℚ), (-17096149413/62500000000 : ℚ), 3⟩,
    ⟨(8299579303/25000000000 : ℚ), (5270883903/10000000000 : ℚ), (-191765924227/1000000000000 : ℚ), 3⟩,
    ⟨(168887957097/500000000000 : ℚ), (656557661/2000000000 : ℚ), (-125210335129/1000000000000 : ℚ), 3⟩,
    ⟨(343596684869/1000000000000 : ℚ), (417893371/2500000000 : ℚ), (-70334400307/1000000000000 : ℚ), 3⟩,
    ⟨(349389426943/1000000000000 : ℚ), (17554857/500000000 : ℚ), (-24592547991/1000000000000 : ℚ), 3⟩,
    ⟨(177549176571/500000000000 : ℚ), (-185344159/2500000000 : ℚ), (694028069/50000000000 : ℚ), 3⟩,
    ⟨(180334241693/500000000000 : ℚ), (-1652243671/10000000000 : ℚ), (11618174951/250000000000 : ℚ), 3⟩,
    ⟨(366046174277/1000000000000 : ℚ), (-2416262689/10000000000 : ℚ), (3711467469/50000000000 : ℚ), 3⟩,
    ⟨(371179635711/1000000000000 : ℚ), (-382469403/1250000000 : ℚ), (97946073713/1000000000000 : ℚ), 3⟩,
    ⟨(376019429647/1000000000000 : ℚ), (-3602826113/10000000000 : ℚ), (59116451843/500000000000 : ℚ), 3⟩,
    ⟨(190259473113/500000000000 : ℚ), (-81218633/200000000 : ℚ), (67780033309/500000000000 : ℚ), 3⟩,
    ⟨(384634852643/1000000000000 : ℚ), (-1111501117/2500000000 : ℚ), (150291027273/1000000000000 : ℚ), 3⟩,
    ⟨(97081877617/250000000000 : ℚ), (-953454287/2000000000 : ℚ), (162706729649/1000000000000 : ℚ), 3⟩,
    ⟨(97890339347/250000000000 : ℚ), (-157245469/312500000 : ℚ), (86511809697/500000000000 : ℚ), 3⟩,
    ⟨(394305249691/1000000000000 : ℚ), (-13113047/25000000 : ℚ), (36281434037/200000000000 : ℚ), 3⟩,
    ⟨(24783297637/62500000000 : ℚ), (-5411498713/10000000000 : ℚ), (93991041499/500000000000 : ℚ), 3⟩,
    ⟨(398222442729/1000000000000 : ℚ), (-691718477/1250000000 : ℚ), (192839942769/1000000000000 : ℚ), 3⟩,
    ⟨(199679009377/500000000000 : ℚ), (-5614114259/10000000000 : ℚ), (306320101/1562500000 : ℚ), 3⟩,
    ⟨(7998571081/20000000000 : ℚ), (-1130793039/2000000000 : ℚ), (197637478873/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-565893117/1000000000 : ℚ), (197836100157/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (84428302063/250000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control587.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control587.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate587
