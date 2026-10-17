import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate484
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(292911527129/1000000000000 : ℚ), (1586817784861/1250000000 : ℚ), (-93144485852393/250000000000 : ℚ), 12⟩,
    ⟨(29371561893/100000000000 : ℚ), (1386389904729/10000000000 : ℚ), (-2573861933747/62500000000 : ℚ), 9⟩,
    ⟨(4614313417/15625000000 : ℚ), (242700963351/5000000000 : ℚ), (-1466998473299/100000000000 : ℚ), 7⟩,
    ⟨(148848716647/500000000000 : ℚ), (29854281063/1250000000 : ℚ), (-736556597733/100000000000 : ℚ), 6⟩,
    ⟨(37604601101/125000000000 : ℚ), (69149103461/5000000000 : ℚ), (-4359467915309/1000000000000 : ℚ), 6⟩,
    ⟨(304703951327/1000000000000 : ℚ), (43995610649/5000000000 : ℚ), (-88675304337/31250000000 : ℚ), 5⟩,
    ⟨(309261618157/1000000000000 : ℚ), (11889825289/2000000000 : ℚ), (-1962132669113/1000000000000 : ℚ), 5⟩,
    ⟨(39308239559/125000000000 : ℚ), (20908233127/5000000000 : ℚ), (-1412665108431/1000000000000 : ℚ), 4⟩,
    ⟨(80066681509/250000000000 : ℚ), (1209247091/400000000 : ℚ), (-1045261742053/1000000000000 : ℚ), 4⟩,
    ⟨(163304090941/500000000000 : ℚ), (11127504619/5000000000 : ℚ), (-98433109373/125000000000 : ℚ), 4⟩,
    ⟨(333429212323/1000000000000 : ℚ), (8279010041/5000000000 : ℚ), (-599578277467/1000000000000 : ℚ), 4⟩,
    ⟨(340664127107/1000000000000 : ℚ), (3091523879/2500000000 : ℚ), (-458378130893/1000000000000 : ℚ), 3⟩,
    ⟨(6964865001/20000000000 : ℚ), (9204742633/10000000000 : ℚ), (-87386576003/250000000000 : ℚ), 3⟩,
    ⟨(71218718011/200000000000 : ℚ), (6770632779/10000000000 : ℚ), (-131934723381/500000000000 : ℚ), 3⟩,
    ⟨(45517443007/125000000000 : ℚ), (4862995253/10000000000 : ℚ), (-195204854389/1000000000000 : ℚ), 3⟩,
    ⟨(372303625117/1000000000000 : ℚ), (3345010863/10000000000 : ℚ), (-139333241413/1000000000000 : ℚ), 3⟩,
    ⟨(95126802169/250000000000 : ℚ), (1060555619/5000000000 : ℚ), (-93282495021/1000000000000 : ℚ), 3⟩,
    ⟨(388671289737/1000000000000 : ℚ), (1123121239/10000000000 : ℚ), (-27456856197/500000000000 : ℚ), 3⟩,
    ⟨(198358621869/500000000000 : ℚ), (301521997/10000000000 : ℚ), (-22659377273/1000000000000 : ℚ), 3⟩,
    ⟨(404567583743/1000000000000 : ℚ), (-190107261/5000000000 : ℚ), (2323520839/500000000000 : ℚ), 3⟩,
    ⟨(82429341337/200000000000 : ℚ), (-189878161/2000000000 : ℚ), (3485603739/125000000000 : ℚ), 2⟩,
    ⟨(41938162147/100000000000 : ℚ), (-89165073/625000000 : ℚ), (4772367663/100000000000 : ℚ), 2⟩,
    ⟨(426202651911/1000000000000 : ℚ), (-365540487/2000000000 : ℚ), (32338885753/500000000000 : ℚ), 2⟩,
    ⟨(108136026939/250000000000 : ℚ), (-1082330501/5000000000 : ℚ), (3165767649/40000000000 : ℚ), 2⟩,
    ⟨(438344917321/1000000000000 : ℚ), (-2446844407/10000000000 : ℚ), (91430594127/1000000000000 : ℚ), 2⟩,
    ⟨(110887303909/250000000000 : ℚ), (-1340733503/5000000000 : ℚ), (50887747559/500000000000 : ℚ), 2⟩,
    ⟨(89621376493/200000000000 : ℚ), (-11226963/39062500 : ℚ), (6897706009/62500000000 : ℚ), 2⟩,
    ⟨(90394804997/200000000000 : ℚ), (-1514516211/5000000000 : ℚ), (117335527489/1000000000000 : ℚ), 2⟩,
    ⟨(455113400499/1000000000000 : ℚ), (-3149503321/10000000000 : ℚ), (122799289681/1000000000000 : ℚ), 2⟩,
    ⟨(91498955021/200000000000 : ℚ), (-3237916403/10000000000 : ℚ), (63416782703/500000000000 : ℚ), 2⟩,
    ⟨(459095214863/1000000000000 : ℚ), (-1647982119/5000000000 : ℚ), (129493854237/1000000000000 : ℚ), 2⟩,
    ⟨(57487413333/125000000000 : ℚ), (-3324725677/10000000000 : ℚ), (130815432711/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-832077173/2500000000 : ℚ), (6549011667/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (339400187327/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control484.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control484.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate484
