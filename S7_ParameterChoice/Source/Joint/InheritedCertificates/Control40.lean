import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate40
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7693010853/31250000000 : ℚ), (7744795241167/10000000000 : ℚ), (-191566776103393/1000000000000 : ℚ), 10⟩,
    ⟨(4957581563/20000000000 : ℚ), (832863638071/10000000000 : ℚ), (-5298750573621/250000000000 : ℚ), 7⟩,
    ⟨(251268141629/1000000000000 : ℚ), (285528413093/10000000000 : ℚ), (-7565579321303/1000000000000 : ℚ), 5⟩,
    ⟨(256310899199/1000000000000 : ℚ), (34314084021/2500000000 : ℚ), (-762182135697/200000000000 : ℚ), 4⟩,
    ⟨(65739696587/250000000000 : ℚ), (77630790697/10000000000 : ℚ), (-2266157697899/1000000000000 : ℚ), 4⟩,
    ⟨(4236684067/15625000000 : ℚ), (24151074287/5000000000 : ℚ), (-1484553647449/1000000000000 : ℚ), 3⟩,
    ⟨(70199754133/250000000000 : ℚ), (7997845737/2500000000 : ℚ), (-207062769367/200000000000 : ℚ), 3⟩,
    ⟨(291819548399/1000000000000 : ℚ), (5534190541/2500000000 : ℚ), (-753697985807/1000000000000 : ℚ), 3⟩,
    ⟨(304103242141/1000000000000 : ℚ), (247111911/156250000 : ℚ), (-35354491523/62500000000 : ℚ), 2⟩,
    ⟨(158765899537/500000000000 : ℚ), (2314111343/2000000000 : ℚ), (-433959458509/1000000000000 : ℚ), 2⟩,
    ⟨(165987947427/500000000000 : ℚ), (1723070997/2000000000 : ℚ), (-67626834553/200000000000 : ℚ), 2⟩,
    ⟨(173648212471/500000000000 : ℚ), (6495731477/10000000000 : ℚ), (-133122184867/500000000000 : ℚ), 2⟩,
    ⟨(181672922129/500000000000 : ℚ), (4936809609/10000000000 : ℚ), (-52730648397/250000000000 : ℚ), 2⟩,
    ⟨(9499239703/25000000000 : ℚ), (3765259989/10000000000 : ℚ), (-167430545541/1000000000000 : ℚ), 2⟩,
    ⟨(397007560789/1000000000000 : ℚ), (2868101163/10000000000 : ℚ), (-66306132977/500000000000 : ℚ), 2⟩,
    ⟨(414295677273/1000000000000 : ℚ), (2169612237/10000000000 : ℚ), (-13037913269/125000000000 : ℚ), 2⟩,
    ⟨(10791686089/25000000000 : ℚ), (808914061/5000000000 : ℚ), (-80982128967/1000000000000 : ℚ), 2⟩,
    ⟨(112238890011/250000000000 : ℚ), (1176349129/10000000000 : ℚ), (-6155648571/100000000000 : ℚ), 1⟩,
    ⟨(465993532713/1000000000000 : ℚ), (819218183/10000000000 : ℚ), (-44168119/976562500 : ℚ), 1⟩,
    ⟨(15081789893/31250000000 : ℚ), (105526137/2000000000 : ℚ), (-6280963569/200000000000 : ℚ), 1⟩,
    ⟨(124666673973/250000000000 : ℚ), (35971537/1250000000 : ℚ), (-9820607009/500000000000 : ℚ), 1⟩,
    ⟨(513987225979/1000000000000 : ℚ), (89369151/10000000000 : ℚ), (-1199868651/125000000000 : ℚ), 1⟩,
    ⟨(528431321759/1000000000000 : ℚ), (-75301509/10000000000 : ℚ), (-203707057/200000000000 : ℚ), 1⟩,
    ⟨(135464969673/250000000000 : ℚ), (-42419407/2000000000 : ℚ), (78755061/12500000000 : ℚ), 1⟩,
    ⟨(110828714487/200000000000 : ℚ), (-325491067/10000000000 : ℚ), (12513353377/1000000000000 : ℚ), 1⟩,
    ⟨(565164104301/1000000000000 : ℚ), (-26182239/625000000 : ℚ), (4435307587/250000000000 : ℚ), 1⟩,
    ⟨(114963068109/200000000000 : ℚ), (-61875951/1250000000 : ℚ), (11038988871/500000000000 : ℚ), 1⟩,
    ⟨(116600866897/200000000000 : ℚ), (-555783989/10000000000 : ℚ), (6399039021/250000000000 : ℚ), 1⟩,
    ⟨(294826110817/500000000000 : ℚ), (-602771989/10000000000 : ℚ), (28351083161/1000000000000 : ℚ), 1⟩,
    ⟨(148673744801/250000000000 : ℚ), (-127420077/2000000000 : ℚ), (30383873943/1000000000000 : ℚ), 1⟩,
    ⟨(598084042683/1000000000000 : ℚ), (-659565119/10000000000 : ℚ), (31723633647/1000000000000 : ℚ), 1⟩,
    ⟨(599786773537/1000000000000 : ℚ), (-20958559/312500000 : ℚ), (3238897547/100000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-336028377/5000000000 : ℚ), (6494386533/200000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (52399107301/250000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control40.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control40.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate40
