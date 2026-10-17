import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control803
namespace DiagonalRamsey.JointInheritedCertificate803
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(89840288729/1000000000000 : ℚ), (526048260057/2500000000 : ℚ), (-9483763144997/500000000000 : ℚ), 11⟩,
    ⟨(90606148659/1000000000000 : ℚ), (47774423911/2500000000 : ℚ), (-1752917646917/1000000000000 : ℚ), 8⟩,
    ⟨(92021273287/1000000000000 : ℚ), (39638666457/10000000000 : ℚ), (-186630317899/500000000000 : ℚ), 6⟩,
    ⟨(93870222717/1000000000000 : ℚ), (-815394321/5000000000 : ℚ), (9577030853/1000000000000 : ℚ), 6⟩,
    ⟨(47935755579/500000000000 : ℚ), (-18476265993/10000000000 : ℚ), (42294510167/250000000000 : ℚ), 5⟩,
    ⟨(24430115147/250000000000 : ℚ), (-13426668611/5000000000 : ℚ), (125101721539/500000000000 : ℚ), 5⟩,
    ⟨(1548993519/15625000000 : ℚ), (-15642593911/5000000000 : ℚ), (58762269607/200000000000 : ℚ), 5⟩,
    ⟨(49950722573/500000000000 : ℚ), (-6654081831/2000000000 : ℚ), (39195813163/125000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-2094378877/625000000 : ℚ), (157980925223/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (15261220943/31250000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control803.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control803.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate803

-- Control804
namespace DiagonalRamsey.JointInheritedCertificate804
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134921942439/1000000000000 : ℚ), (133106823719/625000000 : ℚ), (-28829279946557/1000000000000 : ℚ), 11⟩,
    ⟨(136058557427/1000000000000 : ℚ), (193736148161/10000000000 : ℚ), (-533549524997/200000000000 : ℚ), 8⟩,
    ⟨(5526349923/40000000000 : ℚ), (40476008517/10000000000 : ℚ), (-571482467307/1000000000000 : ℚ), 6⟩,
    ⟨(28180555879/200000000000 : ℚ), (-314624841/2500000000 : ℚ), (9724181379/1000000000000 : ℚ), 6⟩,
    ⟨(71936448747/500000000000 : ℚ), (-9134368487/5000000000 : ℚ), (251608554869/1000000000000 : ℚ), 5⟩,
    ⟨(73308464407/500000000000 : ℚ), (-5342008053/2000000000 : ℚ), (374122125429/1000000000000 : ℚ), 5⟩,
    ⟨(74358559731/500000000000 : ℚ), (-31166919107/10000000000 : ℚ), (439914614391/1000000000000 : ℚ), 5⟩,
    ⟨(2997074689/20000000000 : ℚ), (-1658037027/500000000 : ℚ), (469677254479/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-33401315009/10000000000 : ℚ), (47328410809/100000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (47900686453/125000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control804.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control804.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate804

-- Control805
namespace DiagonalRamsey.JointInheritedCertificate805
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(547381614601/1000000000000 : ℚ), (14117626520149/10000000000 : ℚ), (-386771849194729/500000000000 : ℚ), 13⟩,
    ⟨(274058035483/500000000000 : ℚ), (775250054481/5000000000 : ℚ), (-42736193013701/500000000000 : ℚ), 10⟩,
    ⟨(549577910479/1000000000000 : ℚ), (68391871167/1250000000 : ℚ), (-30427087444763/1000000000000 : ℚ), 9⟩,
    ⟨(275876527413/500000000000 : ℚ), (271620746821/10000000000 : ℚ), (-3052412869707/200000000000 : ℚ), 8⟩,
    ⟨(27731027809/50000000000 : ℚ), (158768578807/10000000000 : ℚ), (-4510949652539/500000000000 : ℚ), 7⟩,
    ⟨(558152798933/1000000000000 : ℚ), (20396685017/2000000000 : ℚ), (-5863767495513/1000000000000 : ℚ), 6⟩,
    ⟨(281157882829/500000000000 : ℚ), (34780031767/5000000000 : ℚ), (-506004407707/125000000000 : ℚ), 6⟩,
    ⟨(567069364709/1000000000000 : ℚ), (12347605113/2500000000 : ℚ), (-581903089179/200000000000 : ℚ), 6⟩,
    ⟨(71545977041/125000000000 : ℚ), (18021108607/5000000000 : ℚ), (-2149328327671/1000000000000 : ℚ), 5⟩,
    ⟨(578160093531/1000000000000 : ℚ), (26785604741/10000000000 : ℚ), (-323403767039/200000000000 : ℚ), 5⟩,
    ⟨(584390413521/1000000000000 : ℚ), (5031957627/2500000000 : ℚ), (-38442177757/31250000000 : ℚ), 5⟩,
    ⟨(4617177929/7812500000 : ℚ), (949834679/625000000 : ℚ), (-940480424401/1000000000000 : ℚ), 5⟩,
    ⟨(597921535569/1000000000000 : ℚ), (11457998349/10000000000 : ℚ), (-143651321441/200000000000 : ℚ), 4⟩,
    ⟨(151273006381/250000000000 : ℚ), (8565488229/10000000000 : ℚ), (-544318096667/1000000000000 : ℚ), 4⟩,
    ⟨(612441189039/1000000000000 : ℚ), (6290767313/10000000000 : ℚ), (-405875796431/1000000000000 : ℚ), 4⟩,
    ⟨(154974562413/250000000000 : ℚ), (279799531/625000000 : ℚ), (-294130028647/1000000000000 : ℚ), 4⟩,
    ⟨(39211961987/62500000000 : ℚ), (3013103649/10000000000 : ℚ), (-2028669391/10000000000 : ℚ), 4⟩,
    ⟨(158712113101/250000000000 : ℚ), (910140267/5000000000 : ℚ), (-63799803383/500000000000 : ℚ), 4⟩,
    ⟨(642197615919/1000000000000 : ℚ), (33605217/400000000 : ℚ), (-65025153527/1000000000000 : ℚ), 4⟩,
    ⟨(5194944847/8000000000 : ℚ), (14658149/5000000000 : ℚ), (-395992779/31250000000 : ℚ), 4⟩,
    ⟨(164072716633/250000000000 : ℚ), (-20152643/312500000 : ℚ), (15668270617/500000000000 : ℚ), 4⟩,
    ⟨(331449613961/500000000000 : ℚ), (-603733303/5000000000 : ℚ), (8555028869/125000000000 : ℚ), 3⟩,
    ⟨(83641193489/125000000000 : ℚ), (-167769843/1000000000 : ℚ), (99755576339/1000000000000 : ℚ), 3⟩,
    ⟨(134984365023/200000000000 : ℚ), (-1035268629/5000000000 : ℚ), (126153452527/1000000000000 : ℚ), 3⟩,
    ⟨(136044055347/200000000000 : ℚ), (-599410973/2500000000 : ℚ), (148315985097/1000000000000 : ℚ), 3⟩,
    ⟨(342486937893/500000000000 : ℚ), (-2668121739/10000000000 : ℚ), (166777915049/1000000000000 : ℚ), 3⟩,
    ⟨(68913684251/100000000000 : ℚ), (-36113271/125000000 : ℚ), (90978611741/500000000000 : ℚ), 3⟩,
    ⟨(43291817829/62500000000 : ℚ), (-76648693/250000000 : ℚ), (48544514849/250000000000 : ℚ), 3⟩,
    ⟨(695536586617/1000000000000 : ℚ), (-160148029/500000000 : ℚ), (20368802517/100000000000 : ℚ), 3⟩,
    ⟨(139542346193/200000000000 : ℚ), (-206450267/625000000 : ℚ), (105335593471/500000000000 : ℚ), 3⟩,
    ⟨(349586785239/500000000000 : ℚ), (-3368872461/10000000000 : ℚ), (215257717053/1000000000000 : ℚ), 3⟩,
    ⟨(699908026843/1000000000000 : ℚ), (-3401365569/10000000000 : ℚ), (217530740481/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-17027057/50000000 : ℚ), (108906965019/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (301556991799/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control805.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control805.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate805

-- Control806
namespace DiagonalRamsey.JointInheritedCertificate806
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4324644781/7812500000 : ℚ), (7439738203023/5000000000 : ℚ), (-164887971551791/200000000000 : ℚ), 13⟩,
    ⟨(554259281961/1000000000000 : ℚ), (51079209687/312500000 : ℚ), (-91088265628547/1000000000000 : ℚ), 10⟩,
    ⟨(555661994819/1000000000000 : ℚ), (576945250659/10000000000 : ℚ), (-2026286381641/62500000000 : ℚ), 9⟩,
    ⟨(139437290413/250000000000 : ℚ), (143246409763/5000000000 : ℚ), (-2032200348461/125000000000 : ℚ), 8⟩,
    ⟨(560500681901/1000000000000 : ℚ), (167494512869/10000000000 : ℚ), (-2401702429181/250000000000 : ℚ), 7⟩,
    ⟨(281945028461/500000000000 : ℚ), (26899883401/2500000000 : ℚ), (-3120437823671/500000000000 : ℚ), 6⟩,
    ⟨(567884645181/1000000000000 : ℚ), (73388932371/10000000000 : ℚ), (-861137076151/200000000000 : ℚ), 6⟩,
    ⟨(572445976609/1000000000000 : ℚ), (52099336881/10000000000 : ℚ), (-3092276818357/1000000000000 : ℚ), 6⟩,
    ⟨(144382530773/250000000000 : ℚ), (19002007537/5000000000 : ℚ), (-1141050505913/500000000000 : ℚ), 5⟩,
    ⟨(291544060759/500000000000 : ℚ), (28224875093/10000000000 : ℚ), (-107175065857/62500000000 : ℚ), 5⟩,
    ⟨(294533222663/500000000000 : ℚ), (10593962323/5000000000 : ℚ), (-325628463799/250000000000 : ℚ), 5⟩,
    ⟨(595407519989/1000000000000 : ℚ), (1597407127/1000000000 : ℚ), (-993823517789/1000000000000 : ℚ), 5⟩,
    ⟨(602050277491/1000000000000 : ℚ), (1502224221/1250000000 : ℚ), (-30280666887/40000000000 : ℚ), 4⟩,
    ⟨(304465372223/500000000000 : ℚ), (1791183079/2000000000 : ℚ), (-114334288151/200000000000 : ℚ), 4⟩,
    ⟨(615982658197/1000000000000 : ℚ), (6546753029/10000000000 : ℚ), (-42415628821/100000000000 : ℚ), 4⟩,
    ⟨(311569052479/500000000000 : ℚ), (144517819/312500000 : ℚ), (-305091698689/1000000000000 : ℚ), 4⟩,
    ⟨(630328173867/1000000000000 : ℚ), (3072763839/10000000000 : ℚ), (-51963560299/250000000000 : ℚ), 4⟩,
    ⟨(159370905157/250000000000 : ℚ), (1807475433/10000000000 : ℚ), (-3191529669/25000000000 : ℚ), 4⟩,
    ⟨(644535534379/1000000000000 : ℚ), (767244197/10000000000 : ℚ), (-15247979139/250000000000 : ℚ), 4⟩,
    ⟨(325708000667/500000000000 : ℚ), (-93712347/10000000000 : ℚ), (-8338783/1600000000 : ℚ), 4⟩,
    ⟨(164514689709/250000000000 : ℚ), (-161994309/2000000000 : ℚ), (8335765993/200000000000 : ℚ), 4⟩,
    ⟨(664399833499/1000000000000 : ℚ), (-1407949621/10000000000 : ℚ), (8121488703/100000000000 : ℚ), 4⟩,
    ⟨(670378157307/1000000000000 : ℚ), (-1908014257/10000000000 : ℚ), (895201839/7812500000 : ℚ), 3⟩,
    ⟨(337968077867/500000000000 : ℚ), (-581494247/2500000000 : ℚ), (17839920377/125000000000 : ℚ), 3⟩,
    ⟨(85127537777/125000000000 : ℚ), (-1337082297/5000000000 : ℚ), (166341847569/1000000000000 : ℚ), 3⟩,
    ⟨(171395408411/250000000000 : ℚ), (-118487981/400000000 : ℚ), (186022480433/1000000000000 : ℚ), 3⟩,
    ⟨(689576221903/1000000000000 : ℚ), (-799393909/2500000000 : ℚ), (202205949331/1000000000000 : ℚ), 3⟩,
    ⟨(173241399231/250000000000 : ℚ), (-3386087141/10000000000 : ℚ), (215236923901/1000000000000 : ℚ), 3⟩,
    ⟨(695717117173/1000000000000 : ℚ), (-353214991/1000000000 : ℚ), (225378528121/1000000000000 : ℚ), 3⟩,
    ⟨(348902142003/500000000000 : ℚ), (-90976037/250000000 : ℚ), (23282625577/100000000000 : ℚ), 3⟩,
    ⟨(139841399373/200000000000 : ℚ), (-3709077427/10000000000 : ℚ), (118859144819/500000000000 : ℚ), 3⟩,
    ⟨(349955873429/500000000000 : ℚ), (-3743735619/10000000000 : ℚ), (240142833907/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-749610243/2000000000 : ℚ), (4808898131/20000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (70489385881/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control806.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control806.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate806

-- Control808
namespace DiagonalRamsey.JointInheritedCertificate808
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141023441103/250000000000 : ℚ), (16340131633263/10000000000 : ℚ), (-922531422713889/1000000000000 : ℚ), 13⟩,
    ⟨(70593474463/125000000000 : ℚ), (1795626664993/10000000000 : ℚ), (-25477459892021/250000000000 : ℚ), 10⟩,
    ⟨(70756194951/125000000000 : ℚ), (634073793851/10000000000 : ℚ), (-9065157337671/250000000000 : ℚ), 9⟩,
    ⟨(567986519427/1000000000000 : ℚ), (157490227637/5000000000 : ℚ), (-18174259715187/1000000000000 : ℚ), 8⟩,
    ⟨(570540021179/1000000000000 : ℚ), (184198071439/10000000000 : ℚ), (-5366025210453/500000000000 : ℚ), 7⟩,
    ⟨(286842736623/500000000000 : ℚ), (5917021993/500000000 : ℚ), (-108837682129/15625000000 : ℚ), 6⟩,
    ⟨(115478516641/200000000000 : ℚ), (80702916073/10000000000 : ℚ), (-2400092296243/500000000000 : ℚ), 6⟩,
    ⟨(581625649561/1000000000000 : ℚ), (57265739317/10000000000 : ℚ), (-3442438352351/1000000000000 : ℚ), 6⟩,
    ⟨(58634390557/100000000000 : ℚ), (41737631229/10000000000 : ℚ), (-1267957418669/500000000000 : ℚ), 5⟩,
    ⟨(591501911849/1000000000000 : ℚ), (30956280813/10000000000 : ℚ), (-380234592629/200000000000 : ℚ), 5⟩,
    ⟨(74631249247/125000000000 : ℚ), (11595970201/5000000000 : ℚ), (-575956899/400000000 : ℚ), 5⟩,
    ⟨(602934720889/1000000000000 : ℚ), (435858737/250000000 : ℚ), (-1094536612497/1000000000000 : ℚ), 5⟩,
    ⟨(12181988389/20000000000 : ℚ), (13061734509/10000000000 : ℚ), (-829617128289/1000000000000 : ℚ), 4⟩,
    ⟨(307742360121/500000000000 : ℚ), (2418669583/2500000000 : ℚ), (-622280097151/1000000000000 : ℚ), 4⟩,
    ⟨(622029129327/1000000000000 : ℚ), (7007294177/10000000000 : ℚ), (-57158789593/125000000000 : ℚ), 4⟩,
    ⟨(62866962047/100000000000 : ℚ), (4877181659/10000000000 : ℚ), (-162045373357/500000000000 : ℚ), 4⟩,
    ⟨(635342242109/1000000000000 : ℚ), (788990883/2500000000 : ℚ), (-53832153343/250000000000 : ℚ), 4⟩,
    ⟨(641982733251/1000000000000 : ℚ), (350255107/2000000000 : ℚ), (-7851946729/62500000000 : ℚ), 4⟩,
    ⟨(648527142337/1000000000000 : ℚ), (297697343/5000000000 : ℚ), (-25529092873/500000000000 : ℚ), 4⟩,
    ⟨(654912443129/1000000000000 : ℚ), (-45268309/1250000000 : ℚ), (708671503/62500000000 : ℚ), 4⟩,
    ⟨(66107714169/100000000000 : ℚ), (-1159477373/10000000000 : ℚ), (63796956089/1000000000000 : ℚ), 4⟩,
    ⟨(333480934301/500000000000 : ℚ), (-114108529/625000000 : ℚ), (27008436751/250000000000 : ℚ), 4⟩,
    ⟨(67250995073/100000000000 : ℚ), (-1191697367/5000000000 : ℚ), (145379232979/1000000000000 : ℚ), 4⟩,
    ⟨(42354247313/62500000000 : ℚ), (-44529653/156250000 : ℚ), (176870354273/1000000000000 : ℚ), 3⟩,
    ⟨(341193106509/500000000000 : ℚ), (-809711349/2500000000 : ℚ), (40663704701/200000000000 : ℚ), 3⟩,
    ⟨(343309639687/500000000000 : ℚ), (-1780425671/5000000000 : ℚ), (112679537449/500000000000 : ℚ), 3⟩,
    ⟨(690326389333/1000000000000 : ℚ), (-764835693/2000000000 : ℚ), (60871980511/250000000000 : ℚ), 3⟩,
    ⟨(3467359207/5000000000 : ℚ), (-4035212369/10000000000 : ℚ), (161305659/625000000 : ℚ), 3⟩,
    ⟨(43501583947/62500000000 : ℚ), (-4100407/9765625 : ℚ), (134727652701/500000000000 : ℚ), 3⟩,
    ⟨(697962302971/1000000000000 : ℚ), (-4318599351/10000000000 : ℚ), (6945100477/25000000000 : ℚ), 3⟩,
    ⟨(1118822507/1600000000 : ℚ), (-4397107439/10000000000 : ℚ), (283288680599/1000000000000 : ℚ), 3⟩,
    ⟨(349959049083/500000000000 : ℚ), (-887193203/2000000000 : ℚ), (286007189819/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-277550313/625000000 : ℚ), (286345899519/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (49369613093/200000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control808.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control808.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate808

-- Control810
namespace DiagonalRamsey.JointInheritedCertificate810
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(92356878101/500000000000 : ℚ), (2760256800059/10000000000 : ℚ), (-51178646150851/1000000000000 : ℚ), 11⟩,
    ⟨(37193037101/200000000000 : ℚ), (58437631083/2000000000 : ℚ), (-5533082219761/1000000000000 : ℚ), 8⟩,
    ⟨(188419952383/1000000000000 : ℚ), (19334085291/2000000000 : ℚ), (-940492476737/500000000000 : ℚ), 7⟩,
    ⟨(47995930381/250000000000 : ℚ), (43631704167/10000000000 : ℚ), (-174846833771/200000000000 : ℚ), 6⟩,
    ⟨(49129884819/250000000000 : ℚ), (22232446633/10000000000 : ℚ), (-229665371869/500000000000 : ℚ), 5⟩,
    ⟨(50463274177/250000000000 : ℚ), (11640540153/10000000000 : ℚ), (-49741816861/200000000000 : ℚ), 5⟩,
    ⟨(207779428199/1000000000000 : ℚ), (1422602349/2500000000 : ℚ), (-127018369941/1000000000000 : ℚ), 5⟩,
    ⟨(214070788153/1000000000000 : ℚ), (2044266061/10000000000 : ℚ), (-25102949053/500000000000 : ℚ), 4⟩,
    ⟨(430635553/1953125000 : ℚ), (-335721043/10000000000 : ℚ), (291050401/200000000000 : ℚ), 4⟩,
    ⟨(226776763089/1000000000000 : ℚ), (-1962905937/10000000000 : ℚ), (18908363537/500000000000 : ℚ), 4⟩,
    ⟨(11635154729/50000000000 : ℚ), (-3111375819/10000000000 : ℚ), (64187190193/1000000000000 : ℚ), 4⟩,
    ⟨(238036652013/1000000000000 : ℚ), (-3935472571/10000000000 : ℚ), (83576700773/1000000000000 : ℚ), 4⟩,
    ⟨(48514493953/200000000000 : ℚ), (-18100441/40000000 : ℚ), (97742664573/1000000000000 : ℚ), 4⟩,
    ⟨(123068119453/500000000000 : ℚ), (-616682609/1250000000 : ℚ), (107719619493/1000000000000 : ℚ), 4⟩,
    ⟨(31073875723/125000000000 : ℚ), (-5191669797/10000000000 : ℚ), (5705320823/50000000000 : ℚ), 4⟩,
    ⟨(249842435087/1000000000000 : ℚ), (-42535617/80000000 : ℚ), (117228619211/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5332442181/10000000000 : ℚ), (117615748497/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (296226196897/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control810.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control810.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate810

-- Control812
namespace DiagonalRamsey.JointInheritedCertificate812
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(14320379129/25000000000 : ℚ), (886593272139/500000000 : ℚ), (-40660611188527/40000000000 : ℚ), 13⟩,
    ⟨(71678403229/125000000000 : ℚ), (1949090597063/10000000000 : ℚ), (-56138077934029/500000000000 : ℚ), 10⟩,
    ⟨(71830681587/125000000000 : ℚ), (688477602703/10000000000 : ℚ), (-1996880544901/50000000000 : ℚ), 9⟩,
    ⟨(288229056781/500000000000 : ℚ), (342094034789/10000000000 : ℚ), (-20008347713227/1000000000000 : ℚ), 8⟩,
    ⟨(289423875757/500000000000 : ℚ), (200083155753/10000000000 : ℚ), (-11807842657473/1000000000000 : ℚ), 7⟩,
    ⟨(290895676517/500000000000 : ℚ), (12854384117/1000000000 : ℚ), (-1914414614157/250000000000 : ℚ), 7⟩,
    ⟨(585260569629/1000000000000 : ℚ), (21910180849/2500000000 : ℚ), (-5271627029029/1000000000000 : ℚ), 6⟩,
    ⟨(589221990847/1000000000000 : ℚ), (31078456969/5000000000 : ℚ), (-235973729431/62500000000 : ℚ), 6⟩,
    ⟨(148409366509/250000000000 : ℚ), (22631609327/5000000000 : ℚ), (-555347127961/200000000000 : ℚ), 5⟩,
    ⟨(598464471757/1000000000000 : ℚ), (16763258313/5000000000 : ℚ), (-1038684158657/500000000000 : ℚ), 5⟩,
    ⟨(120731304261/200000000000 : ℚ), (12534327583/5000000000 : ℚ), (-1569137425839/1000000000000 : ℚ), 5⟩,
    ⟨(121832722481/200000000000 : ℚ), (18792509877/10000000000 : ℚ), (-297160699361/250000000000 : ℚ), 5⟩,
    ⟨(15373317719/25000000000 : ℚ), (14022712249/10000000000 : ℚ), (-896777920581/1000000000000 : ℚ), 5⟩,
    ⟨(620908250817/1000000000000 : ℚ), (10325318207/10000000000 : ℚ), (-334179520851/500000000000 : ℚ), 4⟩,
    ⟨(627032690841/1000000000000 : ℚ), (3705691529/5000000000 : ℚ), (-486575257897/1000000000000 : ℚ), 4⟩,
    ⟨(5065976377/8000000000 : ℚ), (5082632601/10000000000 : ℚ), (-67971764033/200000000000 : ℚ), 4⟩,
    ⟨(319745736011/500000000000 : ℚ), (3199474907/10000000000 : ℚ), (-13752545391/62500000000 : ℚ), 4⟩,
    ⟨(322852914153/500000000000 : ℚ), (332289057/2000000000 : ℚ), (-60611069251/500000000000 : ℚ), 4⟩,
    ⟨(65183026833/100000000000 : ℚ), (394858141/10000000000 : ℚ), (-7812211477/200000000000 : ℚ), 4⟩,
    ⟨(657805810387/1000000000000 : ℚ), (-327606847/5000000000 : ℚ), (463928919/15625000000 : ℚ), 4⟩,
    ⟨(331787453371/500000000000 : ℚ), (-1530279819/10000000000 : ℚ), (17500071473/200000000000 : ℚ), 4⟩,
    ⟨(334540998921/500000000000 : ℚ), (-2262068039/10000000000 : ℚ), (34064321981/250000000000 : ℚ), 4⟩,
    ⟨(67427404739/100000000000 : ℚ), (-1437524453/5000000000 : ℚ), (8871345611/50000000000 : ℚ), 4⟩,
    ⟨(67910105311/100000000000 : ℚ), (-338822047/1000000000 : ℚ), (212150565057/1000000000000 : ℚ), 4⟩,
    ⟨(6835165283/10000000000 : ℚ), (-3816390917/10000000000 : ℚ), (24132084409/100000000000 : ℚ), 4⟩,
    ⟨(343738974759/500000000000 : ℚ), (-4171114231/10000000000 : ℚ), (53127233397/200000000000 : ℚ), 3⟩,
    ⟨(690947166113/1000000000000 : ℚ), (-4461381783/10000000000 : ℚ), (35705156277/125000000000 : ℚ), 3⟩,
    ⟨(693890767633/1000000000000 : ℚ), (-2347069409/5000000000 : ℚ), (150878748959/500000000000 : ℚ), 3⟩,
    ⟨(139256081117/200000000000 : ℚ), (-974934469/2000000000 : ℚ), (314305978509/1000000000000 : ℚ), 3⟩,
    ⟨(698093066451/1000000000000 : ℚ), (-312931359/625000000 : ℚ), (64704955437/200000000000 : ℚ), 3⟩,
    ⟨(139862258663/200000000000 : ℚ), (-5093592891/10000000000 : ℚ), (164790944589/500000000000 : ℚ), 3⟩,
    ⟨(349961676993/500000000000 : ℚ), (-1284127347/2500000000 : ℚ), (332584399471/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-2570927033/5000000000 : ℚ), (66591701289/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (54109027287/250000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control812.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control812.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate812

-- Control813
namespace DiagonalRamsey.JointInheritedCertificate813
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155420720351/1000000000000 : ℚ), (3403763201263/10000000000 : ℚ), (-26531812341927/500000000000 : ℚ), 12⟩,
    ⟨(78137615701/500000000000 : ℚ), (360795071901/10000000000 : ℚ), (-5721642264977/1000000000000 : ℚ), 9⟩,
    ⟨(1263611321/8000000000 : ℚ), (1863807363/156250000 : ℚ), (-241723713211/125000000000 : ℚ), 7⟩,
    ⟨(80192428359/500000000000 : ℚ), (13392695107/2500000000 : ℚ), (-444792188307/500000000000 : ℚ), 6⟩,
    ⟨(81741020193/500000000000 : ℚ), (13476371441/5000000000 : ℚ), (-91841891843/200000000000 : ℚ), 6⟩,
    ⟨(167123943097/1000000000000 : ℚ), (109724541/80000000 : ℚ), (-24069564953/100000000000 : ℚ), 5⟩,
    ⟨(171170608573/1000000000000 : ℚ), (6240344629/10000000000 : ℚ), (-14300665841/125000000000 : ℚ), 5⟩,
    ⟨(175466525729/1000000000000 : ℚ), (1634016817/10000000000 : ℚ), (-1732457097/50000000000 : ℚ), 5⟩,
    ⟨(179846604877/1000000000000 : ℚ), (-1390032271/10000000000 : ℚ), (19031669219/1000000000000 : ℚ), 4⟩,
    ⟨(184142522033/1000000000000 : ℚ), (-867362797/2500000000 : ℚ), (5685244127/100000000000 : ℚ), 4⟩,
    ⟨(188189187509/1000000000000 : ℚ), (-4945296187/10000000000 : ℚ), (42157601013/500000000000 : ℚ), 4⟩,
    ⟨(9591554511/50000000000 : ℚ), (-3004918277/5000000000 : ℚ), (3266759951/31250000000 : ℚ), 4⟩,
    ⟨(6091508559/31250000000 : ℚ), (-6775068223/10000000000 : ℚ), (119331506001/1000000000000 : ℚ), 4⟩,
    ⟨(197361715481/1000000000000 : ℚ), (-7307098713/10000000000 : ℚ), (16220740607/125000000000 : ℚ), 4⟩,
    ⟨(199037899203/1000000000000 : ℚ), (-7644508397/10000000000 : ℚ), (136453075143/1000000000000 : ℚ), 4⟩,
    ⟨(39978482051/200000000000 : ℚ), (-488032551/625000000 : ℚ), (6986225749/50000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7828813819/10000000000 : ℚ), (35032566453/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (14622027751/25000000000 : ℚ)
  μ := (1/5 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control813.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control813.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate813
