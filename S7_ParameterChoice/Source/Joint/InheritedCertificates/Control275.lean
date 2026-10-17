import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate275
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(148901166287/500000000000 : ℚ), (6762380279919/5000000000 : ℚ), (-25226820441801/62500000000 : ℚ), 11⟩,
    ⟨(37334891929/125000000000 : ℚ), (738016076519/5000000000 : ℚ), (-22310389285341/500000000000 : ℚ), 8⟩,
    ⟨(300424297057/1000000000000 : ℚ), (516320877323/10000000000 : ℚ), (-3180002875259/200000000000 : ℚ), 7⟩,
    ⟨(75755252647/250000000000 : ℚ), (253811137929/10000000000 : ℚ), (-1996756475253/250000000000 : ℚ), 6⟩,
    ⟨(61288853651/200000000000 : ℚ), (2294480577/156250000 : ℚ), (-4730508243081/1000000000000 : ℚ), 5⟩,
    ⟨(62132220443/200000000000 : ℚ), (3734726077/400000000 : ℚ), (-308190662621/100000000000 : ℚ), 5⟩,
    ⟨(315630902051/1000000000000 : ℚ), (12611355399/2000000000 : ℚ), (-533387154811/250000000000 : ℚ), 4⟩,
    ⟨(80326451469/250000000000 : ℚ), (44352186699/10000000000 : ℚ), (-153836644939/100000000000 : ℚ), 4⟩,
    ⟨(327631161261/1000000000000 : ℚ), (6415555973/2000000000 : ℚ), (-570209398691/500000000000 : ℚ), 4⟩,
    ⟨(334546051579/1000000000000 : ℚ), (5909578743/2500000000 : ℚ), (-430604346247/500000000000 : ℚ), 3⟩,
    ⟨(170991941327/500000000000 : ℚ), (880935537/500000000 : ℚ), (-20554086247/31250000000 : ℚ), 3⟩,
    ⟨(349873024107/1000000000000 : ℚ), (6597820241/5000000000 : ℚ), (-504824999007/1000000000000 : ℚ), 3⟩,
    ⟨(179068749597/500000000000 : ℚ), (9864698029/10000000000 : ℚ), (-386979600129/1000000000000 : ℚ), 3⟩,
    ⟨(366697716501/1000000000000 : ℚ), (7303620841/10000000000 : ℚ), (-14710665621/50000000000 : ℚ), 3⟩,
    ⟨(375471236457/1000000000000 : ℚ), (1324812461/2500000000 : ℚ), (-54967940161/250000000000 : ℚ), 3⟩,
    ⟨(384373565269/1000000000000 : ℚ), (3706433653/10000000000 : ℚ), (-31876909713/200000000000 : ℚ), 3⟩,
    ⟨(196659484321/500000000000 : ℚ), (605966971/2500000000 : ℚ), (-4381302979/40000000000 : ℚ), 2⟩,
    ⟨(402221297453/1000000000000 : ℚ), (689674473/5000000000 : ℚ), (-67999479279/1000000000000 : ℚ), 2⟩,
    ⟨(410994817409/1000000000000 : ℚ), (260239457/5000000000 : ℚ), (-33087916173/1000000000000 : ℚ), 2⟩,
    ⟨(419555034717/1000000000000 : ℚ), (-19136011/1000000000 : ℚ), (-3534868831/1000000000000 : ℚ), 2⟩,
    ⟨(106954877451/250000000000 : ℚ), (-39250457/500000000 : ℚ), (10805815707/500000000000 : ℚ), 2⟩,
    ⟨(435708651257/1000000000000 : ℚ), (-1282249841/10000000000 : ℚ), (21538336793/500000000000 : ℚ), 2⟩,
    ⟨(110786620583/250000000000 : ℚ), (-339936967/2000000000 : ℚ), (61417100157/1000000000000 : ℚ), 2⟩,
    ⟨(450061372649/1000000000000 : ℚ), (-410012163/2000000000 : ℚ), (77063100509/1000000000000 : ℚ), 2⟩,
    ⟨(91277345607/200000000000 : ℚ), (-234321343/1000000000 : ℚ), (22587050311/250000000000 : ℚ), 2⟩,
    ⟨(462061631859/1000000000000 : ℚ), (-2586750649/10000000000 : ℚ), (101531202153/1000000000000 : ℚ), 2⟩,
    ⟨(29189464481/62500000000 : ℚ), (-696638017/2500000000 : ℚ), (110812414479/1000000000000 : ℚ), 2⟩,
    ⟨(58906033207/125000000000 : ℚ), (-2947136309/10000000000 : ℚ), (59172892803/500000000000 : ℚ), 2⟩,
    ⟨(474671523323/1000000000000 : ℚ), (-1535966003/5000000000 : ℚ), (62123992261/500000000000 : ℚ), 2⟩,
    ⟨(238634118427/500000000000 : ℚ), (-395434587/1250000000 : ℚ), (6430258977/50000000000 : ℚ), 2⟩,
    ⟨(479013398479/1000000000000 : ℚ), (-3223560261/10000000000 : ℚ), (410868761/3125000000 : ℚ), 2⟩,
    ⟨(59986275167/125000000000 : ℚ), (-3253324217/10000000000 : ℚ), (5316201589/40000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1628515917/5000000000 : ℚ), (26616597/200000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (70546115059/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control275.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control275.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate275
