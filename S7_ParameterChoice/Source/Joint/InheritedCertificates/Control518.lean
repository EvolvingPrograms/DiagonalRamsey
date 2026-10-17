import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate518
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(278974581701/1000000000000 : ℚ), (12995784100899/10000000000 : ℚ), (-181617194899123/500000000000 : ℚ), 12⟩,
    ⟨(279701372117/1000000000000 : ℚ), (1419915556247/10000000000 : ℚ), (-10035561890561/250000000000 : ℚ), 9⟩,
    ⟨(140573976779/500000000000 : ℚ), (24870284059/500000000 : ℚ), (-7147370824953/500000000000 : ℚ), 7⟩,
    ⟨(8853137333/31250000000 : ℚ), (61215265123/2500000000 : ℚ), (-1434663701881/200000000000 : ℚ), 6⟩,
    ⟨(11445518649/40000000000 : ℚ), (70919412507/5000000000 : ℚ), (-106062468759/25000000000 : ℚ), 6⟩,
    ⟨(289633340901/1000000000000 : ℚ), (1410261017/156250000 : ℚ), (-344839568293/125000000000 : ℚ), 5⟩,
    ⟨(146876428157/500000000000 : ℚ), (60970056651/10000000000 : ℚ), (-238138575297/125000000000 : ℚ), 5⟩,
    ⟨(298456839279/1000000000000 : ℚ), (2143120067/500000000 : ℚ), (-1369331798341/1000000000000 : ℚ), 4⟩,
    ⟨(303699987869/1000000000000 : ℚ), (6190788197/2000000000 : ℚ), (-505524232599/500000000000 : ℚ), 4⟩,
    ⟨(19339487981/62500000000 : ℚ), (1137344239/500000000 : ℚ), (-189904305403/250000000000 : ℚ), 4⟩,
    ⟨(315597098203/1000000000000 : ℚ), (4219622821/2500000000 : ℚ), (-18010537483/31250000000 : ℚ), 4⟩,
    ⟨(322136484271/1000000000000 : ℚ), (12555334649/10000000000 : ℚ), (-21928357987/50000000000 : ℚ), 3⟩,
    ⟨(164493494019/500000000000 : ℚ), (371637191/400000000 : ℚ), (-83087096499/250000000000 : ℚ), 3⟩,
    ⟨(336082635407/1000000000000 : ℚ), (1354834039/2000000000 : ℚ), (-124349521127/500000000000 : ℚ), 3⟩,
    ⟨(42919386427/125000000000 : ℚ), (959811249/2000000000 : ℚ), (-18163103303/100000000000 : ℚ), 3⟩,
    ⟨(175367159169/500000000000 : ℚ), (3225146849/10000000000 : ℚ), (-63515775983/500000000000 : ℚ), 3⟩,
    ⟨(358149250183/1000000000000 : ℚ), (1954301969/10000000000 : ℚ), (-1025047579/12500000000 : ℚ), 3⟩,
    ⟨(73105695421/200000000000 : ℚ), (458241409/5000000000 : ℚ), (-22231724369/500000000000 : ℚ), 3⟩,
    ⟨(186400466557/500000000000 : ℚ), (15199347/2500000000 : ℚ), (-12883329013/1000000000000 : ℚ), 3⟩,
    ⟨(94974145121/250000000000 : ℚ), (-325153729/5000000000 : ℚ), (1734078891/125000000000 : ℚ), 3⟩,
    ⟨(386747084251/1000000000000 : ℚ), (-62245359/500000000 : ℚ), (36660330981/1000000000000 : ℚ), 3⟩,
    ⟨(393286470319/1000000000000 : ℚ), (-1744223107/10000000000 : ℚ), (11226241593/200000000000 : ℚ), 3⟩,
    ⟨(15978070433/40000000000 : ℚ), (-541109959/2500000000 : ℚ), (36392501167/500000000000 : ℚ), 3⟩,
    ⟨(405183580653/1000000000000 : ℚ), (-2517985977/10000000000 : ℚ), (87007214103/1000000000000 : ℚ), 2⟩,
    ⟨(410426729243/1000000000000 : ℚ), (-2814450463/10000000000 : ℚ), (24774035701/250000000000 : ℚ), 2⟩,
    ⟨(25945669513/62500000000 : ℚ), (-3061246709/10000000000 : ℚ), (109282699343/1000000000000 : ℚ), 2⟩,
    ⟨(419250227621/1000000000000 : ℚ), (-51001549/156250000 : ℚ), (58872553151/500000000000 : ℚ), 2⟩,
    ⟨(422745602297/1000000000000 : ℚ), (-3427402191/10000000000 : ℚ), (31154976459/250000000000 : ℚ), 2⟩,
    ⟨(212791586933/500000000000 : ℚ), (-55538843/156250000 : ℚ), (65005117219/500000000000 : ℚ), 2⟩,
    ⟨(427735614963/1000000000000 : ℚ), (-729562337/2000000000 : ℚ), (133992018371/1000000000000 : ℚ), 2⟩,
    ⟨(85836439281/200000000000 : ℚ), (-3709113279/10000000000 : ℚ), (27323705259/200000000000 : ℚ), 2⟩,
    ⟨(21495449341/50000000000 : ℚ), (-3739495399/10000000000 : ℚ), (137923575203/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1871640357/5000000000 : ℚ), (69043163261/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (70723303433/200000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control518.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control518.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate518
