import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
