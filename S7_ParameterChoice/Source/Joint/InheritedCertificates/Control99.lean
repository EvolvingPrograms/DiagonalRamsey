import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate99
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1559763963/6250000000 : ℚ), (1209053834617/1250000000 : ℚ), (-121105957090559/500000000000 : ℚ), 11⟩,
    ⟨(250767433641/1000000000000 : ℚ), (1048263935469/10000000000 : ℚ), (-26794102279411/1000000000000 : ℚ), 8⟩,
    ⟨(253166226033/1000000000000 : ℚ), (72646708381/2000000000 : ℚ), (-9560684681721/1000000000000 : ℚ), 6⟩,
    ⟨(128367754787/500000000000 : ℚ), (88356444689/5000000000 : ℚ), (-4812702111347/1000000000000 : ℚ), 5⟩,
    ⟨(261440910111/1000000000000 : ℚ), (50591620301/5000000000 : ℚ), (-2858784811229/1000000000000 : ℚ), 4⟩,
    ⟨(267237112067/1000000000000 : ℚ), (6371017471/1000000000 : ℚ), (-1869680275049/1000000000000 : ℚ), 4⟩,
    ⟨(137034147423/500000000000 : ℚ), (10664870501/2500000000 : ℚ), (-260148322489/200000000000 : ℚ), 4⟩,
    ⟨(11274746817/40000000000 : ℚ), (14898847023/5000000000 : ℚ), (-471852699429/500000000000 : ℚ), 3⟩,
    ⟨(290563116923/1000000000000 : ℚ), (21446755577/10000000000 : ℚ), (-352496167383/500000000000 : ℚ), 3⟩,
    ⟨(300067902067/1000000000000 : ℚ), (1576815179/1000000000 : ℚ), (-53749446621/100000000000 : ℚ), 3⟩,
    ⟨(310291489581/1000000000000 : ℚ), (11763042067/10000000000 : ℚ), (-103850580883/250000000000 : ℚ), 3⟩,
    ⟨(321135420727/1000000000000 : ℚ), (8852815163/10000000000 : ℚ), (-323616613769/1000000000000 : ℚ), 2⟩,
    ⟨(166247631261/500000000000 : ℚ), (6684818497/10000000000 : ℚ), (-126414743747/500000000000 : ℚ), 2⟩,
    ⟨(344261613477/1000000000000 : ℚ), (5035088753/10000000000 : ℚ), (-3078961739/15625000000 : ℚ), 2⟩,
    ⟨(356321157203/1000000000000 : ℚ), (3756483697/10000000000 : ℚ), (-30459848017/200000000000 : ℚ), 2⟩,
    ⟨(3685577537/10000000000 : ℚ), (2749548383/10000000000 : ℚ), (-28957165767/250000000000 : ℚ), 2⟩,
    ⟨(76170711571/200000000000 : ℚ), (48635563/250000000 : ℚ), (-4285779791/50000000000 : ℚ), 2⟩,
    ⟨(24568134647/62500000000 : ℚ), (32385871/250000000 : ℚ), (-60575986983/1000000000000 : ℚ), 2⟩,
    ⟨(202574849039/500000000000 : ℚ), (95570581/1250000000 : ℚ), (-19698700717/500000000000 : ℚ), 2⟩,
    ⟨(208458024517/500000000000 : ℚ), (163609739/5000000000 : ℚ), (-10713971751/500000000000 : ℚ), 2⟩,
    ⟨(107068972707/250000000000 : ℚ), (-35557167/10000000000 : ℚ), (-6102070969/1000000000000 : ℚ), 2⟩,
    ⟨(219559910987/500000000000 : ℚ), (-84492781/2500000000 : ℚ), (280402793/40000000000 : ℚ), 2⟩,
    ⟨(28083963093/62500000000 : ℚ), (-295386973/5000000000 : ℚ), (3647587801/200000000000 : ℚ), 2⟩,
    ⟨(57356024329/125000000000 : ℚ), (-401084337/5000000000 : ℚ), (6958906601/250000000000 : ℚ), 2⟩,
    ⟨(46754264113/100000000000 : ℚ), (-978451597/10000000000 : ℚ), (1799993613/50000000000 : ℚ), 2⟩,
    ⟨(475343016709/1000000000000 : ℚ), (-562236171/5000000000 : ℚ), (2680201021/62500000000 : ℚ), 2⟩,
    ⟨(7533971867/15625000000 : ℚ), (-621983453/5000000000 : ℚ), (48603700011/1000000000000 : ℚ), 2⟩,
    ⟨(121992600361/250000000000 : ℚ), (-267960051/2000000000 : ℚ), (53252075233/1000000000000 : ℚ), 2⟩,
    ⟨(492675801981/1000000000000 : ℚ), (-707071723/5000000000 : ℚ), (28448588409/500000000000 : ℚ), 2⟩,
    ⟨(248122542761/500000000000 : ℚ), (-1468602313/10000000000 : ℚ), (7448738023/125000000000 : ℚ), 2⟩,
    ⟨(249321938957/500000000000 : ℚ), (-1504309409/10000000000 : ℚ), (12273223987/200000000000 : ℚ), 2⟩,
    ⟨(19993963099/40000000000 : ℚ), (-190248389/1250000000 : ℚ), (31124335637/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-762094337/5000000000 : ℚ), (12471746557/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (134968711557/500000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control99.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control99.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate99
