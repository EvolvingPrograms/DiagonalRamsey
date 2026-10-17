import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate205
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(323621904363/1000000000000 : ℚ), (496638429303/400000000 : ℚ), (-402784533785891/1000000000000 : ℚ), 11⟩,
    ⟨(324711319853/1000000000000 : ℚ), (42283115843/312500000 : ℚ), (-44543063459543/1000000000000 : ℚ), 8⟩,
    ⟨(326879659167/1000000000000 : ℚ), (472422901009/10000000000 : ℚ), (-1985467159607/125000000000 : ℚ), 7⟩,
    ⟨(330106040011/1000000000000 : ℚ), (46358539227/2000000000 : ℚ), (-798778514703/100000000000 : ℚ), 6⟩,
    ⟨(13374375623/40000000000 : ℚ), (33471011623/2500000000 : ℚ), (-947679590079/200000000000 : ℚ), 5⟩,
    ⟨(10612460899/31250000000 : ℚ), (85021357609/10000000000 : ℚ), (-1510512231/488281250 : ℚ), 4⟩,
    ⟨(69154731341/200000000000 : ℚ), (57385806159/10000000000 : ℚ), (-1073720477871/500000000000 : ℚ), 4⟩,
    ⟨(44103080831/125000000000 : ℚ), (20187227471/5000000000 : ℚ), (-1553803306739/1000000000000 : ℚ), 4⟩,
    ⟨(360683813709/1000000000000 : ℚ), (7310466091/2500000000 : ℚ), (-578502026263/500000000000 : ℚ), 3⟩,
    ⟨(184637734907/500000000000 : ℚ), (21610412887/10000000000 : ℚ), (-439355160737/500000000000 : ℚ), 3⟩,
    ⟨(378516872617/1000000000000 : ℚ), (16184633307/10000000000 : ℚ), (-676005359259/1000000000000 : ℚ), 3⟩,
    ⟨(388319022357/1000000000000 : ℚ), (6105724763/5000000000 : ℚ), (-261890010183/500000000000 : ℚ), 3⟩,
    ⟨(199293759487/500000000000 : ℚ), (1845992197/2000000000 : ℚ), (-406553061183/1000000000000 : ℚ), 3⟩,
    ⟨(3197058369/7812500000 : ℚ), (3473019909/5000000000 : ℚ), (-157181114263/500000000000 : ℚ), 3⟩,
    ⟨(420124449097/1000000000000 : ℚ), (5165385169/10000000000 : ℚ), (-120282590979/500000000000 : ℚ), 2⟩,
    ⟨(431185470193/1000000000000 : ℚ), (3755869617/10000000000 : ℚ), (-36119827747/200000000000 : ℚ), 2⟩,
    ⟨(11057500271/25000000000 : ℚ), (65635281/250000000 : ℚ), (-65624819803/500000000000 : ℚ), 2⟩,
    ⟨(1770941531/3906250000 : ℚ), (213559347/1250000000 : ℚ), (-45101427227/500000000000 : ℚ), 2⟩,
    ⟨(464262009801/1000000000000 : ℚ), (119695993/1250000000 : ℚ), (-55762375993/1000000000000 : ℚ), 2⟩,
    ⟨(23744898103/50000000000 : ℚ), (168866539/5000000000 : ℚ), (-2666487817/100000000000 : ℚ), 2⟩,
    ⟨(485166458677/1000000000000 : ℚ), (-22138609/1250000000 : ℚ), (-78282969/40000000000 : ℚ), 2⟩,
    ⟨(494968608417/1000000000000 : ℚ), (-606637289/10000000000 : ℚ), (1193016361/62500000000 : ℚ), 2⟩,
    ⟨(25210500561/50000000000 : ℚ), (-965844617/10000000000 : ℚ), (37030758977/1000000000000 : ℚ), 2⟩,
    ⟨(128200416831/250000000000 : ℚ), (-316559863/2500000000 : ℚ), (26151940217/500000000000 : ℚ), 2⟩,
    ⟨(104132166877/200000000000 : ℚ), (-1516703937/10000000000 : ℚ), (65244748667/1000000000000 : ℚ), 2⟩,
    ⟨(527711824329/1000000000000 : ℚ), (-344822477/2000000000 : ℚ), (7611591417/100000000000 : ℚ), 2⟩,
    ⟨(266943366133/500000000000 : ℚ), (-1893782099/10000000000 : ℚ), (5320089131/62500000000 : ℚ), 2⟩,
    ⟨(269563045229/500000000000 : ℚ), (-507451041/2500000000 : ℚ), (46209396637/500000000000 : ℚ), 2⟩,
    ⟨(271689720511/500000000000 : ℚ), (-427057347/2000000000 : ℚ), (19625583107/200000000000 : ℚ), 2⟩,
    ⟨(546605821867/1000000000000 : ℚ), (-2212533119/10000000000 : ℚ), (10233772421/100000000000 : ℚ), 2⟩,
    ⟨(548774161181/1000000000000 : ℚ), (-2263169897/10000000000 : ℚ), (105111031693/1000000000000 : ℚ), 2⟩,
    ⟨(549863576671/1000000000000 : ℚ), (-1144117707/5000000000 : ℚ), (106487925593/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-28641961/125000000 : ℚ), (333311203/3125000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (261195010993/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control205.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control205.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate205
