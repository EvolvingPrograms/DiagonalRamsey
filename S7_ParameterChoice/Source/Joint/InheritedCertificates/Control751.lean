import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate751
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(451352225839/1000000000000 : ℚ), (6917752549041/5000000000 : ℚ), (-312599256798423/500000000000 : ℚ), 13⟩,
    ⟨(452067574147/1000000000000 : ℚ), (1517714073379/10000000000 : ℚ), (-69070069991381/1000000000000 : ℚ), 10⟩,
    ⟨(7085802837/15625000000 : ℚ), (534605933709/10000000000 : ℚ), (-24579950264713/1000000000000 : ℚ), 8⟩,
    ⟨(455609936059/1000000000000 : ℚ), (26481037637/1000000000 : ℚ), (-3080666938159/250000000000 : ℚ), 7⟩,
    ⟨(229201417391/500000000000 : ℚ), (38596481497/2500000000 : ℚ), (-7278744660349/1000000000000 : ℚ), 7⟩,
    ⟨(230921590297/500000000000 : ℚ), (19774771949/2000000000 : ℚ), (-4725763709393/1000000000000 : ℚ), 6⟩,
    ⟨(93179568217/200000000000 : ℚ), (67210200957/10000000000 : ℚ), (-3257680786387/1000000000000 : ℚ), 6⟩,
    ⟨(470527767659/1000000000000 : ℚ), (23767277333/5000000000 : ℚ), (-1168432698209/500000000000 : ℚ), 5⟩,
    ⟨(475688371591/1000000000000 : ℚ), (1726365203/500000000 : ℚ), (-1721752793837/1000000000000 : ℚ), 5⟩,
    ⟨(120332488361/250000000000 : ℚ), (25516161949/10000000000 : ℚ), (-645370992847/500000000000 : ℚ), 5⟩,
    ⟨(487398181701/1000000000000 : ℚ), (9520242371/5000000000 : ℚ), (-195441520619/200000000000 : ℚ), 5⟩,
    ⟨(493834616007/1000000000000 : ℚ), (2849586393/2000000000 : ℚ), (-742164451799/1000000000000 : ℚ), 4⟩,
    ⟨(500577269981/1000000000000 : ℚ), (10614477589/10000000000 : ℚ), (-140392367191/250000000000 : ℚ), 4⟩,
    ⟨(507561208179/1000000000000 : ℚ), (3901961229/5000000000 : ℚ), (-83988673011/200000000000 : ℚ), 4⟩,
    ⟨(257359585729/500000000000 : ℚ), (2796400907/5000000000 : ℚ), (-306957266593/1000000000000 : ℚ), 4⟩,
    ⟨(6524777809/12500000000 : ℚ), (3828092133/10000000000 : ℚ), (-13469238427/62500000000 : ℚ), 4⟩,
    ⟨(52928042079/100000000000 : ℚ), (300289899/1250000000 : ℚ), (-35145679721/250000000000 : ℚ), 4⟩,
    ⟨(134135868513/250000000000 : ℚ), (1238347117/10000000000 : ℚ), (-39283263537/500000000000 : ℚ), 4⟩,
    ⟨(543701437331/1000000000000 : ℚ), (17486061/625000000 : ℚ), (-134008787/5000000000 : ℚ), 3⟩,
    ⟨(550685375529/1000000000000 : ℚ), (-64410943/1250000000 : ℚ), (1043532499/62500000000 : ℚ), 3⟩,
    ⟨(557428029503/1000000000000 : ℚ), (-589195059/5000000000 : ℚ), (26715500923/500000000000 : ℚ), 3⟩,
    ⟨(563864463809/1000000000000 : ℚ), (-1733545959/10000000000 : ℚ), (422759593/5000000000 : ℚ), 3⟩,
    ⟨(284966346033/500000000000 : ℚ), (-2199202079/10000000000 : ℚ), (110947309649/1000000000000 : ℚ), 3⟩,
    ⟨(575574273919/1000000000000 : ℚ), (-1294811171/5000000000 : ℚ), (66653495631/500000000000 : ℚ), 3⟩,
    ⟨(580734877851/1000000000000 : ℚ), (-728970481/2500000000 : ℚ), (152168657953/1000000000000 : ℚ), 3⟩,
    ⟨(73170600553/125000000000 : ℚ), (-637318319/2000000000 : ℚ), (167951627587/1000000000000 : ℚ), 3⟩,
    ⟨(147354866229/250000000000 : ℚ), (-1704215839/5000000000 : ℚ), (180981884567/1000000000000 : ℚ), 3⟩,
    ⟨(74107476341/125000000000 : ℚ), (-35865493/100000000 : ℚ), (191510869161/1000000000000 : ℚ), 3⟩,
    ⟨(595652709451/1000000000000 : ℚ), (-372485519/1000000000 : ℚ), (6241551781/31250000000 : ℚ), 3⟩,
    ⟨(597771263941/1000000000000 : ℚ), (-3826244629/10000000000 : ℚ), (205779634277/1000000000000 : ℚ), 3⟩,
    ⟨(599195071363/1000000000000 : ℚ), (-121648723/312500000 : ℚ), (209760400361/1000000000000 : ℚ), 3⟩,
    ⟨(599910419671/1000000000000 : ℚ), (-1962849941/5000000000 : ℚ), (211735369997/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-491225351/1250000000 : ℚ), (211981527151/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (337241264671/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control751.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control751.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate751
