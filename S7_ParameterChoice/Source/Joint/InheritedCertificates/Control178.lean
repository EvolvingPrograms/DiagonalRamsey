import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate178
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(272469510121/1000000000000 : ℚ), (5835542571257/5000000000 : ℚ), (-159419075774357/500000000000 : ℚ), 11⟩,
    ⟨(273468223931/1000000000000 : ℚ), (1270343480969/10000000000 : ℚ), (-35258537729983/1000000000000 : ℚ), 8⟩,
    ⟨(275456033391/1000000000000 : ℚ), (442778677443/10000000000 : ℚ), (-1257209630089/100000000000 : ℚ), 7⟩,
    ⟨(278413794809/1000000000000 : ℚ), (216811076753/10000000000 : ℚ), (-3160826776647/500000000000 : ℚ), 6⟩,
    ⟨(282313023327/1000000000000 : ℚ), (124955585143/10000000000 : ℚ), (-749867840921/200000000000 : ℚ), 5⟩,
    ⟨(287116167241/1000000000000 : ℚ), (39582977781/5000000000 : ℚ), (-611776370093/250000000000 : ℚ), 4⟩,
    ⟨(5855539393/20000000000 : ℚ), (2132053019/400000000 : ℚ), (-1697981039321/1000000000000 : ℚ), 4⟩,
    ⟨(74810228483/250000000000 : ℚ), (1870067263/500000000 : ℚ), (-245562945331/200000000000 : ℚ), 4⟩,
    ⟨(76611437193/250000000000 : ℚ), (13504950241/5000000000 : ℚ), (-913426145227/1000000000000 : ℚ), 3⟩,
    ⟨(314322087669/1000000000000 : ℚ), (19895421603/10000000000 : ℚ), (-43300545237/62500000000 : ℚ), 3⟩,
    ⟨(40349259647/125000000000 : ℚ), (7421380043/5000000000 : ℚ), (-531991493697/1000000000000 : ℚ), 3⟩,
    ⟨(165890063701/500000000000 : ℚ), (5573030321/5000000000 : ℚ), (-51387554863/125000000000 : ℚ), 3⟩,
    ⟨(341193697771/1000000000000 : ℚ), (2093428959/2500000000 : ℚ), (-158941768327/500000000000 : ℚ), 3⟩,
    ⟨(175472065227/500000000000 : ℚ), (625058921/1000000000 : ℚ), (-122229083237/500000000000 : ℚ), 3⟩,
    ⟨(72187504691/200000000000 : ℚ), (4595154561/10000000000 : ℚ), (-92785150649/500000000000 : ℚ), 2⟩,
    ⟨(46384704367/125000000000 : ℚ), (328414907/1000000000 : ℚ), (-137612598067/1000000000000 : ℚ), 2⟩,
    ⟨(2382917563/6250000000 : ℚ), (557951853/2500000000 : ℚ), (-49022747087/500000000000 : ℚ), 2⟩,
    ⟨(391406921561/1000000000000 : ℚ), (2689841/19531250 : ℚ), (-4065171359/62500000000 : ℚ), 2⟩,
    ⟨(200700157281/500000000000 : ℚ), (676252383/10000000000 : ℚ), (-37267143597/1000000000000 : ℚ), 2⟩,
    ⟨(82230149449/200000000000 : ℚ), (48298601/5000000000 : ℚ), (-3431136119/250000000000 : ℚ), 2⟩,
    ⟨(210282158807/500000000000 : ℚ), (-38586389/1000000000 : ℚ), (6333660199/1000000000000 : ℚ), 2⟩,
    ⟨(2684689799/6250000000 : ℚ), (-789273113/10000000000 : ℚ), (23477096693/1000000000000 : ℚ), 2⟩,
    ⟨(438022357347/1000000000000 : ℚ), (-1761593/15625000 : ℚ), (38142792607/1000000000000 : ℚ), 2⟩,
    ⟨(89179739249/200000000000 : ℚ), (-1410862973/10000000000 : ℚ), (12667018487/250000000000 : ℚ), 2⟩,
    ⟨(113275882771/250000000000 : ℚ), (-1647734369/10000000000 : ℚ), (61314275057/1000000000000 : ℚ), 2⟩,
    ⟨(229783737683/500000000000 : ℚ), (-368862477/2000000000 : ℚ), (35142033221/500000000000 : ℚ), 2⟩,
    ⟨(29076767361/62500000000 : ℚ), (-31335051/156250000 : ℚ), (38867132323/500000000000 : ℚ), 2⟩,
    ⟨(47003142169/100000000000 : ℚ), (-2134848417/10000000000 : ℚ), (10473172421/125000000000 : ℚ), 2⟩,
    ⟨(473930650207/1000000000000 : ℚ), (-447070063/2000000000 : ℚ), (22132187707/250000000000 : ℚ), 2⟩,
    ⟨(3815107293/8000000000 : ℚ), (-2309037553/10000000000 : ℚ), (18406371949/200000000000 : ℚ), 2⟩,
    ⟨(95775244217/200000000000 : ℚ), (-2357383409/10000000000 : ℚ), (23585551841/250000000000 : ℚ), 2⟩,
    ⟨(95974986979/200000000000 : ℚ), (-1190663799/5000000000 : ℚ), (95490031429/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1192155009/5000000000 : ℚ), (23908292229/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (71000613741/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control178.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control178.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate178
