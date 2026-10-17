import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate301
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(119700086047/500000000000 : ℚ), (10687808598389/10000000000 : ℚ), (-256532108744493/1000000000000 : ℚ), 11⟩,
    ⟨(120134642777/500000000000 : ℚ), (581696463173/5000000000 : ℚ), (-5673026112771/200000000000 : ℚ), 8⟩,
    ⟨(241999142437/1000000000000 : ℚ), (40551368067/1000000000 : ℚ), (-10111648399123/1000000000000 : ℚ), 7⟩,
    ⟨(61143270819/250000000000 : ℚ), (39710573849/2000000000 : ℚ), (-1270617017587/250000000000 : ℚ), 6⟩,
    ⟨(61991579903/250000000000 : ℚ), (114410259679/10000000000 : ℚ), (-3012663663669/1000000000000 : ℚ), 5⟩,
    ⟨(126073086363/500000000000 : ℚ), (9056973183/1250000000 : ℚ), (-982366321379/500000000000 : ℚ), 5⟩,
    ⟨(128536194173/500000000000 : ℚ), (1218747343/250000000 : ℚ), (-680902820959/500000000000 : ℚ), 4⟩,
    ⟨(262697524323/1000000000000 : ℚ), (17085385123/5000000000 : ℚ), (-983304678829/1000000000000 : ℚ), 4⟩,
    ⟨(67241851881/250000000000 : ℚ), (12318676909/5000000000 : ℚ), (-730122228621/1000000000000 : ℚ), 4⟩,
    ⟨(34477706943/125000000000 : ℚ), (9052927083/5000000000 : ℚ), (-552370897991/1000000000000 : ℚ), 3⟩,
    ⟨(283194258229/1000000000000 : ℚ), (13463353/10000000 : ℚ), (-211360244703/500000000000 : ℚ), 3⟩,
    ⟨(58202842677/200000000000 : ℚ), (2515841921/2500000000 : ℚ), (-32518299099/100000000000 : ℚ), 3⟩,
    ⟨(299206210569/1000000000000 : ℚ), (938823599/1250000000 : ℚ), (-62475712799/250000000000 : ℚ), 3⟩,
    ⟨(307691356369/1000000000000 : ℚ), (2776507357/5000000000 : ℚ), (-95269990233/500000000000 : ℚ), 3⟩,
    ⟨(158193967097/500000000000 : ℚ), (1006095169/2500000000 : ℚ), (-142869141989/1000000000000 : ℚ), 3⟩,
    ⟨(81303047811/250000000000 : ℚ), (2811786451/10000000000 : ℚ), (-51994979247/500000000000 : ℚ), 3⟩,
    ⟨(3340791451/10000000000 : ℚ), (918339097/5000000000 : ℚ), (-17965294093/250000000000 : ℚ), 2⟩,
    ⟨(6858068043/20000000000 : ℚ), (521625589/5000000000 : ℚ), (-9003101517/200000000000 : ℚ), 2⟩,
    ⟨(14063999199/40000000000 : ℚ), (3129179/80000000 : ℚ), (-22379221587/1000000000000 : ℚ), 2⟩,
    ⟨(14403405031/40000000000 : ℚ), (-116619/7812500 : ℚ), (-63093757/20000000000 : ℚ), 2⟩,
    ⟨(368277122959/1000000000000 : ℚ), (-75008029/1250000000 : ℚ), (207157163/15625000000 : ℚ), 2⟩,
    ⟨(75219415623/200000000000 : ℚ), (-195565423/2000000000 : ℚ), (27314888681/1000000000000 : ℚ), 2⟩,
    ⟨(479337101/1250000000 : ℚ), (-647584823/5000000000 : ℚ), (9841230367/250000000000 : ℚ), 2⟩,
    ⟨(19516196441/50000000000 : ℚ), (-780870339/5000000000 : ℚ), (12419256923/250000000000 : ℚ), 2⟩,
    ⟨(396593812021/1000000000000 : ℚ), (-1784963083/10000000000 : ℚ), (913421163/15625000000 : ℚ), 2⟩,
    ⟨(201109473999/500000000000 : ℚ), (-1970562973/10000000000 : ℚ), (13174264501/200000000000 : ℚ), 2⟩,
    ⟨(203572581809/500000000000 : ℚ), (-424591029/2000000000 : ℚ), (18009498033/250000000000 : ℚ), 2⟩,
    ⟨(102831254183/250000000000 : ℚ), (-1122762869/5000000000 : ℚ), (15410761079/200000000000 : ℚ), 2⟩,
    ⟨(103679563267/250000000000 : ℚ), (-2340839949/10000000000 : ℚ), (40495193167/500000000000 : ℚ), 2⟩,
    ⟨(417292193907/1000000000000 : ℚ), (-2410793933/10000000000 : ℚ), (83900466457/1000000000000 : ℚ), 2⟩,
    ⟨(41902205079/100000000000 : ℚ), (-1228361983/5000000000 : ℚ), (17164210239/200000000000 : ℚ), 2⟩,
    ⟨(1679564657/4000000000 : ℚ), (-15496761/62500000 : ℚ), (43387820199/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-31028961/125000000 : ℚ), (43447349997/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (350685539537/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control301.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control301.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate301
