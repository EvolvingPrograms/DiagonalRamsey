import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate109
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9168276233/40000000000 : ℚ), (847045600903/1250000000 : ℚ), (-3120835506897/20000000000 : ℚ), 10⟩,
    ⟨(230750681361/1000000000000 : ℚ), (729345538249/10000000000 : ℚ), (-17268289192261/1000000000000 : ℚ), 7⟩,
    ⟨(233823365031/1000000000000 : ℚ), (250364826567/10000000000 : ℚ), (-770809874641/125000000000 : ℚ), 6⟩,
    ⟨(59598841303/250000000000 : ℚ), (120544063551/10000000000 : ℚ), (-1553945937901/500000000000 : ℚ), 5⟩,
    ⟨(244422651041/1000000000000 : ℚ), (68298326249/10000000000 : ℚ), (-1849278974787/1000000000000 : ℚ), 4⟩,
    ⟨(251847176463/1000000000000 : ℚ), (42572223339/10000000000 : ℚ), (-12122165233/10000000000 : ℚ), 4⟩,
    ⟨(260597439239/1000000000000 : ℚ), (14122511607/5000000000 : ℚ), (-169166402691/200000000000 : ℚ), 3⟩,
    ⟨(135294584777/500000000000 : ℚ), (19573865561/10000000000 : ℚ), (-123190839511/200000000000 : ℚ), 3⟩,
    ⟨(281726141583/1000000000000 : ℚ), (109375171/78125000 : ℚ), (-462293428581/1000000000000 : ℚ), 3⟩,
    ⟨(293901100199/1000000000000 : ℚ), (2562177039/2500000000 : ℚ), (-14179949993/40000000000 : ℚ), 3⟩,
    ⟨(306996793893/1000000000000 : ℚ), (7630161933/10000000000 : ℚ), (-275941349369/1000000000000 : ℚ), 2⟩,
    ⟨(160443551989/500000000000 : ℚ), (2873375229/5000000000 : ℚ), (-216893322311/1000000000000 : ℚ), 2⟩,
    ⟨(335438259173/1000000000000 : ℚ), (871496051/2000000000 : ℚ), (-171358725929/1000000000000 : ℚ), 2⟩,
    ⟨(350510123899/1000000000000 : ℚ), (3310259277/10000000000 : ℚ), (-135481463071/1000000000000 : ℚ), 2⟩,
    ⟨(18297877393/50000000000 : ℚ), (1252921769/5000000000 : ℚ), (-53346480559/500000000000 : ℚ), 2⟩,
    ⟨(4770397049/12500000000 : ℚ), (1877634187/10000000000 : ℚ), (-83231257493/1000000000000 : ℚ), 2⟩,
    ⟨(49672727601/125000000000 : ℚ), (1379859677/10000000000 : ℚ), (-997771127/15625000000 : ℚ), 2⟩,
    ⟨(413056036867/1000000000000 : ℚ), (245101849/2500000000 : ℚ), (-47681452699/1000000000000 : ℚ), 2⟩,
    ⟨(107125865207/250000000000 : ℚ), (328169377/5000000000 : ℚ), (-8513249497/250000000000 : ℚ), 2⟩,
    ⟨(88715065111/200000000000 : ℚ), (78201453/2000000000 : ℚ), (-11244516399/500000000000 : ℚ), 2⟩,
    ⟨(1832505923/4000000000 : ℚ), (172163251/10000000000 : ℚ), (-12626378413/1000000000000 : ℚ), 2⟩,
    ⟨(236008395417/500000000000 : ℚ), (-9318167/10000000000 : ℚ), (-2094488971/500000000000 : ℚ), 2⟩,
    ⟨(30319530283/62500000000 : ℚ), (-160306123/10000000000 : ℚ), (3034836793/1000000000000 : ℚ), 2⟩,
    ⟨(62160930393/125000000000 : ℚ), (-286017153/10000000000 : ℚ), (9208446381/1000000000000 : ℚ), 2⟩,
    ⟨(254212207587/500000000000 : ℚ), (-39043959/1000000000 : ℚ), (7229260711/500000000000 : ℚ), 2⟩,
    ⟨(518416145489/1000000000000 : ℚ), (-476635679/10000000000 : ℚ), (9441725661/500000000000 : ℚ), 2⟩,
    ⟨(65895801033/125000000000 : ℚ), (-21878349/400000000 : ℚ), (11279773329/500000000000 : ℚ), 2⟩,
    ⟨(267295466843/500000000000 : ℚ), (-301605083/5000000000 : ℚ), (25545630631/1000000000000 : ℚ), 2⟩,
    ⟨(135154554879/250000000000 : ℚ), (-323376743/5000000000 : ℚ), (13943223799/500000000000 : ℚ), 2⟩,
    ⟨(34074388731/62500000000 : ℚ), (-21206139/312500000 : ℚ), (29615177589/1000000000000 : ℚ), 2⟩,
    ⟨(274131451683/500000000000 : ℚ), (-699449517/10000000000 : ℚ), (30755259223/1000000000000 : ℚ), 2⟩,
    ⟨(549806678903/1000000000000 : ℚ), (-709765769/10000000000 : ℚ), (1957603499/62500000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-177762547/2500000000 : ℚ), (6278457319/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (19298640563/62500000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control109.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control109.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate109
