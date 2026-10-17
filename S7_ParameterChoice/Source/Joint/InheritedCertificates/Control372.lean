import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate372
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11747601481/40000000000 : ℚ), (7893272454861/5000000000 : ℚ), (-232221668719283/500000000000 : ℚ), 12⟩,
    ⟨(147197067459/500000000000 : ℚ), (1726132252041/10000000000 : ℚ), (-6415102855633/125000000000 : ℚ), 9⟩,
    ⟨(59159109971/200000000000 : ℚ), (605280027777/10000000000 : ℚ), (-2283859905679/125000000000 : ℚ), 7⟩,
    ⟨(59576157089/200000000000 : ℚ), (74570799511/2500000000 : ℚ), (-2291275129309/250000000000 : ℚ), 6⟩,
    ⟨(30062975973/100000000000 : ℚ), (43240603547/2500000000 : ℚ), (-108353215731/20000000000 : ℚ), 6⟩,
    ⟨(38001999823/125000000000 : ℚ), (55081430567/5000000000 : ℚ), (-5500768997/1562500000 : ℚ), 5⟩,
    ⟨(77001722669/250000000000 : ℚ), (74472534899/10000000000 : ℚ), (-2429109311091/1000000000000 : ℚ), 5⟩,
    ⟨(312564001533/1000000000000 : ℚ), (52381650251/10000000000 : ℚ), (-1744132715133/1000000000000 : ℚ), 4⟩,
    ⟨(39705430461/125000000000 : ℚ), (37836743243/10000000000 : ℚ), (-321529483063/250000000000 : ℚ), 4⟩,
    ⟨(161598149667/500000000000 : ℚ), (6950134917/2500000000 : ℚ), (-482368902687/500000000000 : ℚ), 4⟩,
    ⟨(329169091437/1000000000000 : ℚ), (206153429/100000000 : ℚ), (-730505984953/1000000000000 : ℚ), 3⟩,
    ⟨(335504298743/1000000000000 : ℚ), (3828891051/2500000000 : ℚ), (-554470828739/1000000000000 : ℚ), 3⟩,
    ⟨(21383806859/62500000000 : ℚ), (2261769771/2000000000 : ℚ), (-41878267041/100000000000 : ℚ), 3⟩,
    ⟨(349015010247/1000000000000 : ℚ), (4108080523/5000000000 : ℚ), (-311955604683/1000000000000 : ℚ), 3⟩,
    ⟨(356060398907/1000000000000 : ℚ), (5786353989/10000000000 : ℚ), (-5658293661/25000000000 : ℚ), 3⟩,
    ⟨(18160461239/50000000000 : ℚ), (3848081941/10000000000 : ℚ), (-156651118779/1000000000000 : ℚ), 3⟩,
    ⟨(370392640763/1000000000000 : ℚ), (142594649/625000000 : ℚ), (-99208661797/1000000000000 : ℚ), 3⟩,
    ⟨(94385366659/250000000000 : ℚ), (4004247/40000000 : ℚ), (-51338198257/1000000000000 : ℚ), 3⟩,
    ⟨(76917371059/200000000000 : ℚ), (-55521203/10000000000 : ℚ), (-5543024103/500000000000 : ℚ), 3⟩,
    ⟨(195730477899/500000000000 : ℚ), (-934205567/10000000000 : ℚ), (4600279827/200000000000 : ℚ), 2⟩,
    ⟨(398097566799/1000000000000 : ℚ), (-834695317/5000000000 : ℚ), (6502435993/125000000000 : ℚ), 2⟩,
    ⟨(202216387053/500000000000 : ℚ), (-71471891/312500000 : ℚ), (76802117083/1000000000000 : ℚ), 2⟩,
    ⟨(410405566209/1000000000000 : ℚ), (-28071997/100000000 : ℚ), (48994604811/500000000000 : ℚ), 2⟩,
    ⟨(83191684371/200000000000 : ℚ), (-1622477671/5000000000 : ℚ), (4642984143/40000000000 : ℚ), 2⟩,
    ⟨(421037864009/1000000000000 : ℚ), (-903038911/2500000000 : ℚ), (131440617771/1000000000000 : ℚ), 2⟩,
    ⟨(425594974867/1000000000000 : ℚ), (-783584213/2000000000 : ℚ), (144383371983/1000000000000 : ℚ), 2⟩,
    ⟨(429585866959/1000000000000 : ℚ), (-2084649477/5000000000 : ℚ), (155131567619/1000000000000 : ℚ), 2⟩,
    ⟨(432972105813/1000000000000 : ℚ), (-2185851323/5000000000 : ℚ), (81930272099/500000000000 : ℚ), 2⟩,
    ⟨(435721080097/1000000000000 : ℚ), (-2264618269/5000000000 : ℚ), (21337855141/125000000000 : ℚ), 2⟩,
    ⟨(54725789461/125000000000 : ℚ), (-4644935571/10000000000 : ℚ), (175756099597/1000000000000 : ℚ), 2⟩,
    ⟨(702732369/1600000000 : ℚ), (-4720938553/10000000000 : ℚ), (179088867633/1000000000000 : ℚ), 2⟩,
    ⟨(219955914259/500000000000 : ℚ), (-4758608481/10000000000 : ℚ), (22593085519/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-4763301857/10000000000 : ℚ), (36190234401/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (279865091009/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control372.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control372.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate372
