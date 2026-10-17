import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate488
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(277112219449/1000000000000 : ℚ), (13126261635531/10000000000 : ℚ), (-364444898896131/1000000000000 : ℚ), 12⟩,
    ⟨(277847972243/1000000000000 : ℚ), (286783479289/2000000000 : ℚ), (-2517339648107/62500000000 : ℚ), 9⟩,
    ⟨(27931239213/100000000000 : ℚ), (251096882591/5000000000 : ℚ), (-14343900125057/1000000000000 : ℚ), 7⟩,
    ⟨(56298275189/200000000000 : ℚ), (49431541439/2000000000 : ℚ), (-7198772028933/1000000000000 : ℚ), 6⟩,
    ⟨(71090984721/250000000000 : ℚ), (143136280943/10000000000 : ℚ), (-4258193138011/1000000000000 : ℚ), 6⟩,
    ⟨(143951208297/500000000000 : ℚ), (91064497697/10000000000 : ℚ), (-22155729543/8000000000 : ℚ), 5⟩,
    ⟨(146036365801/500000000000 : ℚ), (61506842583/10000000000 : ℚ), (-1913008950603/1000000000000 : ℚ), 5⟩,
    ⟨(296834721493/1000000000000 : ℚ), (43236439261/10000000000 : ℚ), (-171929815619/125000000000 : ℚ), 4⟩,
    ⟨(302142525703/1000000000000 : ℚ), (31224338157/10000000000 : ℚ), (-507975000651/500000000000 : ℚ), 4⟩,
    ⟨(12317801087/40000000000 : ℚ), (22948281131/10000000000 : ℚ), (-763666786319/1000000000000 : ℚ), 4⟩,
    ⟨(314186344647/1000000000000 : ℚ), (4258075403/2500000000 : ℚ), (-72469898461/125000000000 : ℚ), 4⟩,
    ⟨(320806370821/1000000000000 : ℚ), (2535072151/2000000000 : ℚ), (-441510680739/1000000000000 : ℚ), 3⟩,
    ⟨(163870675613/500000000000 : ℚ), (9386369401/10000000000 : ℚ), (-334916250659/1000000000000 : ℚ), 3⟩,
    ⟨(33492449821/100000000000 : ℚ), (171283121/250000000 : ℚ), (-12548220511/50000000000 : ℚ), 3⟩,
    ⟨(17114331707/50000000000 : ℚ), (1215586609/2500000000 : ℚ), (-36729489943/200000000000 : ℚ), 3⟩,
    ⟨(349756857623/1000000000000 : ℚ), (32777391/100000000 : ℚ), (-128839248397/1000000000000 : ℚ), 3⟩,
    ⟨(178631613161/500000000000 : ℚ), (1998508343/10000000000 : ℚ), (-83633788323/1000000000000 : ℚ), 3⟩,
    ⟨(72946689961/200000000000 : ℚ), (119252791/1250000000 : ℚ), (-22970112717/500000000000 : ℚ), 3⟩,
    ⟨(74419117147/200000000000 : ℚ), (46485393/5000000000 : ℚ), (-14226774027/1000000000000 : ℚ), 3⟩,
    ⟨(189639366359/500000000000 : ℚ), (-311249323/5000000000 : ℚ), (12645987821/1000000000000 : ℚ), 3⟩,
    ⟨(386213713123/1000000000000 : ℚ), (-610339163/5000000000 : ℚ), (17768197451/500000000000 : ℚ), 3⟩,
    ⟨(196416869649/500000000000 : ℚ), (-430737193/2500000000 : ℚ), (2754883787/50000000000 : ℚ), 2⟩,
    ⟨(39907505677/100000000000 : ℚ), (-53640321/250000000 : ℚ), (14366180523/200000000000 : ℚ), 2⟩,
    ⟨(202438779121/500000000000 : ℚ), (-125059401/500000000 : ℚ), (43061289131/500000000000 : ℚ), 2⟩,
    ⟨(410185362451/1000000000000 : ℚ), (-2799330779/10000000000 : ℚ), (98271767919/1000000000000 : ℚ), 2⟩,
    ⟨(414947352343/1000000000000 : ℚ), (-3047506331/10000000000 : ℚ), (108509976237/1000000000000 : ℚ), 2⟩,
    ⟨(8382353347/20000000000 : ℚ), (-3251479079/10000000000 : ℚ), (14626986539/125000000000 : ℚ), 2⟩,
    ⟨(422656145061/1000000000000 : ℚ), (-3415674363/10000000000 : ℚ), (30981606873/250000000000 : ℚ), 2⟩,
    ⟨(425528707999/1000000000000 : ℚ), (-885861489/2500000000 : ℚ), (64672504949/500000000000 : ℚ), 2⟩,
    ⟨(85541538363/200000000000 : ℚ), (-1818636451/5000000000 : ℚ), (33336947779/250000000000 : ℚ), 2⟩,
    ⟨(429172111701/1000000000000 : ℚ), (-462362727/1250000000 : ℚ), (67994102989/500000000000 : ℚ), 2⟩,
    ⟨(26869241531/62500000000 : ℚ), (-3729445579/10000000000 : ℚ), (68650090517/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1866625503/5000000000 : ℚ), (137463796883/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (172000036409/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control488.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control488.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate488
