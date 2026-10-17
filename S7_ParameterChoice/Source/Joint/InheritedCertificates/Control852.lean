import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate852
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (911875340925/5664219735104 : ℚ), (1584129554551/5000000000 : ℚ), (-399171441879/7812500000 : ℚ)⟩,
  ⟨(911875340925/5664219735104 : ℚ), (303992508139/1875380829975 : ℚ), (6722984831/200000000 : ℚ), (-2750088757131/500000000000 : ℚ)⟩,
  ⟨(303992508139/1875380829975 : ℚ), (502772392931/3067371872550 : ℚ), (111103541953/10000000000 : ℚ), (-926133708297/500000000000 : ℚ)⟩,
  ⟨(502772392931/3067371872550 : ℚ), (20717665598/124540729925 : ℚ), (24878052251/5000000000 : ℚ), (-211680657683/250000000000 : ℚ)⟩,
  ⟨(20717665598/124540729925 : ℚ), (210293295157/1241912860800 : ℚ), (24847958517/10000000000 : ℚ), (-108092329693/250000000000 : ℚ)⟩,
  ⟨(210293295157/1241912860800 : ℚ), (121460064029/703185602700 : ℚ), (12428829909/10000000000 : ℚ), (-44415204723/200000000000 : ℚ)⟩,
  ⟨(121460064029/703185602700 : ℚ), (38318575037/217205258500 : ℚ), (2698486941/5000000000 : ℚ), (-50307979793/500000000000 : ℚ)⟩,
  ⟨(38318575037/217205258500 : ℚ), (25763110907/142927862500 : ℚ), (131608589/1250000000 : ℚ), (-2997351189/125000000000 : ℚ)⟩,
  ⟨(25763110907/142927862500 : ℚ), (36261883523/196980348200 : ℚ), (-902844269/5000000000 : ℚ), (13773706151/500000000000 : ℚ)⟩,
  ⟨(36261883523/196980348200 : ℚ), (3757678441/20011349500 : ℚ), (-188774601/500000000 : ℚ), (2552371833/40000000000 : ℚ)⟩,
  ⟨(3757678441/20011349500 : ℚ), (6450767093/33742567200 : ℚ), (-1035257297/2000000000 : ℚ), (5632065307/62500000000 : ℚ)⟩,
  ⟨(6450767093/33742567200 : ℚ), (235874423/1214884315 : ℚ), (-6188563501/10000000000 : ℚ), (109465346191/1000000000000 : ℚ)⟩,
  ⟨(235874423/1214884315 : ℚ), (9978989479/50758673900 : ℚ), (-691749409/1000000000 : ℚ), (123617811571/1000000000000 : ℚ)⟩,
  ⟨(9978989479/50758673900 : ℚ), (6395139521/32231729700 : ℚ), (-7425080829/10000000000 : ℚ), (2671936021/20000000000 : ℚ)⟩,
  ⟨(6395139521/32231729700 : ℚ), (782187767/3920182950 : ℚ), (-3873699063/5000000000 : ℚ), (139991940571/1000000000000 : ℚ)⟩,
  ⟨(782187767/3920182950 : ℚ), (194033419/970396450 : ℚ), (-1976051361/2500000000 : ℚ), (143120691639/1000000000000 : ℚ)⟩,
  ⟨(194033419/970396450 : ℚ), (1/5 : ℚ), (-7923613373/10000000000 : ℚ), (143508758477/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2076386627/10000000000 : ℚ), (-1/5 : ℚ), (185036491017/1000000000000 : ℚ)⟩,
  ⟨(2076386627/10000000000 : ℚ), (523948639/2500000000 : ℚ), (-194033419/970396450 : ℚ), (3590984588205139559/19407929000000000000 : ℚ)⟩,
  ⟨(523948639/2500000000 : ℚ), (1126300937/5000000000 : ℚ), (-782187767/3920182950 : ℚ), (2899959126161020001/15680731800000000000 : ℚ)⟩,
  ⟨(1126300937/5000000000 : ℚ), (2574919171/10000000000 : ℚ), (-6395139521/32231729700 : ℚ), (59527527156125418941/322317297000000000000 : ℚ)⟩,
  ⟨(2574919171/10000000000 : ℚ), (308250591/1000000000 : ℚ), (-9978989479/50758673900 : ℚ), (8500641445680516169/46144249000000000000 : ℚ)⟩,
  ⟨(308250591/1000000000 : ℚ), (3811436499/10000000000 : ℚ), (-235874423/1214884315 : ℚ), (44577954124753480373/242976863000000000000 : ℚ)⟩,
  ⟨(3811436499/10000000000 : ℚ), (964742703/2000000000 : ℚ), (-6450767093/33742567200 : ℚ), (20507702381339714253/112475224000000000000 : ℚ)⟩,
  ⟨(964742703/2000000000 : ℚ), (311225399/500000000 : ℚ), (-3757678441/20011349500 : ℚ), (7231760128661623511/40022699000000000000 : ℚ)⟩,
  ⟨(311225399/500000000 : ℚ), (4097155731/5000000000 : ℚ), (-36261883523/196980348200 : ℚ), (35140415645879707619/196980348200000000000 : ℚ)⟩,
  ⟨(4097155731/5000000000 : ℚ), (1381608589/1250000000 : ℚ), (-25763110907/142927862500 : ℚ), (15655242661207372549/89329914062500000000 : ℚ)⟩,
  ⟨(1381608589/1250000000 : ℚ), (7698486941/5000000000 : ℚ), (-38318575037/217205258500 : ℚ), (11607716997784979807/67876643281250000000 : ℚ)⟩,
  ⟨(7698486941/5000000000 : ℚ), (22428829909/10000000000 : ℚ), (-121460064029/703185602700 : ℚ), (290650122933339541439/1757964006750000000000 : ℚ)⟩,
  ⟨(22428829909/10000000000 : ℚ), (34847958517/10000000000 : ℚ), (-210293295157/1241912860800 : ℚ), (1958641850051556372793/12419128608000000000000 : ℚ)⟩,
  ⟨(34847958517/10000000000 : ℚ), (29878052251/5000000000 : ℚ), (-20717665598/124540729925 : ℚ), (36698489151556630329/249081459850000000000 : ℚ)⟩,
  ⟨(29878052251/5000000000 : ℚ), (121103541953/10000000000 : ℚ), (-502772392931/3067371872550 : ℚ), (63618559986197998489/479276855085937500000 : ℚ)⟩,
  ⟨(121103541953/10000000000 : ℚ), (32/1 : ℚ), (-303992508139/1875380829975 : ℚ), (4155002824264064758831/37507616599500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (157104892381/250000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(160850274921/1000000000000 : ℚ), (1584129554551/5000000000 : ℚ), (-399171441879/7812500000 : ℚ), 12⟩,
    ⟨(161600710393/1000000000000 : ℚ), (6722984831/200000000 : ℚ), (-2750088757131/500000000000 : ℚ), 9⟩,
    ⟨(163072742521/1000000000000 : ℚ), (111103541953/10000000000 : ℚ), (-926133708297/500000000000 : ℚ), 8⟩,
    ⟨(82604900969/500000000000 : ℚ), (24878052251/5000000000 : ℚ), (-211680657683/250000000000 : ℚ), 7⟩,
    ⟨(20991220331/125000000000 : ℚ), (24847958517/10000000000 : ℚ), (-108092329693/250000000000 : ℚ), 6⟩,
    ⟨(85564049043/500000000000 : ℚ), (12428829909/10000000000 : ℚ), (-44415204723/200000000000 : ℚ), 6⟩,
    ⟨(34936379603/200000000000 : ℚ), (2698486941/5000000000 : ℚ), (-50307979793/500000000000 : ℚ), 5⟩,
    ⟨(89227295949/500000000000 : ℚ), (131608589/1250000000 : ℚ), (-2997351189/125000000000 : ℚ), 5⟩,
    ⟨(182301197223/1000000000000 : ℚ), (-902844269/5000000000 : ℚ), (13773706151/500000000000 : ℚ), 5⟩,
    ⟨(37214778221/200000000000 : ℚ), (-188774601/500000000 : ℚ), (2552371833/40000000000 : ℚ), 5⟩,
    ⟨(94813845517/500000000000 : ℚ), (-1035257297/2000000000 : ℚ), (5632065307/62500000000 : ℚ), 5⟩,
    ⟨(24103253309/125000000000 : ℚ), (-6188563501/10000000000 : ℚ), (109465346191/1000000000000 : ℚ), 4⟩,
    ⟨(97772993591/500000000000 : ℚ), (-691749409/1000000000 : ℚ), (123617811571/1000000000000 : ℚ), 4⟩,
    ⟨(197683046599/1000000000000 : ℚ), (-7425080829/10000000000 : ℚ), (2671936021/20000000000 : ℚ), 4⟩,
    ⟨(24894384841/125000000000 : ℚ), (-3873699063/5000000000 : ℚ), (139991940571/1000000000000 : ℚ), 4⟩,
    ⟨(199905514199/1000000000000 : ℚ), (-1976051361/2500000000 : ℚ), (143120691639/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7923613373/10000000000 : ℚ), (143508758477/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control852.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control852.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate852
