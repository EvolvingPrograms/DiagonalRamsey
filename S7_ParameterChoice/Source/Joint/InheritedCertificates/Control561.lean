import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate561
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(302727889473/1000000000000 : ℚ), (2031280610257/1250000000 : ℚ), (-61583240555689/125000000000 : ℚ), 12⟩,
    ⟨(303340370147/1000000000000 : ℚ), (444773992821/2500000000 : ℚ), (-5442074779189/100000000000 : ℚ), 9⟩,
    ⟨(76139858243/250000000000 : ℚ), (124972733593/2000000000 : ℚ), (-3872199323607/200000000000 : ℚ), 8⟩,
    ⟨(306373337707/1000000000000 : ℚ), (61687097671/2000000000 : ℚ), (-9701503560759/1000000000000 : ℚ), 7⟩,
    ⟨(9648894233/31250000000 : ℚ), (22387938563/1250000000 : ℚ), (-5726208826187/1000000000000 : ℚ), 6⟩,
    ⟨(311710236909/1000000000000 : ℚ), (114193367793/10000000000 : ℚ), (-3713714438253/1000000000000 : ℚ), 5⟩,
    ⟨(7879545853/25000000000 : ℚ), (77236537193/10000000000 : ℚ), (-2556019569709/1000000000000 : ℚ), 5⟩,
    ⟨(319145973711/1000000000000 : ℚ), (54315123683/10000000000 : ℚ), (-1829458958331/1000000000000 : ℚ), 5⟩,
    ⟨(6471289577/20000000000 : ℚ), (4898753133/1250000000 : ℚ), (-83979794751/62500000000 : ℚ), 4⟩,
    ⟨(328394796917/1000000000000 : ℚ), (1149165393/400000000 : ℚ), (-1002853140531/1000000000000 : ℚ), 4⟩,
    ⟨(333590409309/1000000000000 : ℚ), (10610943279/5000000000 : ℚ), (-754492386069/1000000000000 : ℚ), 4⟩,
    ⟨(169550639719/500000000000 : ℚ), (3134224149/2000000000 : ℚ), (-567881477089/1000000000000 : ℚ), 4⟩,
    ⟨(86218583653/250000000000 : ℚ), (1433069029/1250000000 : ℚ), (-424083964307/1000000000000 : ℚ), 4⟩,
    ⟨(70170795431/200000000000 : ℚ), (8209971403/10000000000 : ℚ), (-310913619687/1000000000000 : ℚ), 3⟩,
    ⟨(356982619839/1000000000000 : ℚ), (5647182577/10000000000 : ℚ), (-220244576831/1000000000000 : ℚ), 3⟩,
    ⟨(181600620243/500000000000 : ℚ), (719684187/2000000000 : ℚ), (-73247179829/500000000000 : ℚ), 3⟩,
    ⟨(184724975189/500000000000 : ℚ), (1939178449/10000000000 : ℚ), (-8572975257/100000000000 : ℚ), 3⟩,
    ⟨(15026742841/40000000000 : ℚ), (580381033/10000000000 : ℚ), (-35119517399/1000000000000 : ℚ), 3⟩,
    ⟨(381797213709/1000000000000 : ℚ), (-271429357/5000000000 : ℚ), (3705855691/500000000000 : ℚ), 3⟩,
    ⟨(96944214063/250000000000 : ℚ), (-739271429/5000000000 : ℚ), (21704326767/500000000000 : ℚ), 3⟩,
    ⟨(196774955713/500000000000 : ℚ), (-452529471/2000000000 : ℚ), (3701785303/50000000000 : ℚ), 3⟩,
    ⟨(79812156311/200000000000 : ℚ), (-2922428097/10000000000 : ℚ), (50089786687/500000000000 : ℚ), 3⟩,
    ⟨(404256393947/1000000000000 : ℚ), (-869678711/2500000000 : ℚ), (122520785987/1000000000000 : ℚ), 3⟩,
    ⟨(204543356007/500000000000 : ℚ), (-1973765527/5000000000 : ℚ), (70792239343/500000000000 : ℚ), 3⟩,
    ⟨(413505217153/1000000000000 : ℚ), (-4341255671/10000000000 : ℚ), (39444265943/250000000000 : ℚ), 3⟩,
    ⟨(52183669593/125000000000 : ℚ), (-1167366929/2500000000 : ℚ), (42853280771/250000000000 : ℚ), 3⟩,
    ⟨(84188190791/200000000000 : ℚ), (-2469783577/5000000000 : ℚ), (182735387491/1000000000000 : ℚ), 3⟩,
    ⟨(423886575407/1000000000000 : ℚ), (-2578617431/5000000000 : ℚ), (191929723437/1000000000000 : ℚ), 3⟩,
    ⟨(426277853157/1000000000000 : ℚ), (-532677441/1000000000 : ℚ), (39827284983/200000000000 : ℚ), 3⟩,
    ⟨(107022939473/250000000000 : ℚ), (-5451364803/10000000000 : ℚ), (6389333949/31250000000 : ℚ), 3⟩,
    ⟨(429310820717/1000000000000 : ℚ), (-55332441/100000000 : ℚ), (51992211897/250000000000 : ℚ), 3⟩,
    ⟨(429923301391/1000000000000 : ℚ), (-1114767461/2000000000 : ℚ), (209712799091/1000000000000 : ℚ), 3⟩,
    ⟨(43/100 : ℚ), (-1115779081/2000000000 : ℚ), (6560321187/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (61871116829/200000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control561.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control561.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate561
