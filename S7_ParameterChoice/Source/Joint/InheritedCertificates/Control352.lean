import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate352
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8527913973/31250000000 : ℚ), (6418482127631/5000000000 : ℚ), (-351058462861781/1000000000000 : ℚ), 12⟩,
    ⟨(273697426907/1000000000000 : ℚ), (1400865147267/10000000000 : ℚ), (-7761160597329/200000000000 : ℚ), 8⟩,
    ⟨(137649020879/500000000000 : ℚ), (489953147839/10000000000 : ℚ), (-13825459824309/1000000000000 : ℚ), 7⟩,
    ⟨(277679676893/1000000000000 : ℚ), (120395470541/5000000000 : ℚ), (-3471476600501/500000000000 : ℚ), 6⟩,
    ⟨(56163879173/200000000000 : ℚ), (139263816501/10000000000 : ℚ), (-4110456021023/1000000000000 : ℚ), 5⟩,
    ⟨(142343480731/500000000000 : ℚ), (88501800049/10000000000 : ℚ), (-669111348803/250000000000 : ℚ), 5⟩,
    ⟨(144622563457/500000000000 : ℚ), (29864061383/5000000000 : ℚ), (-925730800231/500000000000 : ℚ), 4⟩,
    ⟨(73612498649/250000000000 : ℚ), (10492574663/2500000000 : ℚ), (-1333638955541/1000000000000 : ℚ), 4⟩,
    ⟨(150125719393/500000000000 : ℚ), (30315068813/10000000000 : ℚ), (-197469366269/200000000000 : ℚ), 4⟩,
    ⟨(306593588407/1000000000000 : ℚ), (2787408279/1250000000 : ℚ), (-93039122953/125000000000 : ℚ), 4⟩,
    ⟨(313415365089/1000000000000 : ℚ), (16579865489/10000000000 : ℚ), (-141783631031/250000000000 : ℚ), 3⟩,
    ⟨(64130214279/200000000000 : ℚ), (6187748583/5000000000 : ℚ), (-86785971279/200000000000 : ℚ), 3⟩,
    ⟨(164115511759/500000000000 : ℚ), (4603743823/5000000000 : ℚ), (-82802264923/250000000000 : ℚ), 3⟩,
    ⟨(168041111187/500000000000 : ℚ), (135400759/200000000 : ℚ), (-15643283107/62500000000 : ℚ), 3⟩,
    ⟨(344129056627/1000000000000 : ℚ), (4860898503/10000000000 : ℚ), (-46348577319/250000000000 : ℚ), 3⟩,
    ⟨(22018376929/62500000000 : ℚ), (835591009/2500000000 : ℚ), (-132541081367/1000000000000 : ℚ), 3⟩,
    ⟨(4506231399/12500000000 : ℚ), (2118342389/10000000000 : ℚ), (-44467461727/500000000000 : ℚ), 3⟩,
    ⟨(368663486157/1000000000000 : ℚ), (560179501/5000000000 : ℚ), (-52563188641/1000000000000 : ℚ), 3⟩,
    ⟨(37671032041/100000000000 : ℚ), (298735109/10000000000 : ℚ), (-10975866959/500000000000 : ℚ), 2⟩,
    ⟨(192280759633/500000000000 : ℚ), (-383131013/10000000000 : ℚ), (998927491/250000000000 : ℚ), 2⟩,
    ⟨(98035367847/250000000000 : ℚ), (-190512673/2000000000 : ℚ), (13052388319/500000000000 : ℚ), 2⟩,
    ⟨(199688588847/500000000000 : ℚ), (-715093759/5000000000 : ℚ), (45003692039/1000000000000 : ℚ), 2⟩,
    ⟨(406198954377/1000000000000 : ℚ), (-1831715431/10000000000 : ℚ), (15293575729/250000000000 : ℚ), 2⟩,
    ⟨(412541103997/1000000000000 : ℚ), (-54230039/250000000 : ℚ), (74988293847/1000000000000 : ℚ), 2⟩,
    ⟨(104585637047/250000000000 : ℚ), (-2451940069/10000000000 : ℚ), (21683329619/250000000000 : ℚ), 2⟩,
    ⟨(42354741587/100000000000 : ℚ), (-671778473/2500000000 : ℚ), (48316065439/500000000000 : ℚ), 2⟩,
    ⟨(214052790661/500000000000 : ℚ), (-576053821/2000000000 : ℚ), (13107095249/125000000000 : ℚ), 2⟩,
    ⟨(431973146919/1000000000000 : ℚ), (-303566409/1000000000 : ℚ), (111539118061/1000000000000 : ℚ), 2⟩,
    ⟨(43511286589/100000000000 : ℚ), (-3156527137/10000000000 : ℚ), (29194732889/250000000000 : ℚ), 2⟩,
    ⟨(17499780041/40000000000 : ℚ), (-81131139/250000000 : ℚ), (120649699793/1000000000000 : ℚ), 2⟩,
    ⟨(439095115877/1000000000000 : ℚ), (-3303502113/10000000000 : ℚ), (1540037999/12500000000 : ℚ), 2⟩,
    ⟨(439899295647/1000000000000 : ℚ), (-3332369417/10000000000 : ℚ), (24894349621/200000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-667193147/2000000000 : ℚ), (62314983991/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (5020949819/15625000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control352.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control352.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate352
