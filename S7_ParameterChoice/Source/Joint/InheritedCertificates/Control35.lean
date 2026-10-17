import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate35
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43213415347/200000000000 : ℚ), (458280935533/625000000 : ℚ), (-15923659320077/100000000000 : ℚ), 10⟩,
    ⟨(21767408601/100000000000 : ℚ), (393518419407/5000000000 : ℚ), (-3523488270699/200000000000 : ℚ), 7⟩,
    ⟨(110436314091/500000000000 : ℚ), (67279247089/2500000000 : ℚ), (-6288196486497/1000000000000 : ℚ), 5⟩,
    ⟨(112815949771/500000000000 : ℚ), (100771687/7812500 : ℚ), (-25337676447/8000000000 : ℚ), 4⟩,
    ⟨(28988258213/125000000000 : ℚ), (36365083669/5000000000 : ℚ), (-1883184346527/1000000000000 : ℚ), 4⟩,
    ⟨(239634703019/1000000000000 : ℚ), (9022659153/2000000000 : ℚ), (-1233509885693/1000000000000 : ℚ), 3⟩,
    ⟨(62185845121/250000000000 : ℚ), (5957748951/2000000000 : ℚ), (-430048229797/500000000000 : ℚ), 3⟩,
    ⟨(64786094139/250000000000 : ℚ), (20551775591/10000000000 : ℚ), (-313000485209/500000000000 : ℚ), 3⟩,
    ⟨(135368761979/500000000000 : ℚ), (2928080437/2000000000 : ℚ), (-469679816001/1000000000000 : ℚ), 2⟩,
    ⟨(141705587171/500000000000 : ℚ), (10680217017/10000000000 : ℚ), (-72029109891/200000000000 : ℚ), 2⟩,
    ⟨(297043273527/1000000000000 : ℚ), (3964350057/5000000000 : ℚ), (-140208975961/500000000000 : ℚ), 2⟩,
    ⟨(62300507389/200000000000 : ℚ), (372415001/625000000 : ℚ), (-220562694691/1000000000000 : ℚ), 2⟩,
    ⟨(163324856993/500000000000 : ℚ), (563966889/1250000000 : ℚ), (-6978278311/40000000000 : ℚ), 2⟩,
    ⟨(68467785811/200000000000 : ℚ), (3345147/9765625 : ℚ), (-138164108613/1000000000000 : ℚ), 2⟩,
    ⟨(179209543217/500000000000 : ℚ), (324249603/1250000000 : ℚ), (-218126679/2000000000 : ℚ), 2⟩,
    ⟨(46841915677/125000000000 : ℚ), (973367697/5000000000 : ℚ), (-85358374657/1000000000000 : ℚ), 2⟩,
    ⟨(195565255851/500000000000 : ℚ), (358810561/2500000000 : ℚ), (-1315751321/20000000000 : ℚ), 1⟩,
    ⟨(81489350137/200000000000 : ℚ), (20513859/200000000 : ℚ), (-49446219469/1000000000000 : ℚ), 1⟩,
    ⟨(13235215877/31250000000 : ℚ), (694024073/10000000000 : ℚ), (-17837042313/500000000000 : ℚ), 1⟩,
    ⟨(439216123133/1000000000000 : ℚ), (422843411/10000000000 : ℚ), (-23982051829/1000000000000 : ℚ), 1⟩,
    ⟨(227181650087/500000000000 : ℚ), (199403087/10000000000 : ℚ), (-7001593933/500000000000 : ℚ), 1⟩,
    ⟨(58602820449/125000000000 : ℚ), (1780381/1250000000 : ℚ), (-2729651333/500000000000 : ℚ), 1⟩,
    ⟨(482454662777/1000000000000 : ℚ), (-2794657/200000000 : ℚ), (465581291/250000000000 : ℚ), 1⟩,
    ⟨(495128313161/1000000000000 : ℚ), (-33486993/1250000000 : ℚ), (8125429133/1000000000000 : ℚ), 1⟩,
    ⟨(506721460563/1000000000000 : ℚ), (-2994727/80000000 : ℚ), (6728298777/500000000000 : ℚ), 1⟩,
    ⟨(103424491327/200000000000 : ℚ), (-462203459/10000000000 : ℚ), (8976945209/500000000000 : ℚ), 1⟩,
    ⟨(5262311341/10000000000 : ℚ), (-533888291/10000000000 : ℚ), (21693169567/1000000000000 : ℚ), 1⟩,
    ⟨(106791954283/200000000000 : ℚ), (-73904099/1250000000 : ℚ), (6183194841/250000000000 : ℚ), 1⟩,
    ⟨(540233937577/1000000000000 : ℚ), (-317812863/5000000000 : ℚ), (13558506297/500000000000 : ℚ), 1⟩,
    ⟨(544993208937/1000000000000 : ℚ), (-334046227/5000000000 : ℚ), (14439330623/500000000000 : ℚ), 1⟩,
    ⟨(548191751109/1000000000000 : ℚ), (-86169413/1250000000 : ℚ), (30040860951/1000000000000 : ℚ), 1⟩,
    ⟨(8590605631/15625000000 : ℚ), (-699874691/10000000000 : ℚ), (15309184431/500000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-350592211/5000000000 : ℚ), (767259773/25000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (213042814983/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control35.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control35.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate35
