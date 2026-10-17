import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate600
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6328444543/25000000000 : ℚ), (3200388945959/2500000000 : ℚ), (-324622505825679/1000000000000 : ℚ), 12⟩,
    ⟨(253748289841/1000000000000 : ℚ), (1399502573073/10000000000 : ℚ), (-7173069150107/200000000000 : ℚ), 9⟩,
    ⟨(50992685311/200000000000 : ℚ), (245291826023/5000000000 : ℚ), (-12764620749231/1000000000000 : ℚ), 8⟩,
    ⟨(256771489433/1000000000000 : ℚ), (48328123389/2000000000 : ℚ), (-6399941882033/1000000000000 : ℚ), 7⟩,
    ⟨(259155065839/1000000000000 : ℚ), (140020315747/10000000000 : ℚ), (-945128925863/250000000000 : ℚ), 6⟩,
    ⟨(262091200631/1000000000000 : ℚ), (8909743899/1000000000 : ℚ), (-98173437969/40000000000 : ℚ), 5⟩,
    ⟨(33193952153/125000000000 : ℚ), (60155989287/10000000000 : ℚ), (-211418540871/125000000000 : ℚ), 5⟩,
    ⟨(269502989917/1000000000000 : ℚ), (42240945647/10000000000 : ℚ), (-606201704447/500000000000 : ℚ), 5⟩,
    ⟨(68476816207/250000000000 : ℚ), (3044372377/1000000000 : ℚ), (-446039101369/500000000000 : ℚ), 4⟩,
    ⟨(55744405277/200000000000 : ℚ), (22301582239/10000000000 : ℚ), (-83404918709/125000000000 : ℚ), 4⟩,
    ⟨(1419504529/5000000000 : ℚ), (3294093683/2000000000 : ℚ), (-12582491073/25000000000 : ℚ), 4⟩,
    ⟨(57878805527/200000000000 : ℚ), (12167542651/10000000000 : ℚ), (-380024805089/1000000000000 : ℚ), 4⟩,
    ⟨(147574245061/500000000000 : ℚ), (8912602991/10000000000 : ℚ), (-8904386403/31250000000 : ℚ), 4⟩,
    ⟨(150554437321/500000000000 : ℚ), (6398411679/10000000000 : ℚ), (-8400793639/40000000000 : ℚ), 3⟩,
    ⟨(61443555887/200000000000 : ℚ), (442142253/1000000000 : ℚ), (-37478096821/250000000000 : ℚ), 3⟩,
    ⟨(313416372407/1000000000000 : ℚ), (2842789061/10000000000 : ℚ), (-10094323907/100000000000 : ℚ), 3⟩,
    ⟨(7991123943/25000000000 : ℚ), (313086019/2000000000 : ℚ), (-60524537001/1000000000000 : ℚ), 3⟩,
    ⟨(81460887673/250000000000 : ℚ), (260012179/5000000000 : ℚ), (-13397339951/500000000000 : ℚ), 3⟩,
    ⟨(66390491097/200000000000 : ℚ), (-343823717/10000000000 : ℚ), (1609774529/1000000000000 : ℚ), 3⟩,
    ⟨(67582568001/200000000000 : ℚ), (-1063315769/10000000000 : ℚ), (803205239/31250000000 : ℚ), 3⟩,
    ⟨(85916825623/250000000000 : ℚ), (-208283967/1250000000 : ℚ), (9249369873/200000000000 : ℚ), 3⟩,
    ⟨(174580212163/500000000000 : ℚ), (-434744313/2000000000 : ℚ), (63822863833/1000000000000 : ℚ), 3⟩,
    ⟨(177169651871/500000000000 : ℚ), (-650425461/2500000000 : ℚ), (78875136427/1000000000000 : ℚ), 3⟩,
    ⟨(179577032649/500000000000 : ℚ), (-2962523051/10000000000 : ℚ), (91745992861/1000000000000 : ℚ), 3⟩,
    ⟨(36355834021/100000000000 : ℚ), (-3265677199/10000000000 : ℚ), (2053995571/20000000000 : ℚ), 3⟩,
    ⟨(367509712903/1000000000000 : ℚ), (-175924829/500000000 : ℚ), (11194062719/100000000000 : ℚ), 3⟩,
    ⟨(46371266187/125000000000 : ℚ), (-1863318519/5000000000 : ℚ), (934575513/7812500000 : ℚ), 3⟩,
    ⟨(11684570759/31250000000 : ℚ), (-778887033/2000000000 : ℚ), (15734364997/125000000000 : ℚ), 3⟩,
    ⟨(188144920347/500000000000 : ℚ), (-2012586507/5000000000 : ℚ), (130778777259/1000000000000 : ℚ), 3⟩,
    ⟨(378097903571/1000000000000 : ℚ), (-4121273313/10000000000 : ℚ), (8400223931/62500000000 : ℚ), 3⟩,
    ⟨(189656520143/500000000000 : ℚ), (-4184440881/10000000000 : ℚ), (136795761999/1000000000000 : ℚ), 3⟩,
    ⟨(189961774203/500000000000 : ℚ), (-2107880441/5000000000 : ℚ), (137984725117/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-2109831831/5000000000 : ℚ), (138133015833/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (400853259013/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control600.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control600.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate600
