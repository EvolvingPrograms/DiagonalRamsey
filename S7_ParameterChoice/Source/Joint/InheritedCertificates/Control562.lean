import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate562
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(102720528723/500000000000 : ℚ), (1855019405689/1250000000 : ℚ), (-152683380803211/500000000000 : ℚ), 12⟩,
    ⟨(51474027551/250000000000 : ℚ), (405792760241/2500000000 : ℚ), (-16862471399019/500000000000 : ℚ), 9⟩,
    ⟨(206801833313/1000000000000 : ℚ), (569265389809/10000000000 : ℚ), (-2398680112273/200000000000 : ℚ), 8⟩,
    ⟨(41629900833/200000000000 : ℚ), (280470009237/10000000000 : ℚ), (-600588899489/100000000000 : ℚ), 7⟩,
    ⟨(13120383997/62500000000 : ℚ), (81250229657/5000000000 : ℚ), (-221350766173/62500000000 : ℚ), 6⟩,
    ⟨(106057321331/500000000000 : ℚ), (25833110109/2500000000 : ℚ), (-2293901204331/1000000000000 : ℚ), 5⟩,
    ⟨(214693923857/1000000000000 : ℚ), (69668510649/10000000000 : ℚ), (-315194867289/200000000000 : ℚ), 5⟩,
    ⟨(217639147647/1000000000000 : ℚ), (48803466731/10000000000 : ℚ), (-1125228911483/1000000000000 : ℚ), 5⟩,
    ⟨(220921949919/1000000000000 : ℚ), (7008647759/2000000000 : ℚ), (-102959630261/125000000000 : ℚ), 4⟩,
    ⟨(56127678873/250000000000 : ℚ), (25530230599/10000000000 : ℚ), (-15298215287/25000000000 : ℚ), 4⟩,
    ⟨(228370882591/1000000000000 : ℚ), (9352209027/5000000000 : ℚ), (-457447875343/1000000000000 : ℚ), 4⟩,
    ⟨(232465275697/1000000000000 : ℚ), (13656857087/10000000000 : ℚ), (-68240306317/200000000000 : ℚ), 4⟩,
    ⟨(236754463567/1000000000000 : ℚ), (4914891409/5000000000 : ℚ), (-125728204081/500000000000 : ℚ), 4⟩,
    ⟨(7537410593/31250000000 : ℚ), (343309553/500000000 : ℚ), (-90331981781/500000000000 : ℚ), 3⟩,
    ⟨(245750516531/1000000000000 : ℚ), (2264735541/5000000000 : ℚ), (-123792993079/1000000000000 : ℚ), 3⟩,
    ⟨(125185372359/500000000000 : ℚ), (3322701/12500000 : ℚ), (-3095572873/40000000000 : ℚ), 3⟩,
    ⟨(127506664107/500000000000 : ℚ), (569664449/5000000000 : ℚ), (-19510770833/500000000000 : ℚ), 3⟩,
    ⟨(259633556401/1000000000000 : ℚ), (-107684133/10000000000 : ℚ), (-1388343857/200000000000 : ℚ), 3⟩,
    ⟨(66046733489/250000000000 : ℚ), (-570762431/5000000000 : ℚ), (100646073/5000000000 : ℚ), 3⟩,
    ⟨(53725921873/200000000000 : ℚ), (-401097129/2000000000 : ℚ), (43141167891/1000000000000 : ℚ), 3⟩,
    ⟨(54583759447/200000000000 : ℚ), (-2731935471/10000000000 : ℚ), (62808175991/1000000000000 : ℚ), 3⟩,
    ⟨(277013190341/1000000000000 : ℚ), (-3345333983/10000000000 : ℚ), (79672138319/1000000000000 : ℚ), 3⟩,
    ⟨(438864621/1562500000 : ℚ), (-772864463/2000000000 : ℚ), (94147278181/1000000000000 : ℚ), 3⟩,
    ⟨(284462123013/1000000000000 : ℚ), (-430319903/1000000000 : ℚ), (26637937117/250000000000 : ℚ), 3⟩,
    ⟨(57548985057/200000000000 : ℚ), (-4672978173/10000000000 : ℚ), (29282622417/250000000000 : ℚ), 3⟩,
    ⟨(72672537269/250000000000 : ℚ), (-2491078961/5000000000 : ℚ), (31518004587/250000000000 : ℚ), 3⟩,
    ⟨(29326943027/100000000000 : ℚ), (-209491401/400000000 : ℚ), (133520916961/1000000000000 : ℚ), 3⟩,
    ⟨(14772896449/50000000000 : ℚ), (-5443372391/10000000000 : ℚ), (6979360723/50000000000 : ℚ), 3⟩,
    ⟨(297234568767/1000000000000 : ℚ), (-1120841763/2000000000 : ℚ), (144353458929/1000000000000 : ℚ), 3⟩,
    ⟨(298582239619/1000000000000 : ℚ), (-5722587553/10000000000 : ℚ), (29576005383/200000000000 : ℚ), 3⟩,
    ⟨(37435995341/125000000000 : ℚ), (-5800472003/10000000000 : ℚ), (18776129429/125000000000 : ℚ), 3⟩,
    ⟨(149971507743/500000000000 : ℚ), (-5839110859/10000000000 : ℚ), (18920887571/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-1168785333/2000000000 : ℚ), (7575578051/50000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (98465180559/250000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control562.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control562.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate562
