import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate409
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(15039275839/50000000000 : ℚ), (7232359563523/5000000000 : ℚ), (-217941553830487/500000000000 : ℚ), 12⟩,
    ⟨(150775858009/500000000000 : ℚ), (790415160651/5000000000 : ℚ), (-963454327791/20000000000 : ℚ), 9⟩,
    ⟨(37884591947/125000000000 : ℚ), (553994684097/10000000000 : ℚ), (-2144470706041/125000000000 : ℚ), 7⟩,
    ⟨(152672944341/500000000000 : ℚ), (54570415497/2000000000 : ℚ), (-1722025262891/200000000000 : ℚ), 6⟩,
    ⟨(308337322151/1000000000000 : ℚ), (79071721897/5000000000 : ℚ), (-2546614654717/500000000000 : ℚ), 6⟩,
    ⟨(78005556711/250000000000 : ℚ), (50349125379/5000000000 : ℚ), (-1656397954993/500000000000 : ℚ), 5⟩,
    ⟨(158182557557/500000000000 : ℚ), (68075526563/10000000000 : ℚ), (-2288589316713/1000000000000 : ℚ), 5⟩,
    ⟨(321324162573/1000000000000 : ℚ), (23950374189/5000000000 : ℚ), (-205724570981/125000000000 : ℚ), 4⟩,
    ⟨(326851610883/1000000000000 : ℚ), (3463013193/1000000000 : ℚ), (-48640443011/40000000000 : ℚ), 4⟩,
    ⟨(20805889231/62500000000 : ℚ), (25482730469/10000000000 : ℚ), (-114307714109/125000000000 : ℚ), 4⟩,
    ⟨(84848454827/250000000000 : ℚ), (757645451/400000000 : ℚ), (-694705932271/1000000000000 : ℚ), 3⟩,
    ⟨(173143895549/500000000000 : ℚ), (2824348541/2000000000 : ℚ), (-264786361247/500000000000 : ℚ), 3⟩,
    ⟨(353509750351/1000000000000 : ℚ), (655167203/625000000 : ℚ), (-100577522439/250000000000 : ℚ), 3⟩,
    ⟨(360990145649/1000000000000 : ℚ), (7677333921/10000000000 : ℚ), (-4720910643/15625000000 : ℚ), 3⟩,
    ⟨(368656936699/1000000000000 : ℚ), (1369040367/2500000000 : ℚ), (-221870004437/1000000000000 : ℚ), 3⟩,
    ⟨(376436288109/1000000000000 : ℚ), (744522557/2000000000 : ℚ), (-78284134117/500000000000 : ℚ), 3⟩,
    ⟨(15370131219/40000000000 : ℚ), (1153629783/5000000000 : ℚ), (-20551046481/200000000000 : ℚ), 3⟩,
    ⟨(196016315943/500000000000 : ℚ), (1151978719/10000000000 : ℚ), (-5792790941/100000000000 : ℚ), 3⟩,
    ⟨(79939884587/200000000000 : ℚ), (199980551/10000000000 : ℚ), (-1265740903/62500000000 : ℚ), 3⟩,
    ⟨(203589909117/500000000000 : ℚ), (-590659633/10000000000 : ℚ), (5819094567/500000000000 : ℚ), 2⟩,
    ⟨(207200888743/500000000000 : ℚ), (-625651127/5000000000 : ℚ), (38771356659/1000000000000 : ℚ), 2⟩,
    ⟨(421295749277/1000000000000 : ℚ), (-1805665901/10000000000 : ℚ), (7741438461/125000000000 : ℚ), 2⟩,
    ⟨(427795340889/1000000000000 : ℚ), (-454370383/2000000000 : ℚ), (81720518957/1000000000000 : ℚ), 2⟩,
    ⟨(433837957701/1000000000000 : ℚ), (-532754237/2000000000 : ℚ), (4930159939/50000000000 : ℚ), 2⟩,
    ⟨(439365406011/1000000000000 : ℚ), (-2992164937/10000000000 : ℚ), (56469846343/500000000000 : ℚ), 2⟩,
    ⟨(44432445347/100000000000 : ℚ), (-326534459/1000000000 : ℚ), (125009210557/1000000000000 : ℚ), 2⟩,
    ⟨(448667341741/1000000000000 : ℚ), (-697946737/2000000000 : ℚ), (135027616583/1000000000000 : ℚ), 2⟩,
    ⟨(452352246433/1000000000000 : ℚ), (-3670267743/10000000000 : ℚ), (71580293687/500000000000 : ℚ), 2⟩,
    ⟨(455343679903/1000000000000 : ℚ), (-762138013/2000000000 : ℚ), (149533493861/1000000000000 : ℚ), 2⟩,
    ⟨(457612833009/1000000000000 : ℚ), (-3913769483/10000000000 : ℚ), (7711939537/50000000000 : ℚ), 2⟩,
    ⟨(459137852567/1000000000000 : ℚ), (-3981457853/10000000000 : ℚ), (4916920089/31250000000 : ℚ), 2⟩,
    ⟨(114976012951/250000000000 : ℚ), (-501874917/1250000000 : ℚ), (158882742301/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-4019177993/10000000000 : ℚ), (79537470241/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (297506595073/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control409.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control409.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate409
