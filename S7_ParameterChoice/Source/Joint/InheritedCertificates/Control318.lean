import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate318
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(277086618021/1000000000000 : ℚ), (6861480469081/5000000000 : ℚ), (-381023694513419/1000000000000 : ℚ), 12⟩,
    ⟨(138935308867/500000000000 : ℚ), (187272634243/1250000000 : ℚ), (-42115029109273/1000000000000 : ℚ), 8⟩,
    ⟨(279431066813/1000000000000 : ℚ), (104856075729/2000000000 : ℚ), (-187527519199/12500000000 : ℚ), 7⟩,
    ⟨(281752937281/1000000000000 : ℚ), (128906501069/5000000000 : ℚ), (-3766084208649/500000000000 : ℚ), 6⟩,
    ⟨(284813868257/1000000000000 : ℚ), (149192469271/10000000000 : ℚ), (-1114471152709/250000000000 : ℚ), 5⟩,
    ⟨(288584381301/1000000000000 : ℚ), (5928619893/625000000 : ℚ), (-2901475089061/1000000000000 : ℚ), 5⟩,
    ⟨(36628520539/125000000000 : ℚ), (12808421941/2000000000 : ℚ), (-2006086308351/1000000000000 : ℚ), 4⟩,
    ⟨(29810242123/100000000000 : ℚ), (45012225559/10000000000 : ℚ), (-722041528653/500000000000 : ℚ), 4⟩,
    ⟨(75939571047/250000000000 : ℚ), (6502756199/2000000000 : ℚ), (-1068256080723/1000000000000 : ℚ), 4⟩,
    ⟨(77485321033/250000000000 : ℚ), (1494504479/625000000 : ℚ), (-804504631681/1000000000000 : ℚ), 4⟩,
    ⟨(63318375079/200000000000 : ℚ), (1110639513/625000000 : ℚ), (-153058124377/250000000000 : ℚ), 3⟩,
    ⟨(64729201829/200000000000 : ℚ), (6626041163/5000000000 : ℚ), (-46768973033/100000000000 : ℚ), 3⟩,
    ⟨(16551787511/50000000000 : ℚ), (1969043373/2000000000 : ℚ), (-356234408329/1000000000000 : ℚ), 3⟩,
    ⟨(84672482843/250000000000 : ℚ), (451385943/625000000 : ℚ), (-268445558683/1000000000000 : ℚ), 3⟩,
    ⟨(173267419327/500000000000 : ℚ), (5166297541/10000000000 : ℚ), (-198042878279/1000000000000 : ℚ), 3⟩,
    ⟨(354494921319/1000000000000 : ℚ), (882501457/2500000000 : ℚ), (-70356726991/500000000000 : ℚ), 3⟩,
    ⟨(362493519421/1000000000000 : ℚ), (2210272119/10000000000 : ℚ), (-46710062599/500000000000 : ℚ), 3⟩,
    ⟨(185226801043/500000000000 : ℚ), (226729059/2000000000 : ℚ), (-53978067473/1000000000000 : ℚ), 2⟩,
    ⟨(47287313671/125000000000 : ℚ), (246810757/10000000000 : ℚ), (-20786959409/1000000000000 : ℚ), 2⟩,
    ⟨(9648817263/25000000000 : ℚ), (-122382633/2500000000 : ℚ), (7343357547/1000000000000 : ℚ), 2⟩,
    ⟨(78668486319/200000000000 : ℚ), (-1104729617/10000000000 : ℚ), (31309269851/1000000000000 : ℚ), 2⟩,
    ⟨(80079313069/200000000000 : ℚ), (-162095179/1000000000 : ℚ), (51792871013/1000000000000 : ℚ), 2⟩,
    ⟨(3180055911/7812500000 : ℚ), (-256886083/1250000000 : ℚ), (34658673573/500000000000 : ℚ), 2⟩,
    ⟨(51653769569/125000000000 : ℚ), (-605026089/2500000000 : ℚ), (84286286471/1000000000000 : ℚ), 2⟩,
    ⟨(41888601951/100000000000 : ℚ), (-681499367/2500000000 : ℚ), (12126505519/125000000000 : ℚ), 2⟩,
    ⟨(105990069107/250000000000 : ℚ), (-1490248661/5000000000 : ℚ), (107736508893/1000000000000 : ℚ), 2⟩,
    ⟨(428404059439/1000000000000 : ℚ), (-797393269/2500000000 : ℚ), (116646492871/1000000000000 : ℚ), 2⟩,
    ⟨(432174572483/1000000000000 : ℚ), (-839452163/2500000000 : ℚ), (123885237593/1000000000000 : ℚ), 2⟩,
    ⟨(435235503459/1000000000000 : ℚ), (-3488679497/10000000000 : ℚ), (16195130821/125000000000 : ℚ), 2⟩,
    ⟨(437557373927/1000000000000 : ℚ), (-716951173/2000000000 : ℚ), (133753733257/1000000000000 : ℚ), 2⟩,
    ⟨(219558911503/500000000000 : ℚ), (-364784953/1000000000 : ℚ), (136519350703/1000000000000 : ℚ), 2⟩,
    ⟨(439901822719/1000000000000 : ℚ), (-1839557687/5000000000 : ℚ), (137893513399/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-1841505291/5000000000 : ℚ), (138064883431/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (150492084549/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control318.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control318.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate318
