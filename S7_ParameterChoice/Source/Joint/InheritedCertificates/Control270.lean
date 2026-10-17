import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate270
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8548986789/25000000000 : ℚ), (13601416931473/10000000000 : ℚ), (-466102213607653/1000000000000 : ℚ), 11⟩,
    ⟨(68592127973/200000000000 : ℚ), (1484679885717/10000000000 : ℚ), (-5153567948211/100000000000 : ℚ), 8⟩,
    ⟨(344953334677/1000000000000 : ℚ), (259765421503/5000000000 : ℚ), (-18370341391193/1000000000000 : ℚ), 7⟩,
    ⟨(43489795657/125000000000 : ℚ), (63881654821/2500000000 : ℚ), (-923292978967/100000000000 : ℚ), 6⟩,
    ⟨(70365435347/200000000000 : ℚ), (73975644079/5000000000 : ℚ), (-2736324224917/500000000000 : ℚ), 5⟩,
    ⟨(2853137001/8000000000 : ℚ), (94167672611/10000000000 : ℚ), (-3569163387327/1000000000000 : ℚ), 5⟩,
    ⟨(362316839839/1000000000000 : ℚ), (796064797/125000000 : ℚ), (-2474334331043/1000000000000 : ℚ), 4⟩,
    ⟨(184398335137/500000000000 : ℚ), (11219380281/2500000000 : ℚ), (-893690791411/500000000000 : ℚ), 4⟩,
    ⟨(376019212119/1000000000000 : ℚ), (32538425531/10000000000 : ℚ), (-265645859171/200000000000 : ℚ), 4⟩,
    ⟨(95978727087/250000000000 : ℚ), (24057661221/10000000000 : ℚ), (-1006230503189/1000000000000 : ℚ), 3⟩,
    ⟨(392407719091/1000000000000 : ℚ), (4502967801/2500000000 : ℚ), (-385860976271/500000000000 : ℚ), 3⟩,
    ⟨(401415853937/1000000000000 : ℚ), (542913227/400000000 : ℚ), (-595647023223/1000000000000 : ℚ), 3⟩,
    ⟨(51356569953/125000000000 : ℚ), (5116530817/5000000000 : ℚ), (-92017993199/200000000000 : ℚ), 3⟩,
    ⟨(210313477759/500000000000 : ℚ), (7668277167/10000000000 : ℚ), (-35352102713/100000000000 : ℚ), 3⟩,
    ⟨(430644908841/1000000000000 : ℚ), (2831962359/5000000000 : ℚ), (-268251719129/1000000000000 : ℚ), 3⟩,
    ⟨(110202485307/250000000000 : ℚ), (814771107/2000000000 : ℚ), (-9949978703/50000000000 : ℚ), 2⟩,
    ⟨(22551207893/50000000000 : ℚ), (2796025687/10000000000 : ℚ), (-142042075891/1000000000000 : ℚ), 2⟩,
    ⟨(461189190247/1000000000000 : ℚ), (439416337/2500000000 : ℚ), (-47349356713/500000000000 : ℚ), 2⟩,
    ⟨(471207143571/1000000000000 : ℚ), (452965179/5000000000 : ℚ), (-3437710963/62500000000 : ℚ), 2⟩,
    ⟨(60122692433/125000000000 : ℚ), (20184213/1000000000 : ℚ), (-21491144149/1000000000000 : ℚ), 2⟩,
    ⟨(490418245151/1000000000000 : ℚ), (-47967279/1250000000 : ℚ), (6943991919/1000000000000 : ℚ), 2⟩,
    ⟨(499426379997/1000000000000 : ℚ), (-872842671/10000000000 : ℚ), (31146237057/1000000000000 : ℚ), 2⟩,
    ⟨(25395959537/50000000000 : ℚ), (-1282286751/10000000000 : ℚ), (3235348973/62500000000 : ℚ), 2⟩,
    ⟨(51581488697/100000000000 : ℚ), (-162499973/1000000000 : ℚ), (69305715693/1000000000000 : ℚ), 2⟩,
    ⟨(104607485763/200000000000 : ℚ), (-477743543/2500000000 : ℚ), (10519813101/125000000000 : ℚ), 2⟩,
    ⟨(529517259249/1000000000000 : ℚ), (-429590509/2000000000 : ℚ), (96629201049/1000000000000 : ℚ), 2⟩,
    ⟨(535191973963/1000000000000 : ℚ), (-2341928753/10000000000 : ℚ), (106955047367/1000000000000 : ℚ), 2⟩,
    ⟨(540006922353/1000000000000 : ℚ), (-1248758551/5000000000 : ℚ), (115319151959/1000000000000 : ℚ), 2⟩,
    ⟨(543915733833/1000000000000 : ℚ), (-104728977/400000000 : ℚ), (121860864703/1000000000000 : ℚ), 2⟩,
    ⟨(546880764411/1000000000000 : ℚ), (-676662457/2500000000 : ℚ), (126683505773/1000000000000 : ℚ), 2⟩,
    ⟨(548873459223/1000000000000 : ℚ), (-2764628797/10000000000 : ℚ), (129860021871/1000000000000 : ℚ), 2⟩,
    ⟨(68734328441/125000000000 : ℚ), (-1396666483/5000000000 : ℚ), (131436952047/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2796907759/10000000000 : ℚ), (131633543239/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (258489053717/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control270.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control270.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate270
