import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate170
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(256430382407/1000000000000 : ℚ), (9351357667323/10000000000 : ℚ), (-120287684504619/500000000000 : ℚ), 11⟩,
    ⟨(257602529887/1000000000000 : ℚ), (63404467383/625000000 : ℚ), (-13306261536711/500000000000 : ℚ), 8⟩,
    ⟨(129967768213/500000000000 : ℚ), (352007172339/10000000000 : ℚ), (-2373864648559/250000000000 : ℚ), 6⟩,
    ⟨(32925866737/125000000000 : ℚ), (85758314357/5000000000 : ℚ), (-955895979107/200000000000 : ℚ), 5⟩,
    ⟨(133991645421/500000000000 : ℚ), (49182696459/5000000000 : ℚ), (-177417456303/62500000000 : ℚ), 5⟩,
    ⟨(54724106889/200000000000 : ℚ), (62033119189/10000000000 : ℚ), (-232020528313/125000000000 : ℚ), 4⟩,
    ⟨(140132187483/500000000000 : ℚ), (10399362227/2500000000 : ℚ), (-40342855949/31250000000 : ℚ), 4⟩,
    ⟨(28785082859/100000000000 : ℚ), (727344549/250000000 : ℚ), (-468124408039/500000000000 : ℚ), 3⟩,
    ⟨(148153416811/500000000000 : ℚ), (20963022273/10000000000 : ℚ), (-699053585847/1000000000000 : ℚ), 3⟩,
    ⟨(305550954109/1000000000000 : ℚ), (241021831/156250000 : ℚ), (-53259956111/100000000000 : ℚ), 3⟩,
    ⟨(7887354103/25000000000 : ℚ), (11513490803/10000000000 : ℚ), (-411254415681/1000000000000 : ℚ), 3⟩,
    ⟨(65208141021/200000000000 : ℚ), (8666545619/10000000000 : ℚ), (-320022804797/1000000000000 : ℚ), 3⟩,
    ⟨(33708900811/100000000000 : ℚ), (3271265767/5000000000 : ℚ), (-249660885281/1000000000000 : ℚ), 2⟩,
    ⟨(348532671937/1000000000000 : ℚ), (4924036181/10000000000 : ℚ), (-194222098091/1000000000000 : ℚ), 2⟩,
    ⟨(45032685981/125000000000 : ℚ), (3668072963/10000000000 : ℚ), (-149743583923/1000000000000 : ℚ), 2⟩,
    ⟨(186081250467/500000000000 : ℚ), (2677882969/10000000000 : ℚ), (-56752596293/500000000000 : ℚ), 2⟩,
    ⟨(384121097933/1000000000000 : ℚ), (29474797/156250000 : ℚ), (-83592570173/1000000000000 : ℚ), 2⟩,
    ⟨(396022111019/1000000000000 : ℚ), (62305409/500000000 : ℚ), (-3664350173/62500000000 : ℚ), 2⟩,
    ⟨(40775092693/100000000000 : ℚ), (22588653/312500000 : ℚ), (-37609115457/1000000000000 : ℚ), 2⟩,
    ⟨(419194590757/1000000000000 : ℚ), (72884419/2500000000 : ℚ), (-19782635473/1000000000000 : ℚ), 2⟩,
    ⟨(215121446881/500000000000 : ℚ), (-33179779/5000000000 : ℚ), (-917356273/200000000000 : ℚ), 2⟩,
    ⟨(440789434747/1000000000000 : ℚ), (-2918319/80000000 : ℚ), (1681400043/200000000000 : ℚ), 2⟩,
    ⟨(225366322379/500000000000 : ℚ), (-307156581/5000000000 : ℚ), (19527445627/1000000000000 : ℚ), 2⟩,
    ⟨(229988382623/500000000000 : ℚ), (-822995341/10000000000 : ℚ), (29028296469/1000000000000 : ℚ), 2⟩,
    ⟨(468432770277/1000000000000 : ℚ), (-997033509/10000000000 : ℚ), (2319136097/62500000000 : ℚ), 2⟩,
    ⟨(476019223901/1000000000000 : ℚ), (-570602373/5000000000 : ℚ), (43913647249/1000000000000 : ℚ), 2⟩,
    ⟨(482663064423/1000000000000 : ℚ), (-1259191471/10000000000 : ℚ), (4956883197/100000000000 : ℚ), 2⟩,
    ⟨(19532012321/40000000000 : ℚ), (-676909423/5000000000 : ℚ), (54162592093/1000000000000 : ℚ), 2⟩,
    ⟨(492876664971/1000000000000 : ℚ), (-713614199/5000000000 : ℚ), (14440967009/250000000000 : ℚ), 2⟩,
    ⟨(496348062441/1000000000000 : ℚ), (-296200877/2000000000 : ℚ), (15105912151/250000000000 : ℚ), 2⟩,
    ⟨(24934053449/50000000000 : ℚ), (-758132111/5000000000 : ℚ), (62177863399/1000000000000 : ℚ), 2⟩,
    ⟨(499853216461/1000000000000 : ℚ), (-383430161/2500000000 : ℚ), (63049403521/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-767947327/5000000000 : ℚ), (63158088053/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (31077059627/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control170.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control170.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate170
