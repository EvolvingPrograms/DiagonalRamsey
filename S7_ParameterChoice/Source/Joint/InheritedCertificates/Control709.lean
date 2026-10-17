import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate709
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48510825627/200000000000 : ℚ), (1460313624887/1250000000 : ℚ), (-283802657539613/1000000000000 : ℚ), 13⟩,
    ⟨(15191949849/62500000000 : ℚ), (319576995621/2500000000 : ℚ), (-15672724824617/500000000000 : ℚ), 10⟩,
    ⟨(244100356821/1000000000000 : ℚ), (17943607723/400000000 : ℚ), (-222974830049/20000000000 : ℚ), 8⟩,
    ⟨(245631694479/1000000000000 : ℚ), (13824003619/625000000 : ℚ), (-279208780651/50000000000 : ℚ), 7⟩,
    ⟨(12382523147/50000000000 : ℚ), (32067100483/2500000000 : ℚ), (-658808896529/200000000000 : ℚ), 6⟩,
    ⟨(250137220359/1000000000000 : ℚ), (81653224827/10000000000 : ℚ), (-1067293198803/500000000000 : ℚ), 6⟩,
    ⟨(50613603581/200000000000 : ℚ), (55123730917/10000000000 : ℚ), (-1467523282393/1000000000000 : ℚ), 5⟩,
    ⟨(256414630393/1000000000000 : ℚ), (7735275201/2000000000 : ℚ), (-1048798147447/1000000000000 : ℚ), 5⟩,
    ⟨(260144828117/1000000000000 : ℚ), (69568507/25000000 : ℚ), (-768755202611/1000000000000 : ℚ), 5⟩,
    ⟨(64507492/244140625 : ℚ), (2540787713/1250000000 : ℚ), (-143049408539/250000000000 : ℚ), 5⟩,
    ⟨(16788058483/62500000000 : ℚ), (11675193/7812500 : ℚ), (-107221507173/250000000000 : ℚ), 4⟩,
    ⟨(17078833227/62500000000 : ℚ), (10965096857/10000000000 : ℚ), (-321129394437/1000000000000 : ℚ), 4⟩,
    ⟨(27813506983/100000000000 : ℚ), (3974631149/5000000000 : ℚ), (-238020881377/1000000000000 : ℚ), 4⟩,
    ⟨(283183213557/1000000000000 : ℚ), (1403817107/2500000000 : ℚ), (-172542328717/1000000000000 : ℚ), 4⟩,
    ⟨(288357146431/1000000000000 : ℚ), (3776470693/10000000000 : ℚ), (-30003689481/250000000000 : ℚ), 4⟩,
    ⟨(293607040649/1000000000000 : ℚ), (2305426629/10000000000 : ℚ), (-19306131507/250000000000 : ℚ), 4⟩,
    ⟨(14944116843/50000000000 : ℚ), (1112934911/10000000000 : ℚ), (-41908271219/1000000000000 : ℚ), 4⟩,
    ⟨(152066115539/500000000000 : ℚ), (67615793/5000000000 : ℚ), (-12437658921/1000000000000 : ℚ), 3⟩,
    ⟨(19331635247/62500000000 : ℚ), (-337044423/5000000000 : ℚ), (6189995713/500000000000 : ℚ), 3⟩,
    ⟨(314354307679/1000000000000 : ℚ), (-168664671/1250000000 : ℚ), (2089466121/62500000000 : ℚ), 3⟩,
    ⟨(79807011469/250000000000 : ℚ), (-958060049/5000000000 : ℚ), (12846058391/250000000000 : ℚ), 3⟩,
    ⟨(323880441781/1000000000000 : ℚ), (-2393912401/10000000000 : ℚ), (66745683249/1000000000000 : ℚ), 3⟩,
    ⟨(82066672569/250000000000 : ℚ), (-1398753117/5000000000 : ℚ), (3995214697/50000000000 : ℚ), 3⟩,
    ⟨(20771534337/62500000000 : ℚ), (-125530941/400000000 : ℚ), (91158989557/1000000000000 : ℚ), 3⟩,
    ⟨(84018686779/250000000000 : ℚ), (-3424980753/10000000000 : ℚ), (100740330939/1000000000000 : ℚ), 3⟩,
    ⟨(84855339901/250000000000 : ℚ), (-916098963/2500000000 : ℚ), (54413044249/500000000000 : ℚ), 3⟩,
    ⟨(342352157149/1000000000000 : ℚ), (-772346903/2000000000 : ℚ), (115552836067/1000000000000 : ℚ), 3⟩,
    ⟨(344838914569/1000000000000 : ℚ), (-3926749/9765625 : ℚ), (12102466833/100000000000 : ℚ), 3⟩,
    ⟨(34685768303/100000000000 : ℚ), (-4145183893/10000000000 : ℚ), (62659892671/500000000000 : ℚ), 3⟩,
    ⟨(21774313793/62500000000 : ℚ), (-4236538237/10000000000 : ℚ), (128495445171/1000000000000 : ℚ), 3⟩,
    ⟨(87354544981/250000000000 : ℚ), (-171864699/400000000 : ℚ), (65295811277/500000000000 : ℚ), 3⟩,
    ⟨(349935249373/1000000000000 : ℚ), (-2163207823/5000000000 : ℚ), (131633594099/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1082532309/2500000000 : ℚ), (26352711547/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (240503191959/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control709.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control709.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate709
