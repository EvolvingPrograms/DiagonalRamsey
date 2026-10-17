import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate85
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(52329772767/250000000000 : ℚ), (6665256897369/10000000000 : ℚ), (-140201135009727/1000000000000 : ℚ), 10⟩,
    ⟨(210814203013/1000000000000 : ℚ), (358159169029/5000000000 : ℚ), (-7757493850899/500000000000 : ℚ), 7⟩,
    ⟨(53447507039/250000000000 : ℚ), (61347037667/2500000000 : ℚ), (-1385044341447/250000000000 : ℚ), 6⟩,
    ⟨(54554476919/250000000000 : ℚ), (29468466971/2500000000 : ℚ), (-2792104276247/1000000000000 : ℚ), 5⟩,
    ⟨(224055198671/1000000000000 : ℚ), (8327930287/1250000000 : ℚ), (-66451502007/40000000000 : ℚ), 4⟩,
    ⟨(231245684839/1000000000000 : ℚ), (20713663577/5000000000 : ℚ), (-43556994093/40000000000 : ℚ), 4⟩,
    ⟨(239720117867/1000000000000 : ℚ), (3427538649/1250000000 : ℚ), (-759757890277/1000000000000 : ℚ), 3⟩,
    ⟨(249396884333/1000000000000 : ℚ), (473977329/250000000 : ℚ), (-276616037597/500000000000 : ℚ), 3⟩,
    ⟨(52036558337/200000000000 : ℚ), (6765388961/5000000000 : ℚ), (-103793794859/250000000000 : ℚ), 3⟩,
    ⟨(271973965739/1000000000000 : ℚ), (9884348697/10000000000 : ℚ), (-63663065359/200000000000 : ℚ), 2⟩,
    ⟨(71164212761/250000000000 : ℚ), (7343538929/10000000000 : ℚ), (-247710646993/1000000000000 : ℚ), 2⟩,
    ⟨(298109304481/1000000000000 : ℚ), (5518939529/10000000000 : ℚ), (-97310207751/500000000000 : ℚ), 2⟩,
    ⟨(31220177157/100000000000 : ℚ), (1043714027/2500000000 : ℚ), (-4801802741/31250000000 : ℚ), 2⟩,
    ⟨(81699633537/250000000000 : ℚ), (1581383019/5000000000 : ℚ), (-30339669121/250000000000 : ℚ), 2⟩,
    ⟨(341759017413/1000000000000 : ℚ), (1192957879/5000000000 : ℚ), (-47708415537/500000000000 : ℚ), 2⟩,
    ⟨(356939143733/1000000000000 : ℚ), (1779493179/10000000000 : ℚ), (-18562657651/250000000000 : ℚ), 2⟩,
    ⟨(372192720193/1000000000000 : ℚ), (51961499/400000000 : ℚ), (-56748638027/1000000000000 : ℚ), 2⟩,
    ⟨(387372846513/1000000000000 : ℚ), (913414843/10000000000 : ℚ), (-42113308403/1000000000000 : ℚ), 2⟩,
    ⟨(201166664889/500000000000 : ℚ), (15010707/250000000 : ℚ), (-1860132209/62500000000 : ℚ), 2⟩,
    ⟨(104232523089/250000000000 : ℚ), (343999859/10000000000 : ℚ), (-9631574489/500000000000 : ℚ), 2⟩,
    ⟨(86204511889/200000000000 : ℚ), (26464017/2000000000 : ℚ), (-10292102871/1000000000000 : ℚ), 2⟩,
    ⟨(222237506441/500000000000 : ℚ), (-2169619/500000000 : ℚ), (-650725673/250000000000 : ℚ), 2⟩,
    ⟨(457157898187/1000000000000 : ℚ), (-4743421/250000000 : ℚ), (3992747023/1000000000000 : ℚ), 2⟩,
    ⟨(234474536121/500000000000 : ℚ), (-77929223/2500000000 : ℚ), (9639852769/1000000000000 : ℚ), 2⟩,
    ⟨(239867489797/500000000000 : ℚ), (-82630471/2000000000 : ℚ), (7225277661/500000000000 : ℚ), 2⟩,
    ⟨(489411746059/1000000000000 : ℚ), (-248486039/5000000000 : ℚ), (9255861433/500000000000 : ℚ), 1⟩,
    ⟨(497886179087/1000000000000 : ℚ), (-56542407/1000000000 : ℚ), (87562159/4000000000 : ℚ), 1⟩,
    ⟨(101015333051/200000000000 : ℚ), (-620227299/10000000000 : ℚ), (6159661999/250000000000 : ℚ), 1⟩,
    ⟨(81746233/160000000 : ℚ), (-41417601/625000000 : ℚ), (26795222027/1000000000000 : ℚ), 1⟩,
    ⟨(51534183577/100000000000 : ℚ), (-346873511/5000000000 : ℚ), (2838923953/100000000000 : ℚ), 1⟩,
    ⟨(518317660913/1000000000000 : ℚ), (-11157811/156250000 : ℚ), (29441126789/1000000000000 : ℚ), 1⟩,
    ⟨(259906386429/500000000000 : ℚ), (-724171423/10000000000 : ℚ), (5992780607/200000000000 : ℚ), 1⟩,
    ⟨(13/25 : ℚ), (-1450851/20000000 : ℚ), (1876818957/62500000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (14787067097/50000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control85.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control85.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate85
