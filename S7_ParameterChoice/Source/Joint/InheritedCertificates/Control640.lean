import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate640
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1373412017/6250000000 : ℚ), (16442074759753/10000000000 : ℚ), (-361768950023103/1000000000000 : ℚ), 13⟩,
    ⟨(13758258447/62500000000 : ℚ), (1801034473451/10000000000 : ℚ), (-39933973555229/1000000000000 : ℚ), 10⟩,
    ⟨(11045042029/50000000000 : ℚ), (158197151501/2500000000 : ℚ), (-3546745905407/250000000000 : ℚ), 8⟩,
    ⟨(4440892719/20000000000 : ℚ), (312304999041/10000000000 : ℚ), (-3546591029227/500000000000 : ℚ), 7⟩,
    ⟨(223552505887/1000000000000 : ℚ), (90596335543/5000000000 : ℚ), (-130426567957/31250000000 : ℚ), 6⟩,
    ⟨(11270496439/50000000000 : ℚ), (11530935407/1000000000 : ℚ), (-539099850303/200000000000 : ℚ), 6⟩,
    ⟨(227599016631/1000000000000 : ℚ), (77742671171/10000000000 : ℚ), (-369009232813/200000000000 : ℚ), 5⟩,
    ⟨(115049343663/500000000000 : ℚ), (27200911607/5000000000 : ℚ), (-327791200657/250000000000 : ℚ), 5⟩,
    ⟨(29110608459/125000000000 : ℚ), (38968312043/10000000000 : ℚ), (-119258138583/125000000000 : ℚ), 5⟩,
    ⟨(235930725227/1000000000000 : ℚ), (14134532971/5000000000 : ℚ), (-703381948963/1000000000000 : ℚ), 5⟩,
    ⟨(239206926719/1000000000000 : ℚ), (5142613019/2500000000 : ℚ), (-20822649247/40000000000 : ℚ), 4⟩,
    ⟨(242681920537/1000000000000 : ℚ), (14861410399/10000000000 : ℚ), (-383065835127/1000000000000 : ℚ), 4⟩,
    ⟨(246322240589/1000000000000 : ℚ), (328775471/312500000 : ℚ), (-138488635907/500000000000 : ℚ), 4⟩,
    ⟨(50018565721/200000000000 : ℚ), (7150586147/10000000000 : ℚ), (-48338637483/250000000000 : ℚ), 4⟩,
    ⟨(253957371761/1000000000000 : ℚ), (4486494113/10000000000 : ℚ), (-63116932447/500000000000 : ℚ), 4⟩,
    ⟨(32234831549/125000000000 : ℚ), (293490957/1250000000 : ℚ), (-71519620577/1000000000000 : ℚ), 4⟩,
    ⟨(32727363303/125000000000 : ℚ), (608330427/10000000000 : ℚ), (-13163919049/500000000000 : ℚ), 3⟩,
    ⟨(16608761691/62500000000 : ℚ), (-822864749/10000000000 : ℚ), (11415735543/1000000000000 : ℚ), 3⟩,
    ⟨(269604730211/1000000000000 : ℚ), (-2011640533/10000000000 : ℚ), (43229798711/1000000000000 : ℚ), 3⟩,
    ⟨(273375318227/1000000000000 : ℚ), (-601360413/2000000000 : ℚ), (70242921621/1000000000000 : ℚ), 3⟩,
    ⟨(6925390957/25000000000 : ℚ), (-3844909539/10000000000 : ℚ), (186607981/2000000000 : ℚ), 3⟩,
    ⟨(280490632097/1000000000000 : ℚ), (-4553636933/10000000000 : ℚ), (11305765389/100000000000 : ℚ), 3⟩,
    ⟨(283766833589/1000000000000 : ℚ), (-2577052521/5000000000 : ℚ), (129996946109/1000000000000 : ℚ), 3⟩,
    ⟨(57362538229/200000000000 : ℚ), (-1415632817/2500000000 : ℚ), (72250351213/500000000000 : ℚ), 3⟩,
    ⟨(28959887149/100000000000 : ℚ), (-95178359/156250000 : ℚ), (156860631733/1000000000000 : ℚ), 3⟩,
    ⟨(146049271093/500000000000 : ℚ), (-3225200549/5000000000 : ℚ), (167301219643/1000000000000 : ℚ), 3⟩,
    ⟨(73571907509/250000000000 : ℚ), (-105420571/156250000 : ℚ), (175994559377/1000000000000 : ℚ), 3⟩,
    ⟨(296145052929/1000000000000 : ℚ), (-1746660749/2500000000 : ℚ), (183071514997/1000000000000 : ℚ), 3⟩,
    ⟨(148826461433/500000000000 : ℚ), (-1793467309/2500000000 : ℚ), (37726032611/200000000000 : ℚ), 3⟩,
    ⟨(74699179559/250000000000 : ℚ), (-7311752433/10000000000 : ℚ), (24092768649/125000000000 : ℚ), 3⟩,
    ⟨(18722838979/62500000000 : ℚ), (-1850627119/2500000000 : ℚ), (97728694287/500000000000 : ℚ), 3⟩,
    ⟨(2343372157/7812500000 : ℚ), (-3723772423/5000000000 : ℚ), (19680739099/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-298126343/400000000 : ℚ), (1969757893/10000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (401369654423/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control640.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control640.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate640
