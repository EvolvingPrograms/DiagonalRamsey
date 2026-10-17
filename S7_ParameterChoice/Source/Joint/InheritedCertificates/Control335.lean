import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate335
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254426780763/1000000000000 : ℚ), (10771984173177/10000000000 : ℚ), (-274759058338909/1000000000000 : ℚ), 11⟩,
    ⟨(25531982803/100000000000 : ℚ), (586553510739/5000000000 : ℚ), (-30380191718433/1000000000000 : ℚ), 8⟩,
    ⟨(257097322031/1000000000000 : ℚ), (409167928991/10000000000 : ℚ), (-10829765790097/1000000000000 : ℚ), 7⟩,
    ⟨(129871072263/500000000000 : ℚ), (100246117129/5000000000 : ℚ), (-5443273694827/1000000000000 : ℚ), 6⟩,
    ⟨(26322882443/100000000000 : ℚ), (115619691277/10000000000 : ℚ), (-1613219251951/500000000000 : ℚ), 5⟩,
    ⟨(267523783109/1000000000000 : ℚ), (73281530051/10000000000 : ℚ), (-210409319977/100000000000 : ℚ), 5⟩,
    ⟨(136292828881/500000000000 : ℚ), (24673130187/5000000000 : ℚ), (-1822975817/1250000000 : ℚ), 4⟩,
    ⟨(27836569977/100000000000 : ℚ), (34617807581/10000000000 : ℚ), (-210610102711/200000000000 : ℚ), 4⟩,
    ⟨(284808244169/1000000000000 : ℚ), (39969999/16000000 : ℚ), (-97744193201/125000000000 : ℚ), 4⟩,
    ⟨(145925622867/500000000000 : ℚ), (9187718687/5000000000 : ℚ), (-591657679733/1000000000000 : ℚ), 3⟩,
    ⟨(299426876511/1000000000000 : ℚ), (854858119/625000000 : ℚ), (-452890570567/1000000000000 : ℚ), 3⟩,
    ⟨(38432772379/125000000000 : ℚ), (5117901301/5000000000 : ℚ), (-348527716851/1000000000000 : ℚ), 3⟩,
    ⟨(315879768943/1000000000000 : ℚ), (306025241/400000000 : ℚ), (-268012571831/1000000000000 : ℚ), 3⟩,
    ⟨(81149645063/250000000000 : ℚ), (5667737353/10000000000 : ℚ), (-204553610669/1000000000000 : ℚ), 3⟩,
    ⟨(166767323019/500000000000 : ℚ), (1029785103/2500000000 : ℚ), (-7681211199/50000000000 : ℚ), 3⟩,
    ⟨(68520381421/200000000000 : ℚ), (2890710719/10000000000 : ℚ), (-56058309807/500000000000 : ℚ), 3⟩,
    ⟨(35171304077/100000000000 : ℚ), (1902989787/10000000000 : ℚ), (-19460756089/250000000000 : ℚ), 2⟩,
    ⟨(90195075459/250000000000 : ℚ), (549746009/5000000000 : ℚ), (-123075743/2500000000 : ℚ), 2⟩,
    ⟨(369716367623/1000000000000 : ℚ), (219668719/5000000000 : ℚ), (-12563368027/500000000000 : ℚ), 2⟩,
    ⟨(378435178931/1000000000000 : ℚ), (-10751911/1000000000 : ℚ), (-584538663/125000000000 : ℚ), 2⟩,
    ⟨(193426384421/500000000000 : ℚ), (-56345351/1000000000 : ℚ), (12765318117/1000000000000 : ℚ), 2⟩,
    ⟨(98722017841/250000000000 : ℚ), (-945318179/10000000000 : ℚ), (27688130469/1000000000000 : ℚ), 2⟩,
    ⟨(20123185107/50000000000 : ℚ), (-63296217/500000000 : ℚ), (4046772399/100000000000 : ℚ), 2⟩,
    ⟨(81901340741/200000000000 : ℚ), (-191885387/1250000000 : ℚ), (6424208287/125000000000 : ℚ), 2⟩,
    ⟨(51993656013/125000000000 : ℚ), (-880173683/5000000000 : ℚ), (60689954263/1000000000000 : ℚ), 2⟩,
    ⟨(421729290113/1000000000000 : ℚ), (-973773617/5000000000 : ℚ), (68529983191/1000000000000 : ℚ), 2⟩,
    ⟨(213395582383/500000000000 : ℚ), (-1050590067/5000000000 : ℚ), (75047631917/1000000000000 : ℚ), 2⟩,
    ⟨(86217224689/200000000000 : ℚ), (-2224697181/10000000000 : ℚ), (8034554087/100000000000 : ℚ), 2⟩,
    ⟨(108643200837/250000000000 : ℚ), (-1160356887/5000000000 : ℚ), (4225065763/50000000000 : ℚ), 2⟩,
    ⟨(109304406461/250000000000 : ℚ), (-95646549/400000000 : ℚ), (43786075449/500000000000 : ℚ), 2⟩,
    ⟨(109748779961/250000000000 : ℚ), (-2437410129/10000000000 : ℚ), (89598222527/1000000000000 : ℚ), 2⟩,
    ⟨(439888167111/1000000000000 : ℚ), (-153770119/625000000 : ℚ), (18121011943/200000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2463176077/10000000000 : ℚ), (22682656841/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (17593518527/50000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control335.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control335.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate335
