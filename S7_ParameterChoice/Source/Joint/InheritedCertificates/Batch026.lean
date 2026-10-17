import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control232
namespace DiagonalRamsey.JointInheritedCertificate232
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(303963157727/1000000000000 : ℚ), (596419177079/500000000 : ℚ), (-363473008128539/1000000000000 : ℚ), 11⟩,
    ⟨(61000561453/200000000000 : ℚ), (259922363403/2000000000 : ℚ), (-40194183709771/1000000000000 : ℚ), 8⟩,
    ⟨(153536046973/500000000000 : ℚ), (90719771441/2000000000 : ℚ), (-1433182929429/100000000000 : ℚ), 7⟩,
    ⟨(310151089411/1000000000000 : ℚ), (55614521891/2500000000 : ℚ), (-1801605341287/250000000000 : ℚ), 6⟩,
    ⟨(314210141247/1000000000000 : ℚ), (1027403741/80000000 : ℚ), (-66782431017/15625000000 : ℚ), 5⟩,
    ⟨(319210158569/1000000000000 : ℚ), (81505605931/10000000000 : ℚ), (-348704431603/125000000000 : ℚ), 5⟩,
    ⟨(13004119539/40000000000 : ℚ), (5497376951/1000000000 : ℚ), (-1935760145177/1000000000000 : ℚ), 4⟩,
    ⟨(331831879793/1000000000000 : ℚ), (38644618331/10000000000 : ℚ), (-349980154897/250000000000 : ℚ), 4⟩,
    ⟨(16966601481/50000000000 : ℚ), (27959957503/10000000000 : ℚ), (-104169306223/100000000000 : ℚ), 3⟩,
    ⟨(347531207413/1000000000000 : ℚ), (20636203849/10000000000 : ℚ), (-79039085383/100000000000 : ℚ), 3⟩,
    ⟨(356350450609/1000000000000 : ℚ), (7714640661/5000000000 : ℚ), (-607287131727/1000000000000 : ℚ), 3⟩,
    ⟨(14628193003/40000000000 : ℚ), (11616099109/10000000000 : ℚ), (-469724778077/1000000000000 : ℚ), 3⟩,
    ⟨(37550424307/100000000000 : ℚ), (4377095341/5000000000 : ℚ), (-181867505237/500000000000 : ℚ), 3⟩,
    ⟨(192827165421/500000000000 : ℚ), (3280627231/5000000000 : ℚ), (-56065896191/200000000000 : ℚ), 3⟩,
    ⟨(198028668749/500000000000 : ℚ), (2425425087/5000000000 : ℚ), (-21351582263/100000000000 : ℚ), 2⟩,
    ⟨(101653269099/250000000000 : ℚ), (437029167/1250000000 : ℚ), (-159178353021/1000000000000 : ℚ), 2⟩,
    ⟨(417219890001/1000000000000 : ℚ), (2409103327/10000000000 : ℚ), (-57209105723/500000000000 : ℚ), 2⟩,
    ⟨(4277756289/10000000000 : ℚ), (95415003/625000000 : ℚ), (-15429872169/200000000000 : ℚ), 2⟩,
    ⟨(109544658889/250000000000 : ℚ), (401669201/5000000000 : ℚ), (-45843019917/1000000000000 : ℚ), 2⟩,
    ⟨(3502568151/7812500000 : ℚ), (205719583/10000000000 : ℚ), (-4840326781/250000000000 : ℚ), 2⟩,
    ⟨(458128141323/1000000000000 : ℚ), (-36397343/1250000000 : ℚ), (3153807413/1000000000000 : ℚ), 2⟩,
    ⟨(116870628947/250000000000 : ℚ), (-353090993/5000000000 : ℚ), (11178152023/500000000000 : ℚ), 2⟩,
    ⟨(59537719873/125000000000 : ℚ), (-1053622527/10000000000 : ℚ), (19374450457/500000000000 : ℚ), 2⟩,
    ⟨(242250468389/500000000000 : ℚ), (-268898877/2000000000 : ℚ), (13180119053/250000000000 : ℚ), 2⟩,
    ⟨(98400217321/200000000000 : ℚ), (-1587276051/10000000000 : ℚ), (32286511427/500000000000 : ℚ), 2⟩,
    ⟨(249364988961/500000000000 : ℚ), (-1788524191/10000000000 : ℚ), (1490826759/20000000000 : ℚ), 2⟩,
    ⟨(504622807829/1000000000000 : ℚ), (-122081643/625000000 : ℚ), (82807569437/1000000000000 : ℚ), 2⟩,
    ⟨(10192456503/20000000000 : ℚ), (-2085518117/10000000000 : ℚ), (11189006911/125000000000 : ℚ), 2⟩,
    ⟨(513681876987/1000000000000 : ℚ), (-547029309/2500000000 : ℚ), (47380712619/500000000000 : ℚ), 2⟩,
    ⟨(516760872451/1000000000000 : ℚ), (-35363967/156250000 : ℚ), (98634630127/1000000000000 : ℚ), 2⟩,
    ⟨(518830159133/1000000000000 : ℚ), (-1156296971/5000000000 : ℚ), (4047493929/40000000000 : ℚ), 2⟩,
    ⟨(519869808671/1000000000000 : ℚ), (-2337003807/10000000000 : ℚ), (51227536219/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2340043907/10000000000 : ℚ), (102613137869/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (71190365307/250000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control232.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control232.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate232

-- Control233
namespace DiagonalRamsey.JointInheritedCertificate233
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(325689455637/1000000000000 : ℚ), (3077696648353/2500000000 : ℚ), (-3139920038619/7812500000 : ℚ), 11⟩,
    ⟨(326768921303/1000000000000 : ℚ), (670932715373/5000000000 : ℚ), (-44445697413543/1000000000000 : ℚ), 8⟩,
    ⟨(328917456789/1000000000000 : ℚ), (468642662187/10000000000 : ℚ), (-15848556904999/1000000000000 : ℚ), 7⟩,
    ⟨(166057185263/500000000000 : ℚ), (57501998411/2500000000 : ℚ), (-79697296581/10000000000 : ℚ), 6⟩,
    ⟨(67265774897/200000000000 : ℚ), (1661180039/125000000 : ℚ), (-2363690936993/500000000000 : ℚ), 5⟩,
    ⟨(341520380691/1000000000000 : ℚ), (21104499637/2500000000 : ℚ), (-3086069228319/1000000000000 : ℚ), 5⟩,
    ⟨(347638892099/1000000000000 : ℚ), (56993960139/10000000000 : ℚ), (-1071010340303/500000000000 : ℚ), 4⟩,
    ⟨(354625484101/1000000000000 : ℚ), (2506750527/625000000 : ℚ), (-193707294293/125000000000 : ℚ), 4⟩,
    ⟨(362412871997/1000000000000 : ℚ), (29054089531/10000000000 : ℚ), (-144213592941/125000000000 : ℚ), 3⟩,
    ⟨(370926058983/1000000000000 : ℚ), (4294826879/2000000000 : ℚ), (-876009695497/1000000000000 : ℚ), 3⟩,
    ⟨(23755191151/62500000000 : ℚ), (16083208183/10000000000 : ℚ), (-673738160313/1000000000000 : ℚ), 3⟩,
    ⟨(77959136677/200000000000 : ℚ), (758391973/625000000 : ℚ), (-521839874339/1000000000000 : ℚ), 3⟩,
    ⟨(199985198001/500000000000 : ℚ), (9170055067/10000000000 : ℚ), (-404867398881/1000000000000 : ℚ), 3⟩,
    ⟨(410509208223/1000000000000 : ℚ), (6898699653/10000000000 : ℚ), (-156440066787/500000000000 : ℚ), 3⟩,
    ⟨(16852425021/40000000000 : ℚ), (5127365879/10000000000 : ℚ), (-119625013697/500000000000 : ℚ), 2⟩,
    ⟨(86454124871/200000000000 : ℚ), (3724891003/10000000000 : ℚ), (-17942393889/100000000000 : ℚ), 2⟩,
    ⟨(110820913483/250000000000 : ℚ), (2599842741/10000000000 : ℚ), (-130194016189/1000000000000 : ℚ), 2⟩,
    ⟨(227121826381/500000000000 : ℚ), (421782651/2500000000 : ℚ), (-44625501273/500000000000 : ℚ), 2⟩,
    ⟨(29065316879/62500000000 : ℚ), (187914221/2000000000 : ℚ), (-2745083609/50000000000 : ℚ), 2⟩,
    ⟨(95116776457/200000000000 : ℚ), (806059/25000000 : ℚ), (-6471228947/250000000000 : ℚ), 2⟩,
    ⟨(242879297451/500000000000 : ℚ), (-760947/40000000 : ℚ), (-249797561/200000000000 : ℚ), 2⟩,
    ⟨(495471219871/1000000000000 : ℚ), (-617978579/10000000000 : ℚ), (19732268227/1000000000000 : ℚ), 2⟩,
    ⟨(63078527413/125000000000 : ℚ), (-487856987/5000000000 : ℚ), (37617742337/1000000000000 : ℚ), 2⟩,
    ⟨(51314140629/100000000000 : ℚ), (-1274892603/10000000000 : ℚ), (26420193043/500000000000 : ℚ), 2⟩,
    ⟨(260464397093/500000000000 : ℚ), (-304870587/2000000000 : ℚ), (65736965473/1000000000000 : ℚ), 2⟩,
    ⟨(131978846547/250000000000 : ℚ), (-8654683/50000000 : ℚ), (76569779573/1000000000000 : ℚ), 2⟩,
    ⟨(133508474399/250000000000 : ℚ), (-1899936239/10000000000 : ℚ), (42771347499/500000000000 : ℚ), 2⟩,
    ⟨(539225403801/1000000000000 : ℚ), (-1017712129/5000000000 : ℚ), (18562616811/200000000000 : ℚ), 2⟩,
    ⟨(543439907761/1000000000000 : ℚ), (-2140494731/10000000000 : ℚ), (3940029713/40000000000 : ℚ), 2⟩,
    ⟨(546636821497/1000000000000 : ℚ), (-277180067/1250000000 : ℚ), (25673630731/250000000000 : ℚ), 2⟩,
    ⟨(68598169623/125000000000 : ℚ), (-1133940431/5000000000 : ℚ), (105457177583/1000000000000 : ℚ), 2⟩,
    ⟨(549864822649/1000000000000 : ℚ), (-2292849313/10000000000 : ℚ), (26707188761/250000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2295958699/10000000000 : ℚ), (21399950051/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (33787010061/125000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control233.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control233.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate233

-- Control234
namespace DiagonalRamsey.JointInheritedCertificate234
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54586265073/100000000000 : ℚ), (36549820490901/5000000000 : ℚ), (-3992278900480809/1000000000000 : ℚ), 13⟩,
    ⟨(546168724191/1000000000000 : ℚ), (808657587417/1000000000 : ℚ), (-221546177389057/500000000000 : ℚ), 10⟩,
    ⟨(136695033439/250000000000 : ℚ), (1444931848639/5000000000 : ℚ), (-79578798826083/500000000000 : ℚ), 9⟩,
    ⟨(273847703243/500000000000 : ℚ), (1460116651803/10000000000 : ℚ), (-5058180638447/62500000000 : ℚ), 8⟩,
    ⟨(548912337407/1000000000000 : ℚ), (872892114887/10000000000 : ℚ), (-48739072073467/1000000000000 : ℚ), 7⟩,
    ⟨(137606998707/250000000000 : ℚ), (115276784441/2000000000 : ℚ), (-16221943340433/500000000000 : ℚ), 6⟩,
    ⟨(552238727397/1000000000000 : ℚ), (3174745771/78125000 : ℚ), (-4614403175333/200000000000 : ℚ), 6⟩,
    ⟨(554340172899/1000000000000 : ℚ), (9377506721/312500000 : ℚ), (-3438462795311/200000000000 : ℚ), 6⟩,
    ⟨(55672726877/100000000000 : ℚ), (57334787349/2500000000 : ℚ), (-6631554665167/500000000000 : ℚ), 5⟩,
    ⟨(111878852857/200000000000 : ℚ), (179967010207/10000000000 : ℚ), (-10508328678549/1000000000000 : ℚ), 5⟩,
    ⟨(28116736721/50000000000 : ℚ), (144202012663/10000000000 : ℚ), (-4251372451561/500000000000 : ℚ), 5⟩,
    ⟨(141385398831/250000000000 : ℚ), (3672068227/312500000 : ℚ), (-699752230473/100000000000 : ℚ), 4⟩,
    ⟨(142251780347/250000000000 : ℚ), (97083263193/10000000000 : ℚ), (-145979422563/25000000000 : ℚ), 4⟩,
    ⟨(35795185241/62500000000 : ℚ), (81134511897/10000000000 : ℚ), (-4928868447647/1000000000000 : ℚ), 4⟩,
    ⟨(576680170939/1000000000000 : ℚ), (34230302677/5000000000 : ℚ), (-1050153661417/250000000000 : ℚ), 4⟩,
    ⟨(580869209377/1000000000000 : ℚ), (58237218891/10000000000 : ℚ), (-180450218789/50000000000 : ℚ), 4⟩,
    ⟨(585279987411/1000000000000 : ℚ), (1995312469/400000000 : ℚ), (-1560977638471/500000000000 : ℚ), 4⟩,
    ⟨(58990187909/100000000000 : ℚ), (42977739643/10000000000 : ℚ), (-339535069671/125000000000 : ℚ), 3⟩,
    ⟨(37170234367/62500000000 : ℚ), (372131297/100000000 : ℚ), (-2374885352561/1000000000000 : ℚ), 3⟩,
    ⟨(599733983447/1000000000000 : ℚ), (808940819/250000000 : ℚ), (-41698847257/20000000000 : ℚ), 3⟩,
    ⟨(24196820389/40000000000 : ℚ), (7058813167/2500000000 : ℚ), (-183667450111/100000000000 : ℚ), 3⟩,
    ⟨(610270833909/1000000000000 : ℚ), (12355114251/5000000000 : ℚ), (-12980193943/8000000000 : ℚ), 3⟩,
    ⟨(3078860333/5000000000 : ℚ), (2709564819/1250000000 : ℚ), (-1436575405739/1000000000000 : ℚ), 3⟩,
    ⟨(310705477423/500000000000 : ℚ), (4762588219/2500000000 : ℚ), (-637071672169/500000000000 : ℚ), 3⟩,
    ⟨(78396739259/125000000000 : ℚ), (67059491/40000000 : ℚ), (-565739874239/500000000000 : ℚ), 3⟩,
    ⟨(633047060803/1000000000000 : ℚ), (1476621487/1000000000 : ℚ), (-1005556824543/1000000000000 : ℚ), 3⟩,
    ⟨(159754061529/250000000000 : ℚ), (13010612143/10000000000 : ℚ), (-893907369413/1000000000000 : ℚ), 3⟩,
    ⟨(645067089719/1000000000000 : ℚ), (11462220477/10000000000 : ℚ), (-794504784091/1000000000000 : ℚ), 3⟩,
    ⟨(651185014601/1000000000000 : ℚ), (2522867791/2500000000 : ℚ), (-14113440429/20000000000 : ℚ), 2⟩,
    ⟨(131471056429/200000000000 : ℚ), (4436904289/5000000000 : ℚ), (-313005879691/500000000000 : ℚ), 2⟩,
    ⟨(165890756909/250000000000 : ℚ), (7788713643/10000000000 : ℚ), (-110870465289/200000000000 : ℚ), 2⟩,
    ⟨(66979329607/100000000000 : ℚ), (6818941553/10000000000 : ℚ), (-48970544689/100000000000 : ℚ), 2⟩,
    ⟨(338015539093/500000000000 : ℚ), (1189984343/2000000000 : ℚ), (-107808234941/250000000000 : ℚ), 2⟩,
    ⟨(682261346621/1000000000000 : ℚ), (5169281717/10000000000 : ℚ), (-94555067831/250000000000 : ℚ), 2⟩,
    ⟨(688469092111/1000000000000 : ℚ), (893293379/2000000000 : ℚ), (-66011078257/200000000000 : ℚ), 2⟩,
    ⟨(138927871931/200000000000 : ℚ), (3832434247/10000000000 : ℚ), (-57242336837/200000000000 : ℚ), 2⟩,
    ⟨(700757284537/1000000000000 : ℚ), (101856393/312500000 : ℚ), (-246234144887/1000000000000 : ℚ), 2⟩,
    ⟨(706808128141/1000000000000 : ℚ), (2740660587/10000000000 : ℚ), (-20972810147/100000000000 : ℚ), 2⟩,
    ⟨(712777313453/1000000000000 : ℚ), (2270381501/10000000000 : ℚ), (-88174982341/500000000000 : ℚ), 2⟩,
    ⟨(143730092037/200000000000 : ℚ), (921753429/5000000000 : ℚ), (-4556237433/31250000000 : ℚ), 2⟩,
    ⟨(72441341941/100000000000 : ℚ), (90976489/625000000 : ℚ), (-58906997381/500000000000 : ℚ), 2⟩,
    ⟨(91256538457/125000000000 : ℚ), (34464797/312500000 : ℚ), (-92162015111/1000000000000 : ℚ), 2⟩,
    ⟨(735553540347/1000000000000 : ℚ), (390936363/5000000000 : ℚ), (-68639982393/1000000000000 : ℚ), 2⟩,
    ⟨(740903864531/1000000000000 : ℚ), (244824243/5000000000 : ℚ), (-47067989033/1000000000000 : ℚ), 2⟩,
    ⟨(746090390809/1000000000000 : ℚ), (27947849/1250000000 : ℚ), (-682169559/25000000000 : ℚ), 2⟩,
    ⟨(150220124877/200000000000 : ℚ), (-9316941/5000000000 : ℚ), (-9155134149/1000000000000 : ℚ), 2⟩,
    ⟨(377961247583/500000000000 : ℚ), (-23904203/1000000000 : ℚ), (3726196473/500000000000 : ℚ), 2⟩,
    ⟨(152108877369/200000000000 : ℚ), (-439446577/10000000000 : ℚ), (22647340901/1000000000000 : ℚ), 2⟩,
    ⟨(764955164879/1000000000000 : ℚ), (-310722693/5000000000 : ℚ), (18264487453/500000000000 : ℚ), 2⟩,
    ⟨(384572101659/500000000000 : ℚ), (-786453569/10000000000 : ℚ), (49185664013/1000000000000 : ℚ), 2⟩,
    ⟨(773101410401/1000000000000 : ℚ), (-93572427/1000000000 : ℚ), (6069606271/100000000000 : ℚ), 2⟩,
    ⟨(776817252869/1000000000000 : ℚ), (-1070366459/10000000000 : ℚ), (177825309/2500000000 : ℚ), 2⟩,
    ⟨(780282778933/1000000000000 : ℚ), (-1191360177/10000000000 : ℚ), (40274982639/500000000000 : ℚ), 2⟩,
    ⟨(195872409959/250000000000 : ℚ), (-1299569609/10000000000 : ℚ), (44505308663/500000000000 : ℚ), 2⟩,
    ⟨(786430109971/1000000000000 : ℚ), (-87234643/625000000 : ℚ), (48280329509/500000000000 : ℚ), 2⟩,
    ⟨(789097105487/1000000000000 : ℚ), (-740289343/5000000000 : ℚ), (51621383147/500000000000 : ℚ), 2⟩,
    ⟨(791484201357/1000000000000 : ℚ), (-1554620409/10000000000 : ℚ), (27273544927/250000000000 : ℚ), 2⟩,
    ⟨(39679282343/50000000000 : ℚ), (-809188583/5000000000 : ℚ), (114147102411/1000000000000 : ℚ), 2⟩,
    ⟨(198849094857/250000000000 : ℚ), (-1672272657/10000000000 : ℚ), (7401814773/62500000000 : ℚ), 2⟩,
    ⟨(796912036849/1000000000000 : ℚ), (-1716661511/10000000000 : ℚ), (24392613083/200000000000 : ℚ), 2⟩,
    ⟨(798128967771/1000000000000 : ℚ), (-1751833351/10000000000 : ℚ), (62384043763/500000000000 : ℚ), 2⟩,
    ⟨(1598088481/2000000000 : ℚ), (-1778016083/10000000000 : ℚ), (12685900373/100000000000 : ℚ), 2⟩,
    ⟨(159931130013/200000000000 : ℚ), (-1795378449/10000000000 : ℚ), (64123431891/500000000000 : ℚ), 2⟩,
    ⟨(799961723527/1000000000000 : ℚ), (-1804031919/10000000000 : ℚ), (6446948789/50000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1805112307/10000000000 : ℚ), (64512702391/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (128599292751/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control234.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control234.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate234

-- Control235
namespace DiagonalRamsey.JointInheritedCertificate235
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6974319473/31250000000 : ℚ), (2674147457021/2500000000 : ℚ), (-239375141414069/1000000000000 : ℚ), 11⟩,
    ⟨(224029155211/1000000000000 : ℚ), (1163534911183/10000000000 : ℚ), (-6617217520911/250000000000 : ℚ), 8⟩,
    ⟨(225722824421/1000000000000 : ℚ), (405171468833/10000000000 : ℚ), (-1887248391521/200000000000 : ℚ), 7⟩,
    ⟨(57060729951/250000000000 : ℚ), (198169270467/10000000000 : ℚ), (-1185853872489/250000000000 : ℚ), 6⟩,
    ⟨(115782585733/500000000000 : ℚ), (114059541483/10000000000 : ℚ), (-35150285619/12500000000 : ℚ), 5⟩,
    ⟨(117828792153/500000000000 : ℚ), (36075810893/5000000000 : ℚ), (-1834148379787/1000000000000 : ℚ), 5⟩,
    ⟨(240480746151/1000000000000 : ℚ), (48491422833/10000000000 : ℚ), (-635752523983/500000000000 : ℚ), 4⟩,
    ⟨(61497051829/250000000000 : ℚ), (16976638371/5000000000 : ℚ), (-28695847997/31250000000 : ℚ), 4⟩,
    ⟨(12606346397/50000000000 : ℚ), (4891069917/2000000000 : ℚ), (-681955162461/1000000000000 : ℚ), 3⟩,
    ⟨(129418894393/500000000000 : ℚ), (8977030359/5000000000 : ℚ), (-258009009059/500000000000 : ℚ), 3⟩,
    ⟨(133028080299/500000000000 : ℚ), (13337009229/10000000000 : ℚ), (-96424169/244140625 : ℚ), 3⟩,
    ⟨(68428131627/250000000000 : ℚ), (9958300113/10000000000 : ℚ), (-30384290663/100000000000 : ℚ), 3⟩,
    ⟨(140866575763/500000000000 : ℚ), (7423194809/10000000000 : ℚ), (-58372698481/250000000000 : ℚ), 3⟩,
    ⟨(290040792651/1000000000000 : ℚ), (5480214843/10000000000 : ℚ), (-177981952323/1000000000000 : ℚ), 3⟩,
    ⟨(59711088551/200000000000 : ℚ), (792712377/2000000000 : ℚ), (-133374959889/1000000000000 : ℚ), 3⟩,
    ⟨(61439020221/200000000000 : ℚ), (690186341/2500000000 : ℚ), (-6060305037/62500000000 : ℚ), 2⟩,
    ⟨(157938281533/500000000000 : ℚ), (1793567727/10000000000 : ℚ), (-66848630057/1000000000000 : ℚ), 2⟩,
    ⟨(40564527677/125000000000 : ℚ), (503265951/5000000000 : ℚ), (-20829420383/500000000000 : ℚ), 2⟩,
    ⟨(2081442947/6250000000 : ℚ), (71908781/2000000000 : ℚ), (-4079094151/200000000000 : ℚ), 2⟩,
    ⟨(68267702529/200000000000 : ℚ), (-88405013/5000000000 : ℚ), (-2316155203/1000000000000 : ℚ), 2⟩,
    ⟨(349359137663/1000000000000 : ℚ), (-624394987/10000000000 : ℚ), (3284256581/250000000000 : ℚ), 2⟩,
    ⟨(357015503573/1000000000000 : ℚ), (-999648419/10000000000 : ℚ), (26387579421/1000000000000 : ℚ), 2⟩,
    ⟨(72846775077/200000000000 : ℚ), (-1315043809/10000000000 : ℚ), (37759473467/1000000000000 : ℚ), 2⟩,
    ⟨(46368092029/125000000000 : ℚ), (-1580117549/10000000000 : ℚ), (11875476149/250000000000 : ℚ), 2⟩,
    ⟨(75416691371/200000000000 : ℚ), (-1802199767/10000000000 : ℚ), (55807166317/1000000000000 : ℚ), 2⟩,
    ⟨(382590918021/1000000000000 : ℚ), (-99347043/500000000 : ℚ), (31411864767/500000000000 : ℚ), 2⟩,
    ⟨(193707039933/500000000000 : ℚ), (-213869459/1000000000 : ℚ), (68665929707/1000000000000 : ℚ), 2⟩,
    ⟨(78301298541/200000000000 : ℚ), (-1130399337/5000000000 : ℚ), (36710599941/500000000000 : ℚ), 2⟩,
    ⟨(394828744367/1000000000000 : ℚ), (-2355780731/10000000000 : ℚ), (77155487853/1000000000000 : ℚ), 2⟩,
    ⟨(1589395359/4000000000 : ℚ), (-2425508683/10000000000 : ℚ), (9989661633/125000000000 : ℚ), 2⟩,
    ⟨(2494015681/6250000000 : ℚ), (-247129871/1000000000 : ℚ), (10217577529/125000000000 : ℚ), 2⟩,
    ⟨(79978688207/200000000000 : ℚ), (-1246994821/5000000000 : ℚ), (8264704881/100000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-2496816551/10000000000 : ℚ), (82760110129/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (84687857639/250000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control235.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control235.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate235

-- Control236
namespace DiagonalRamsey.JointInheritedCertificate236
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236049406237/1000000000000 : ℚ), (10875675578381/10000000000 : ℚ), (-257408723824931/1000000000000 : ℚ), 11⟩,
    ⟨(59233661207/250000000000 : ℚ), (29582891241/250000000 : ℚ), (-28463283601481/1000000000000 : ℚ), 8⟩,
    ⟨(238696596677/1000000000000 : ℚ), (206104522971/5000000000 : ℚ), (-10147529814211/1000000000000 : ℚ), 7⟩,
    ⟨(120659146613/500000000000 : ℚ), (201697515319/10000000000 : ℚ), (-2550599409511/500000000000 : ℚ), 6⟩,
    ⟨(244774486103/1000000000000 : ℚ), (116145296669/10000000000 : ℚ), (-1512170872193/500000000000 : ℚ), 5⟩,
    ⟨(124515945141/500000000000 : ℚ), (73508919551/10000000000 : ℚ), (-1972844566021/1000000000000 : ℚ), 5⟩,
    ⟨(127024752317/500000000000 : ℚ), (24715733929/5000000000 : ℚ), (-1367868602329/1000000000000 : ℚ), 4⟩,
    ⟨(64944751697/250000000000 : ℚ), (541143783/156250000 : ℚ), (-494041099343/500000000000 : ℚ), 4⟩,
    ⟨(66541304627/250000000000 : ℚ), (4992604753/2000000000 : ℚ), (-2867338747/3906250000 : ℚ), 3⟩,
    ⟨(136573318541/500000000000 : ℚ), (91712259/50000000 : ℚ), (-27783989071/50000000000 : ℚ), 3⟩,
    ⟨(56131205527/200000000000 : ℚ), (13639935127/10000000000 : ℚ), (-21279069571/50000000000 : ℚ), 3⟩,
    ⟨(28862107063/100000000000 : ℚ), (5099175001/5000000000 : ℚ), (-81925172027/250000000000 : ℚ), 3⟩,
    ⟨(296965058349/1000000000000 : ℚ), (1904003563/2500000000 : ℚ), (-50429688141/200000000000 : ℚ), 3⟩,
    ⟨(76401908407/250000000000 : ℚ), (2818482211/5000000000 : ℚ), (-9628155143/50000000000 : ℚ), 3⟩,
    ⟨(9827048867/31250000000 : ℚ), (4092398247/10000000000 : ℚ), (-144705394617/1000000000000 : ℚ), 3⟩,
    ⟨(323453541987/1000000000000 : ℚ), (358468841/1250000000 : ℚ), (-26416394331/250000000000 : ℚ), 2⟩,
    ⟨(332485009213/1000000000000 : ℚ), (376670811/2000000000 : ℚ), (-1146813883/15625000000 : ℚ), 2⟩,
    ⟨(68294597491/200000000000 : ℚ), (216529137/2000000000 : ℚ), (-46425371093/1000000000000 : ℚ), 2⟩,
    ⟨(350330917571/1000000000000 : ℚ), (212372323/5000000000 : ℚ), (-23676811341/1000000000000 : ℚ), 2⟩,
    ⟨(7179469857/20000000000 : ℚ), (-15044209/1250000000 : ℚ), (-870169489/200000000000 : ℚ), 2⟩,
    ⟨(367317480569/1000000000000 : ℚ), (-574964147/10000000000 : ℚ), (759610121/62500000000 : ℚ), 2⟩,
    ⟨(93820630891/250000000000 : ℚ), (-4779353/50000000 : ℚ), (5258743359/200000000000 : ℚ), 2⟩,
    ⟨(382791914117/1000000000000 : ℚ), (-1275815761/10000000000 : ℚ), (38418661193/1000000000000 : ℚ), 2⟩,
    ⟨(97443333173/250000000000 : ℚ), (-1544546783/10000000000 : ℚ), (24398895867/500000000000 : ℚ), 2⟩,
    ⟨(396159544411/1000000000000 : ℚ), (-353911901/2000000000 : ℚ), (28819526647/500000000000 : ℚ), 2⟩,
    ⟨(200944523283/500000000000 : ℚ), (-97831741/500000000 : ℚ), (8137898259/125000000000 : ℚ), 2⟩,
    ⟨(406906660917/1000000000000 : ℚ), (-2110229029/10000000000 : ℚ), (7131412469/100000000000 : ℚ), 2⟩,
    ⟨(51395508137/125000000000 : ℚ), (-2233759841/10000000000 : ℚ), (2386461267/31250000000 : ℚ), 2⟩,
    ⟨(414620257973/1000000000000 : ℚ), (-2329816371/10000000000 : ℚ), (4016637717/50000000000 : ℚ), 2⟩,
    ⟨(208620977261/500000000000 : ℚ), (-600078139/2500000000 : ℚ), (41632433339/500000000000 : ℚ), 2⟩,
    ⟨(104750976593/250000000000 : ℚ), (-244659731/1000000000 : ℚ), (42600062859/500000000000 : ℚ), 2⟩,
    ⟨(209944572481/500000000000 : ℚ), (-1234765237/5000000000 : ℚ), (10770255969/125000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2472387423/10000000000 : ℚ), (10785252971/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (41267338487/125000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control236.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control236.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate236

-- Control237
namespace DiagonalRamsey.JointInheritedCertificate237
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(281697333407/1000000000000 : ℚ), (3171238652809/2500000000 : ℚ), (-71632227002349/200000000000 : ℚ), 11⟩,
    ⟨(282603515789/1000000000000 : ℚ), (55318886747/400000000 : ℚ), (-9899712062679/250000000000 : ℚ), 8⟩,
    ⟨(3555089419/12500000000 : ℚ), (120775603941/2500000000 : ℚ), (-2822753293053/200000000000 : ℚ), 7⟩,
    ⟨(35886359573/125000000000 : ℚ), (118561803051/5000000000 : ℚ), (-886529712247/125000000000 : ℚ), 6⟩,
    ⟨(290628839261/1000000000000 : ℚ), (136984817571/10000000000 : ℚ), (-840514119279/200000000000 : ℚ), 5⟩,
    ⟨(58997393807/200000000000 : ℚ), (4348699451/500000000 : ℚ), (-684915282731/250000000000 : ℚ), 5⟩,
    ⟨(60024658947/200000000000 : ℚ), (58664285443/10000000000 : ℚ), (-37961894133/20000000000 : ℚ), 4⟩,
    ⟨(305988350737/1000000000000 : ℚ), (20609752627/5000000000 : ℚ), (-1369903510363/1000000000000 : ℚ), 4⟩,
    ⟨(9766426667/31250000000 : ℚ), (14894495499/5000000000 : ℚ), (-1016714016647/1000000000000 : ℚ), 4⟩,
    ⟨(319672244759/1000000000000 : ℚ), (685685073/312500000 : ℚ), (-768872449689/1000000000000 : ℚ), 3⟩,
    ⟨(327359299401/1000000000000 : ℚ), (16353544241/10000000000 : ℚ), (-117643699711/200000000000 : ℚ), 3⟩,
    ⟨(33551278673/100000000000 : ℚ), (12253557037/10000000000 : ℚ), (-226213574079/500000000000 : ℚ), 3⟩,
    ⟨(344054184207/1000000000000 : ℚ), (9170385627/10000000000 : ℚ), (-347734987111/1000000000000 : ℚ), 3⟩,
    ⟨(70580246701/200000000000 : ℚ), (680299973/1000000000 : ℚ), (-33160805173/125000000000 : ℚ), 3⟩,
    ⟨(180984366351/500000000000 : ℚ), (9672809/19531250 : ℚ), (-199178313041/1000000000000 : ℚ), 3⟩,
    ⟨(14846774273/40000000000 : ℚ), (3483512677/10000000000 : ℚ), (-72678427219/500000000000 : ℚ), 2⟩,
    ⟨(380414498833/1000000000000 : ℚ), (230178097/1000000000 : ℚ), (-25241891379/250000000000 : ℚ), 2⟩,
    ⟨(97403780739/250000000000 : ℚ), (1340141683/10000000000 : ℚ), (-63957114731/1000000000000 : ℚ), 2⟩,
    ⟨(199341311077/500000000000 : ℚ), (137483843/2500000000 : ℚ), (-16410755803/500000000000 : ℚ), 2⟩,
    ⟨(407529671451/1000000000000 : ℚ), (-13081481/1250000000 : ℚ), (-805271757/125000000000 : ℚ), 2⟩,
    ⟨(1625277613/3906250000 : ℚ), (-650330713/10000000000 : ℚ), (8011758517/500000000000 : ℚ), 2⟩,
    ⟨(424224556257/1000000000000 : ℚ), (-276811901/2500000000 : ℚ), (17608474531/500000000000 : ℚ), 2⟩,
    ⟨(431911610899/1000000000000 : ℚ), (-74536987/500000000 : ℚ), (51630343043/1000000000000 : ℚ), 2⟩,
    ⟨(219529101157/500000000000 : ℚ), (-1812569061/10000000000 : ℚ), (32821845291/500000000000 : ℚ), 2⟩,
    ⟨(222797752461/500000000000 : ℚ), (-2081802409/10000000000 : ℚ), (4846961701/62500000000 : ℚ), 2⟩,
    ⟨(451460560923/1000000000000 : ℚ), (-288180909/1250000000 : ℚ), (87581709937/1000000000000 : ℚ), 2⟩,
    ⟨(456596886623/1000000000000 : ℚ), (-796453/3200000 : ℚ), (23415828/244140625 : ℚ), 2⟩,
    ⟨(460955016397/1000000000000 : ℚ), (-2636364693/10000000000 : ℚ), (102675578447/1000000000000 : ℚ), 2⟩,
    ⟨(232246489537/500000000000 : ℚ), (-2750947849/10000000000 : ℚ), (107977485873/1000000000000 : ℚ), 2⟩,
    ⟨(233588351069/500000000000 : ℚ), (-2834998453/10000000000 : ℚ), (55946401077/500000000000 : ℚ), 2⟩,
    ⟨(46898033987/100000000000 : ℚ), (-722540553/2500000000 : ℚ), (11447488359/100000000000 : ℚ), 2⟩,
    ⟨(469886522251/1000000000000 : ℚ), (-2917488653/10000000000 : ℚ), (115757676137/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1460446309/5000000000 : ℚ), (115917643171/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (289520438547/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control237.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control237.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate237

-- Control238
namespace DiagonalRamsey.JointInheritedCertificate238
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(288758011491/1000000000000 : ℚ), (12803411768263/10000000000 : ℚ), (-370559557028749/1000000000000 : ℚ), 11⟩,
    ⟨(289678338981/1000000000000 : ℚ), (1396062412119/10000000000 : ℚ), (-40970022783339/1000000000000 : ℚ), 8⟩,
    ⟨(145755065353/500000000000 : ℚ), (24388198477/500000000 : ℚ), (-1825346208551/125000000000 : ℚ), 7⟩,
    ⟨(73558936377/250000000000 : ℚ), (119731901633/5000000000 : ℚ), (-7338204504533/1000000000000 : ℚ), 6⟩,
    ⟨(74457233557/250000000000 : ℚ), (17296329753/1250000000 : ℚ), (-4348534465391/1000000000000 : ℚ), 5⟩,
    ⟨(151127546247/500000000000 : ℚ), (87877652491/10000000000 : ℚ), (-2835016433139/1000000000000 : ℚ), 5⟩,
    ⟨(153735796991/500000000000 : ℚ), (474332691/80000000 : ℚ), (-196435575303/100000000000 : ℚ), 4⟩,
    ⟨(78357050233/250000000000 : ℚ), (41674344427/10000000000 : ℚ), (-283584793419/200000000000 : ℚ), 4⟩,
    ⟨(320067547961/1000000000000 : ℚ), (1506473403/500000000 : ℚ), (-1052557470481/1000000000000 : ℚ), 4⟩,
    ⟨(32732569453/100000000000 : ℚ), (11101532057/5000000000 : ℚ), (-79619112157/100000000000 : ℚ), 3⟩,
    ⟨(167566370359/500000000000 : ℚ), (16557721021/10000000000 : ℚ), (-609343339203/1000000000000 : ℚ), 3⟩,
    ⟨(343413500403/1000000000000 : ℚ), (12415720499/10000000000 : ℚ), (-29307244477/62500000000 : ℚ), 3⟩,
    ⟨(352088225343/1000000000000 : ℚ), (4650450773/5000000000 : ℚ), (-36066852031/100000000000 : ℚ), 3⟩,
    ⟨(180536686597/500000000000 : ℚ), (690927259/1000000000 : ℚ), (-137719248587/500000000000 : ℚ), 3⟩,
    ⟨(370282412071/1000000000000 : ℚ), (2519964659/5000000000 : ℚ), (-103558838777/500000000000 : ℚ), 3⟩,
    ⟨(75925330779/200000000000 : ℚ), (3556193633/10000000000 : ℚ), (-75755650159/500000000000 : ℚ), 2⟩,
    ⟨(389016108509/1000000000000 : ℚ), (2362772119/10000000000 : ℚ), (-26416326299/250000000000 : ℚ), 2⟩,
    ⟨(199180175167/500000000000 : ℚ), (86988681/625000000 : ℚ), (-33727240583/500000000000 : ℚ), 2⟩,
    ⟨(407569389211/1000000000000 : ℚ), (580228/9765625 : ℚ), (-4415241443/125000000000 : ℚ), 2⟩,
    ⟨(208277268531/500000000000 : ℚ), (-16607487/2500000000 : ℚ), (-1621895551/200000000000 : ℚ), 2⟩,
    ⟨(212614631001/500000000000 : ℚ), (-616941147/10000000000 : ℚ), (15055563041/1000000000000 : ℚ), 2⟩,
    ⟨(433510021687/1000000000000 : ℚ), (-1077757451/10000000000 : ℚ), (2177355103/62500000000 : ℚ), 2⟩,
    ⟨(3530536543/8000000000 : ℚ), (-292879237/2000000000 : ℚ), (51747030767/1000000000000 : ℚ), 2⟩,
    ⟨(448575214443/1000000000000 : ℚ), (-1788760781/10000000000 : ℚ), (8272203137/125000000000 : ℚ), 2⟩,
    ⟨(455214561473/1000000000000 : ℚ), (-1030014881/5000000000 : ℚ), (39217440703/500000000000 : ℚ), 2⟩,
    ⟨(230585584211/500000000000 : ℚ), (-71415591/312500000 : ℚ), (44377877877/500000000000 : ℚ), 2⟩,
    ⟨(46638766991/100000000000 : ℚ), (-1235024931/5000000000 : ℚ), (24330910809/250000000000 : ℚ), 2⟩,
    ⟨(29425864261/62500000000 : ℚ), (-130924719/500000000 : ℚ), (20855899137/200000000000 : ℚ), 2⟩,
    ⟨(7412609639/15625000000 : ℚ), (-683456979/2500000000 : ℚ), (109730145129/1000000000000 : ℚ), 2⟩,
    ⟨(477132631699/1000000000000 : ℚ), (-563683081/2000000000 : ℚ), (28438626861/250000000000 : ℚ), 2⟩,
    ⟨(478964423423/1000000000000 : ℚ), (-114957003/400000000 : ℚ), (116408122967/1000000000000 : ℚ), 2⟩,
    ⟨(479884750913/1000000000000 : ℚ), (-2901420931/10000000000 : ℚ), (58863169953/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2904845909/10000000000 : ℚ), (117890719133/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (35584123719/125000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control238.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control238.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate238

-- Control239
namespace DiagonalRamsey.JointInheritedCertificate239
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18937981599/62500000000 : ℚ), (3260945487391/2500000000 : ℚ), (-19806534823883/50000000000 : ℚ), 11⟩,
    ⟨(151977852841/500000000000 : ℚ), (355655937257/2500000000 : ℚ), (-43797924363283/1000000000000 : ℚ), 8⟩,
    ⟨(305842576121/1000000000000 : ℚ), (497221930347/10000000000 : ℚ), (-15611231097541/1000000000000 : ℚ), 7⟩,
    ⟨(61730029061/200000000000 : ℚ), (244211278157/10000000000 : ℚ), (-7845415564709/1000000000000 : ℚ), 6⟩,
    ⟨(39043921851/125000000000 : ℚ), (28236294663/2000000000 : ℚ), (-2324748196119/500000000000 : ℚ), 5⟩,
    ⟨(39613827471/125000000000 : ℚ), (17942012559/2000000000 : ℚ), (-606320746007/200000000000 : ℚ), 5⟩,
    ⟨(322283972163/1000000000000 : ℚ), (30281580919/5000000000 : ℚ), (-210094144711/100000000000 : ℚ), 4⟩,
    ⟨(41052460459/125000000000 : ℚ), (42595915759/10000000000 : ℚ), (-303378786513/200000000000 : ℚ), 4⟩,
    ⟨(335258664039/1000000000000 : ℚ), (30818928557/10000000000 : ℚ), (-1126418218257/1000000000000 : ℚ), 4⟩,
    ⟨(68547010029/200000000000 : ℚ), (22731489549/10000000000 : ℚ), (-426237896823/500000000000 : ℚ), 3⟩,
    ⟨(21923552519/62500000000 : ℚ), (3394101209/2000000000 : ℚ), (-81607497303/125000000000 : ℚ), 3⟩,
    ⟨(359306587681/1000000000000 : ℚ), (6371603607/5000000000 : ℚ), (-502877834391/1000000000000 : ℚ), 3⟩,
    ⟨(368242146147/1000000000000 : ℚ), (76513019/80000000 : ℚ), (-193652697413/500000000000 : ℚ), 3⟩,
    ⟨(377497461387/1000000000000 : ℚ), (7123266707/10000000000 : ℚ), (-148173284703/500000000000 : ℚ), 3⟩,
    ⟨(193491699829/500000000000 : ℚ), (1303924301/2500000000 : ℚ), (-111735198621/500000000000 : ℚ), 3⟩,
    ⟨(396608606187/1000000000000 : ℚ), (1850980849/5000000000 : ℚ), (-3283824309/20000000000 : ℚ), 2⟩,
    ⟨(16251215399/40000000000 : ℚ), (1242398023/5000000000 : ℚ), (-57674774737/500000000000 : ℚ), 2⟩,
    ⟨(83181118301/200000000000 : ℚ), (373731201/2500000000 : ℚ), (-74671858709/1000000000000 : ℚ), 2⟩,
    ⟨(17015661191/40000000000 : ℚ), (341054979/5000000000 : ℚ), (-1619681663/40000000000 : ℚ), 2⟩,
    ⟨(54330855627/125000000000 : ℚ), (1870019/2000000000 : ℚ), (-5785079687/500000000000 : ℚ), 2⟩,
    ⟨(443582403481/1000000000000 : ℚ), (-68871481/1250000000 : ℚ), (13028573229/1000000000000 : ℚ), 2⟩,
    ⟨(226056075429/500000000000 : ℚ), (-254925597/2500000000 : ℚ), (34016398881/1000000000000 : ℚ), 2⟩,
    ⟨(460153941017/1000000000000 : ℚ), (-353181231/2500000000 : ℚ), (12985138969/250000000000 : ℚ), 2⟩,
    ⟨(467630327123/1000000000000 : ℚ), (-348446129/2000000000 : ℚ), (6722408333/100000000000 : ℚ), 2⟩,
    ⟨(47446930749/100000000000 : ℚ), (-1008812671/5000000000 : ℚ), (80195228383/1000000000000 : ℚ), 2⟩,
    ⟨(480605018999/1000000000000 : ℚ), (-2246184597/10000000000 : ℚ), (91108942181/1000000000000 : ℚ), 2⟩,
    ⟨(242989185697/500000000000 : ℚ), (-2433531967/10000000000 : ℚ), (10016277787/100000000000 : ℚ), 2⟩,
    ⟨(245268808177/500000000000 : ℚ), (-1291995213/5000000000 : ℚ), (107508749237/1000000000000 : ℚ), 2⟩,
    ⟨(247119422929/500000000000 : ℚ), (-540168251/2000000000 : ℚ), (56631102847/500000000000 : ℚ), 2⟩,
    ⟨(248523207521/500000000000 : ℚ), (-1393256917/5000000000 : ℚ), (2937711147/25000000000 : ℚ), 2⟩,
    ⟨(12473332137/25000000000 : ℚ), (-568544473/2000000000 : ℚ), (12030755671/100000000000 : ℚ), 2⟩,
    ⟨(499881285579/1000000000000 : ℚ), (-2870560421/10000000000 : ℚ), (1521222593/12500000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2874027837/10000000000 : ℚ), (12187115763/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (137454418519/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control239.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control239.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate239
