import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate617
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(61671264163/125000000000 : ℚ), (7415510762993/5000000000 : ℚ), (-9160109702919/12500000000 : ℚ), 12⟩,
    ⟨(494364493077/1000000000000 : ℚ), (32499857551/200000000 : ℚ), (-40510541953223/500000000000 : ℚ), 9⟩,
    ⟨(248171838101/500000000000 : ℚ), (285832759259/5000000000 : ℚ), (-28878349881309/1000000000000 : ℚ), 8⟩,
    ⟨(31205537629/62500000000 : ℚ), (282906972089/10000000000 : ℚ), (-907053337071/62500000000 : ℚ), 7⟩,
    ⟨(62896363677/125000000000 : ℚ), (41223764123/2500000000 : ℚ), (-1720306339369/200000000000 : ℚ), 6⟩,
    ⟨(507953209517/1000000000000 : ℚ), (26419778549/2500000000 : ℚ), (-2804833431953/500000000000 : ℚ), 5⟩,
    ⟨(256794723101/500000000000 : ℚ), (35989099613/5000000000 : ℚ), (-777872280677/200000000000 : ℚ), 5⟩,
    ⟨(65003167429/125000000000 : ℚ), (25545337951/5000000000 : ℚ), (-1405253424621/500000000000 : ℚ), 5⟩,
    ⟨(131799727009/250000000000 : ℚ), (37322445863/10000000000 : ℚ), (-522496691569/250000000000 : ℚ), 4⟩,
    ⟨(267520533313/500000000000 : ℚ), (27814798733/10000000000 : ℚ), (-63411343173/40000000000 : ℚ), 4⟩,
    ⟨(543476290929/1000000000000 : ℚ), (10503143249/5000000000 : ℚ), (-1218311838209/1000000000000 : ℚ), 4⟩,
    ⟨(138105836281/250000000000 : ℚ), (15986488089/10000000000 : ℚ), (-943380715497/1000000000000 : ℚ), 4⟩,
    ⟨(140449016047/250000000000 : ℚ), (12196193227/10000000000 : ℚ), (-73231161921/100000000000 : ℚ), 3⟩,
    ⟨(17859505741/31250000000 : ℚ), (1855401673/2000000000 : ℚ), (-566962479963/1000000000000 : ℚ), 3⟩,
    ⟨(290727104599/500000000000 : ℚ), (1747748213/2500000000 : ℚ), (-108806750277/250000000000 : ℚ), 3⟩,
    ⟨(295775158231/500000000000 : ℚ), (1293852717/2500000000 : ℚ), (-328778365929/1000000000000 : ℚ), 3⟩,
    ⟨(75211909309/125000000000 : ℚ), (1858054573/5000000000 : ℚ), (-60434839273/250000000000 : ℚ), 3⟩,
    ⟨(76473922717/125000000000 : ℚ), (1265627273/5000000000 : ℚ), (-84934215273/500000000000 : ℚ), 3⟩,
    ⟨(310870703611/500000000000 : ℚ), (390268349/2500000000 : ℚ), (-110045115513/1000000000000 : ℚ), 3⟩,
    ⟨(315724763373/500000000000 : ℚ), (761192881/10000000000 : ℚ), (-7491916293/125000000000 : ℚ), 3⟩,
    ⟨(64082224581/100000000000 : ℚ), (49106077/5000000000 : ℚ), (-222103077/12500000000 : ℚ), 3⟩,
    ⟨(162442325001/250000000000 : ℚ), (-226654041/5000000000 : ℚ), (17815765049/1000000000000 : ℚ), 3⟩,
    ⟨(164551131077/250000000000 : ℚ), (-91293149/1000000000 : ℚ), (47870774069/1000000000000 : ℚ), 3⟩,
    ⟨(333023341449/500000000000 : ℚ), (-1295816207/10000000000 : ℚ), (3660998593/50000000000 : ℚ), 3⟩,
    ⟨(336610125751/500000000000 : ℚ), (-1613766669/10000000000 : ℚ), (11813660289/125000000000 : ℚ), 3⟩,
    ⟨(679656144731/1000000000000 : ℚ), (-1875996131/10000000000 : ℚ), (112246388119/1000000000000 : ℚ), 2⟩,
    ⟨(685292381417/1000000000000 : ℚ), (-522421393/2500000000 : ℚ), (126829479607/1000000000000 : ℚ), 2⟩,
    ⟨(345037340759/500000000000 : ℚ), (-2260396719/10000000000 : ℚ), (17321079201/125000000000 : ℚ), 2⟩,
    ⟨(69395698887/100000000000 : ℚ), (-2392378393/10000000000 : ℚ), (147701790053/1000000000000 : ℚ), 2⟩,
    ⟨(174225478683/250000000000 : ℚ), (-2488792929/10000000000 : ℚ), (77203332397/500000000000 : ℚ), 2⟩,
    ⟨(698881097857/1000000000000 : ℚ), (-2551880747/10000000000 : ℚ), (158809487893/1000000000000 : ℚ), 2⟩,
    ⟨(69987547763/100000000000 : ℚ), (-64576879/250000000 : ℚ), (80495577321/500000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2586958249/10000000000 : ℚ), (161262946661/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (7805813153/31250000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control617.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control617.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate617
