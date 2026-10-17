import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate453
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36903503961/125000000000 : ℚ), (7105259486521/5000000000 : ℚ), (-84060658677531/200000000000 : ℚ), 12⟩,
    ⟨(295972851893/1000000000000 : ℚ), (310630673707/2000000000 : ℚ), (-46448877285403/1000000000000 : ℚ), 9⟩,
    ⟨(297455319279/1000000000000 : ℚ), (21773384791/400000000 : ℚ), (-3308079413003/200000000000 : ℚ), 7⟩,
    ⟨(299661156873/1000000000000 : ℚ), (67026996253/2500000000 : ℚ), (-8300143809529/1000000000000 : ℚ), 6⟩,
    ⟨(151284560627/500000000000 : ℚ), (38848848241/2500000000 : ℚ), (-4908910558733/1000000000000 : ℚ), 6⟩,
    ⟨(61230241427/200000000000 : ℚ), (98943533213/10000000000 : ℚ), (-798019579291/250000000000 : ℚ), 5⟩,
    ⟨(31037291707/100000000000 : ℚ), (6688056127/1000000000 : ℚ), (-1102221201469/500000000000 : ℚ), 5⟩,
    ⟨(157596796843/500000000000 : ℚ), (11762192109/2500000000 : ℚ), (-198073173067/125000000000 : ℚ), 4⟩,
    ⟨(10017712851/31250000000 : ℚ), (34001353709/10000000000 : ℚ), (-1170119662169/1000000000000 : ℚ), 4⟩,
    ⟨(81610205671/250000000000 : ℚ), (5001186343/2000000000 : ℚ), (-439652060079/500000000000 : ℚ), 4⟩,
    ⟨(166379529051/500000000000 : ℚ), (18571535201/10000000000 : ℚ), (-667356405201/1000000000000 : ℚ), 4⟩,
    ⟨(13578426777/40000000000 : ℚ), (13829915661/10000000000 : ℚ), (-508076940477/1000000000000 : ℚ), 3⟩,
    ⟨(43310139559/125000000000 : ℚ), (2049717961/2000000000 : ℚ), (-38531277691/100000000000 : ℚ), 3⟩,
    ⟨(353752788501/1000000000000 : ℚ), (7486944873/10000000000 : ℚ), (-288669741927/1000000000000 : ℚ), 3⟩,
    ⟨(180602827667/500000000000 : ℚ), (5319374631/10000000000 : ℚ), (-103133651/488281250 : ℚ), 3⟩,
    ⟨(36876794179/100000000000 : ℚ), (3592017931/10000000000 : ℚ), (-148196458457/1000000000000 : ℚ), 3⟩,
    ⟨(94091704729/250000000000 : ℚ), (2197315259/10000000000 : ℚ), (-96252732871/1000000000000 : ℚ), 3⟩,
    ⟨(95982276343/250000000000 : ℚ), (264618193/2500000000 : ℚ), (-52973342353/1000000000000 : ℚ), 3⟩,
    ⟨(78276394441/200000000000 : ℚ), (119664049/10000000000 : ℚ), (-2073721409/125000000000 : ℚ), 3⟩,
    ⟨(199326822117/500000000000 : ℚ), (-660325949/10000000000 : ℚ), (7107017653/500000000000 : ℚ), 3⟩,
    ⟨(405674091281/1000000000000 : ℚ), (-1312327109/10000000000 : ℚ), (20214989071/500000000000 : ℚ), 2⟩,
    ⟨(103093925651/250000000000 : ℚ), (-1859656207/10000000000 : ℚ), (62813403073/1000000000000 : ℚ), 2⟩,
    ⟨(209346969011/500000000000 : ℚ), (-72503337/312500000 : ℚ), (819441369/10000000000 : ℚ), 2⟩,
    ⟨(212283974737/500000000000 : ℚ), (-338418959/1250000000 : ℚ), (98269805153/1000000000000 : ℚ), 2⟩,
    ⟨(21497058351/50000000000 : ℚ), (-3031946611/10000000000 : ℚ), (28034273189/250000000000 : ℚ), 2⟩,
    ⟨(108690460909/250000000000 : ℚ), (-1651028911/5000000000 : ℚ), (30953659771/250000000000 : ℚ), 2⟩,
    ⟨(109745888393/250000000000 : ℚ), (-880998773/2500000000 : ℚ), (2670200361/20000000000 : ℚ), 2⟩,
    ⟨(110641409863/250000000000 : ℚ), (-1851302609/5000000000 : ℚ), (141382444831/1000000000000 : ℚ), 2⟩,
    ⟨(445473603833/1000000000000 : ℚ), (-960390791/2500000000 : ℚ), (147552324041/1000000000000 : ℚ), 2⟩,
    ⟨(447679441427/1000000000000 : ℚ), (-3943586461/10000000000 : ℚ), (152108392887/1000000000000 : ℚ), 2⟩,
    ⟨(449161908813/1000000000000 : ℚ), (-4010590329/10000000000 : ℚ), (77556484821/500000000000 : ℚ), 2⟩,
    ⟨(224953364509/500000000000 : ℚ), (-4043795339/10000000000 : ℚ), (156605646937/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-809586441/2000000000 : ℚ), (156791786607/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (312162478471/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control453.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control453.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate453
