import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate500
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36432733209/125000000000 : ℚ), (15240842344093/10000000000 : ℚ), (-444951702406947/1000000000000 : ℚ), 12⟩,
    ⟨(146064281319/500000000000 : ℚ), (1667073695741/10000000000 : ℚ), (-24580775481451/500000000000 : ℚ), 9⟩,
    ⟨(146727767957/500000000000 : ℚ), (73104897643/1250000000 : ℚ), (-437454887351/25000000000 : ℚ), 7⟩,
    ⟨(147715003011/500000000000 : ℚ), (288339658229/10000000000 : ℚ), (-8774435311761/1000000000000 : ℚ), 6⟩,
    ⟨(59606591547/200000000000 : ℚ), (83629622411/5000000000 : ℚ), (-2592102618427/500000000000 : ℚ), 6⟩,
    ⟨(60247864641/200000000000 : ℚ), (106556514507/10000000000 : ℚ), (-3366617694661/1000000000000 : ℚ), 5⟩,
    ⟨(15250911169/50000000000 : ℚ), (72039041251/10000000000 : ℚ), (-1160504625037/500000000000 : ℚ), 5⟩,
    ⟨(154666632693/500000000000 : ℚ), (10132186747/2000000000 : ℚ), (-1664757110333/1000000000000 : ℚ), 4⟩,
    ⟨(314142893009/1000000000000 : ℚ), (457197921/125000000 : ℚ), (-612973098749/500000000000 : ℚ), 4⟩,
    ⟨(159700393453/500000000000 : ℚ), (5369984183/2000000000 : ℚ), (-91803967687/100000000000 : ℚ), 4⟩,
    ⟨(65011262137/200000000000 : ℚ), (9940830117/5000000000 : ℚ), (-86703482307/125000000000 : ℚ), 4⟩,
    ⟨(331054998559/1000000000000 : ℚ), (14737965291/10000000000 : ℚ), (-20998960279/40000000000 : ℚ), 3⟩,
    ⟨(337339079887/1000000000000 : ℚ), (10846266597/10000000000 : ℚ), (-197488677249/500000000000 : ℚ), 3⟩,
    ⟨(42981004441/125000000000 : ℚ), (7840073029/10000000000 : ℚ), (-292633691547/1000000000000 : ℚ), 3⟩,
    ⟨(175259590341/500000000000 : ℚ), (5476461663/10000000000 : ℚ), (-210606044031/1000000000000 : ℚ), 3⟩,
    ⟨(14291530743/40000000000 : ℚ), (717925957/2000000000 : ℚ), (-35963650981/250000000000 : ℚ), 3⟩,
    ⟨(36409010919/100000000000 : ℚ), (257946439/1250000000 : ℚ), (-88829155281/1000000000000 : ℚ), 3⟩,
    ⟨(370859197083/1000000000000 : ℚ), (815389767/10000000000 : ℚ), (-42974743117/1000000000000 : ℚ), 3⟩,
    ⟨(377530342237/1000000000000 : ℚ), (-21523171/1000000000 : ℚ), (-552379047/125000000000 : ℚ), 3⟩,
    ⟨(192019648939/500000000000 : ℚ), (-536430163/5000000000 : ℚ), (28231161993/1000000000000 : ℚ), 3⟩,
    ⟨(195161689603/500000000000 : ℚ), (-111928713/625000000 : ℚ), (56025689061/1000000000000 : ℚ), 3⟩,
    ⟨(9908051677/25000000000 : ℚ), (-1197239263/5000000000 : ℚ), (7976379353/100000000000 : ℚ), 3⟩,
    ⟨(401977590859/1000000000000 : ℚ), (-1451498077/5000000000 : ℚ), (50029368639/500000000000 : ℚ), 3⟩,
    ⟨(101808871189/250000000000 : ℚ), (-3331231251/10000000000 : ℚ), (117383676681/1000000000000 : ℚ), 2⟩,
    ⟨(412045112379/1000000000000 : ℚ), (-3690626089/10000000000 : ℚ), (132104785883/1000000000000 : ℚ), 2⟩,
    ⟨(83272030877/200000000000 : ℚ), (-249377017/625000000 : ℚ), (72252766841/500000000000 : ℚ), 2⟩,
    ⟨(2625869091/6250000000 : ℚ), (-1059071873/2500000000 : ℚ), (19350588059/125000000000 : ℚ), 2⟩,
    ⟨(42334542003/100000000000 : ℚ), (-2217320961/5000000000 : ℚ), (163169900513/1000000000000 : ℚ), 2⟩,
    ⟨(425948371743/1000000000000 : ℚ), (-4589074297/10000000000 : ℚ), (84863849989/500000000000 : ℚ), 2⟩,
    ⟨(427922841851/1000000000000 : ℚ), (-2351262543/5000000000 : ℚ), (4364281681/25000000000 : ℚ), 2⟩,
    ⟨(429249815127/1000000000000 : ℚ), (-4777065473/10000000000 : ℚ), (4444148787/25000000000 : ℚ), 2⟩,
    ⟨(429916512093/1000000000000 : ℚ), (-481401481/1000000000 : ℚ), (3587064619/20000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-481861861/1000000000 : ℚ), (179551175131/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (77956879017/250000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control500.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control500.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate500
