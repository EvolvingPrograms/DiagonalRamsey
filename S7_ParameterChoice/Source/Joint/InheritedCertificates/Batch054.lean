import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control463
namespace DiagonalRamsey.JointInheritedCertificate463
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(312330897743/1000000000000 : ℚ), (15760297375263/10000000000 : ℚ), (-493058717223961/1000000000000 : ℚ), 12⟩,
    ⟨(156520768159/500000000000 : ℚ), (1724081208797/10000000000 : ℚ), (-27240366415833/500000000000 : ℚ), 9⟩,
    ⟨(9826749051/31250000000 : ℚ), (604957017017/10000000000 : ℚ), (-37879639273/1953125000 : ℚ), 7⟩,
    ⟨(316560575917/1000000000000 : ℚ), (298343357229/10000000000 : ℚ), (-9727574524011/1000000000000 : ℚ), 6⟩,
    ⟨(39916885833/125000000000 : ℚ), (173129377653/10000000000 : ℚ), (-114985935887/20000000000 : ℚ), 6⟩,
    ⟨(322752781819/1000000000000 : ℚ), (110353017811/10000000000 : ℚ), (-3735317003863/1000000000000 : ℚ), 5⟩,
    ⟨(326780747109/1000000000000 : ℚ), (7465620341/1000000000 : ℚ), (-1288395910503/500000000000 : ℚ), 5⟩,
    ⟨(165690095513/500000000000 : ℚ), (52548107933/10000000000 : ℚ), (-1849733219679/1000000000000 : ℚ), 4⟩,
    ⟨(336506818411/1000000000000 : ℚ), (18991431939/5000000000 : ℚ), (-272727968291/200000000000 : ℚ), 4⟩,
    ⟨(4276390713/12500000000 : ℚ), (27926452629/10000000000 : ℚ), (-1022618479127/1000000000000 : ℚ), 4⟩,
    ⟨(21758720819/62500000000 : ℚ), (4144516329/2000000000 : ℚ), (-774132890727/1000000000000 : ℚ), 4⟩,
    ⟨(354533591011/1000000000000 : ℚ), (770310717/500000000 : ℚ), (-58744646221/100000000000 : ℚ), 3⟩,
    ⟨(361231852487/1000000000000 : ℚ), (2846284177/2500000000 : ℚ), (-44360824813/100000000000 : ℚ), 3⟩,
    ⟨(92042452403/250000000000 : ℚ), (4140125387/5000000000 : ℚ), (-330422809877/1000000000000 : ℚ), 3⟩,
    ⟨(375280646067/1000000000000 : ℚ), (2920124589/5000000000 : ℚ), (-239758256197/1000000000000 : ℚ), 3⟩,
    ⟨(382495880609/1000000000000 : ℚ), (60837217/156250000 : ℚ), (-16602805163/100000000000 : ℚ), 3⟩,
    ⟨(194873013293/500000000000 : ℚ), (1160099983/5000000000 : ℚ), (-105296134963/1000000000000 : ℚ), 3⟩,
    ⟨(396961261129/1000000000000 : ℚ), (1034297603/10000000000 : ℚ), (-13682287053/250000000000 : ℚ), 3⟩,
    ⟨(25254506099/62500000000 : ℚ), (-6643873/2500000000 : ℚ), (-12250005843/1000000000000 : ℚ), 3⟩,
    ⟨(411010054709/1000000000000 : ℚ), (-45428971/500000000 : ℚ), (2960944341/125000000000 : ℚ), 3⟩,
    ⟨(83541663237/200000000000 : ℚ), (-329256809/2000000000 : ℚ), (6781180617/125000000000 : ℚ), 3⟩,
    ⟨(106025593523/250000000000 : ℚ), (-2265864723/10000000000 : ℚ), (8032394799/100000000000 : ℚ), 3⟩,
    ⟨(107532662539/250000000000 : ℚ), (-2787317919/10000000000 : ℚ), (12824160703/125000000000 : ℚ), 2⟩,
    ⟨(87147017757/200000000000 : ℚ), (-80650603/250000000 : ℚ), (121584407743/1000000000000 : ℚ), 2⟩,
    ⟨(44086171617/100000000000 : ℚ), (-89846683/250000000 : ℚ), (137705645953/1000000000000 : ℚ), 2⟩,
    ⟨(445461160087/1000000000000 : ℚ), (-3900047539/10000000000 : ℚ), (151273561519/1000000000000 : ℚ), 2⟩,
    ⟨(449489125377/1000000000000 : ℚ), (-1037919241/2500000000 : ℚ), (40633215741/250000000000 : ℚ), 2⟩,
    ⟨(113226705133/250000000000 : ℚ), (-4354220613/10000000000 : ℚ), (17167131767/100000000000 : ℚ), 2⟩,
    ⟨(455681331279/1000000000000 : ℚ), (-4511822993/10000000000 : ℚ), (178830964301/1000000000000 : ℚ), 2⟩,
    ⟨(114446484391/250000000000 : ℚ), (-4627549059/10000000000 : ℚ), (18411650681/100000000000 : ℚ), 2⟩,
    ⟨(459200370877/1000000000000 : ℚ), (-587944857/1250000000 : ℚ), (93800743797/500000000000 : ℚ), 2⟩,
    ⟨(459911009453/1000000000000 : ℚ), (-1185307227/2500000000 : ℚ), (47333158563/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-4745922147/10000000000 : ℚ), (189548502343/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (285166308361/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control463.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control463.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate463

-- Control464
namespace DiagonalRamsey.JointInheritedCertificate464
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(115592334211/500000000000 : ℚ), (14495688084051/10000000000 : ℚ), (-167859104831163/500000000000 : ℚ), 12⟩,
    ⟨(46351290387/200000000000 : ℚ), (396067010861/2500000000 : ℚ), (-37090103888237/1000000000000 : ℚ), 9⟩,
    ⟨(58223628093/250000000000 : ℚ), (69390184607/1250000000 : ℚ), (-6599832879393/500000000000 : ℚ), 7⟩,
    ⟨(23458788959/100000000000 : ℚ), (68322484689/2500000000 : ℚ), (-6617364756319/1000000000000 : ℚ), 6⟩,
    ⟨(236820275441/1000000000000 : ℚ), (79132966959/5000000000 : ℚ), (-977081829647/250000000000 : ℚ), 6⟩,
    ⟨(59892542707/250000000000 : ℚ), (20127783151/2000000000 : ℚ), (-2536726948791/1000000000000 : ℚ), 5⟩,
    ⟨(48562218551/200000000000 : ℚ), (33947408261/5000000000 : ℚ), (-174755271443/100000000000 : ℚ), 5⟩,
    ⟨(246511829373/1000000000000 : ℚ), (9526086147/2000000000 : ℚ), (-78257032379/62500000000 : ℚ), 4⟩,
    ⟨(50127348113/200000000000 : ℚ), (34288723791/10000000000 : ℚ), (-230173984723/250000000000 : ℚ), 4⟩,
    ⟨(127573050591/500000000000 : ℚ), (25081891029/10000000000 : ℚ), (-172002951353/250000000000 : ℚ), 4⟩,
    ⟨(129998241807/500000000000 : ℚ), (18488670819/10000000000 : ℚ), (-518291268277/1000000000000 : ℚ), 4⟩,
    ⟨(265141176029/1000000000000 : ℚ), (681157821/500000000 : ℚ), (-97652356069/250000000000 : ℚ), 3⟩,
    ⟨(135265316113/500000000000 : ℚ), (198840809/200000000 : ℚ), (-146033410699/500000000000 : ℚ), 3⟩,
    ⟨(69028237199/250000000000 : ℚ), (3548902573/5000000000 : ℚ), (-107182210481/500000000000 : ℚ), 3⟩,
    ⟨(281834364977/1000000000000 : ℚ), (4860297751/10000000000 : ℚ), (-151970627837/1000000000000 : ℚ), 3⟩,
    ⟨(143819890203/500000000000 : ℚ), (3072588337/10000000000 : ℚ), (-50543762171/500000000000 : ℚ), 3⟩,
    ⟨(293473285757/1000000000000 : ℚ), (162500661/1000000000 : ℚ), (-14760374689/250000000000 : ℚ), 3⟩,
    ⟨(149639350593/500000000000 : ℚ), (109821791/2500000000 : ℚ), (-5977551317/250000000000 : ℚ), 3⟩,
    ⟨(305000117367/1000000000000 : ℚ), (-67678877/1250000000 : ℚ), (5713401387/1000000000000 : ℚ), 3⟩,
    ⟨(310582433937/1000000000000 : ℚ), (-679546431/5000000000 : ℚ), (15437335281/500000000000 : ℚ), 3⟩,
    ⟨(157985945067/500000000000 : ℚ), (-2045042351/10000000000 : ℚ), (10471964527/200000000000 : ℚ), 3⟩,
    ⟨(321116582549/1000000000000 : ℚ), (-2622955801/10000000000 : ℚ), (7076601437/100000000000 : ℚ), 3⟩,
    ⟨(325966964981/1000000000000 : ℚ), (-3110874911/10000000000 : ℚ), (8655019753/100000000000 : ℚ), 3⟩,
    ⟨(165238162799/500000000000 : ℚ), (-140905613/400000000 : ℚ), (100063833311/1000000000000 : ℚ), 2⟩,
    ⟨(33460123679/100000000000 : ℚ), (-483614739/1250000000 : ℚ), (111577977791/1000000000000 : ℚ), 2⟩,
    ⟨(10571936669/31250000000 : ℚ), (-4157943121/10000000000 : ℚ), (4852067391/40000000000 : ℚ), 2⟩,
    ⟨(68308579067/200000000000 : ℚ), (-4396066559/10000000000 : ℚ), (64697838353/500000000000 : ℚ), 2⟩,
    ⟨(172146395361/500000000000 : ℚ), (-4588156769/10000000000 : ℚ), (135982592777/1000000000000 : ℚ), 2⟩,
    ⟨(346525176573/1000000000000 : ℚ), (-592237289/1250000000 : ℚ), (141154700663/1000000000000 : ℚ), 2⟩,
    ⟨(348218553791/1000000000000 : ℚ), (-4848011253/10000000000 : ℚ), (14497967341/100000000000 : ℚ), 2⟩,
    ⟨(87339153557/250000000000 : ℚ), (-49204099/100000000 : ℚ), (147504836321/1000000000000 : ℚ), 2⟩,
    ⟨(349928397741/1000000000000 : ℚ), (-619539119/1250000000 : ℚ), (7438007909/50000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4960787107/10000000000 : ℚ), (74458368787/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (175142142921/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control464.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control464.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate464

-- Control465
namespace DiagonalRamsey.JointInheritedCertificate465
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267394896787/1000000000000 : ℚ), (7511956517977/5000000000 : ℚ), (-402427765963129/1000000000000 : ℚ), 12⟩,
    ⟨(67008260451/250000000000 : ℚ), (82133172827/500000000 : ℚ), (-8892564181521/200000000000 : ℚ), 9⟩,
    ⟨(269303186151/1000000000000 : ℚ), (71991647697/1250000000 : ℚ), (-7912728720481/500000000000 : ℚ), 7⟩,
    ⟨(54238619529/200000000000 : ℚ), (35468784721/1250000000 : ℚ), (-7935357553683/1000000000000 : ℚ), 6⟩,
    ⟨(68421143851/250000000000 : ℚ), (164470126611/10000000000 : ℚ), (-2344081026939/500000000000 : ℚ), 6⟩,
    ⟨(276753625137/1000000000000 : ℚ), (104692490291/10000000000 : ℚ), (-608835950839/200000000000 : ℚ), 5⟩,
    ⟨(35046336277/125000000000 : ℚ), (70715347871/10000000000 : ℚ), (-2098379707757/1000000000000 : ℚ), 5⟩,
    ⟨(284500936327/1000000000000 : ℚ), (1552537051/312500000 : ℚ), (-752353150001/500000000000 : ℚ), 4⟩,
    ⟨(289104586943/1000000000000 : ℚ), (35828775349/10000000000 : ℚ), (-221534944193/200000000000 : ℚ), 4⟩,
    ⟨(29413730639/100000000000 : ℚ), (1313373053/500000000 : ℚ), (-207254781983/250000000000 : ℚ), 4⟩,
    ⟨(299550626831/1000000000000 : ℚ), (776782853/400000000 : ℚ), (-625861739497/1000000000000 : ℚ), 4⟩,
    ⟨(30529241503/100000000000 : ℚ), (7183069963/5000000000 : ℚ), (-59139734869/125000000000 : ℚ), 3⟩,
    ⟨(77826843607/250000000000 : ℚ), (5271712391/5000000000 : ℚ), (-177661323837/500000000000 : ℚ), 3⟩,
    ⟨(317537577677/1000000000000 : ℚ), (189767783/250000000 : ℚ), (-262525338897/1000000000000 : ℚ), 3⟩,
    ⟨(64784604903/200000000000 : ℚ), (526900547/1000000000 : ℚ), (-94046134477/500000000000 : ℚ), 3⟩,
    ⟨(330402219597/1000000000000 : ℚ), (170763311/500000000 : ℚ), (-63733810519/500000000000 : ℚ), 3⟩,
    ⟨(168456382367/500000000000 : ℚ), (478871159/2500000000 : ℚ), (-38721509731/500000000000 : ℚ), 3⟩,
    ⟨(343391959817/1000000000000 : ℚ), (688242993/10000000000 : ℚ), (-17855201529/500000000000 : ℚ), 3⟩,
    ⟨(174888703327/500000000000 : ℚ), (-325656293/10000000000 : ℚ), (-289609587/500000000000 : ℚ), 3⟩,
    ⟨(22250475619/62500000000 : ℚ), (-1169920043/10000000000 : ℚ), (1168305967/40000000000 : ℚ), 3⟩,
    ⟨(362022569301/1000000000000 : ℚ), (-1877240239/10000000000 : ℚ), (13649192279/250000000000 : ℚ), 3⟩,
    ⟨(147105743/400000000 : ℚ), (-19315133/78125000 : ℚ), (76308080151/1000000000000 : ℚ), 3⟩,
    ⟨(373177677941/1000000000000 : ℚ), (-2974068091/10000000000 : ℚ), (2372334793/25000000000 : ℚ), 2⟩,
    ⟨(378210397389/1000000000000 : ℚ), (-169845819/500000000 : ℚ), (55388962923/500000000000 : ℚ), 2⟩,
    ⟨(95703512001/250000000000 : ℚ), (-3752055399/10000000000 : ℚ), (62145160077/500000000000 : ℚ), 2⟩,
    ⟨(96736073529/250000000000 : ℚ), (-2024061079/5000000000 : ℚ), (135684624003/1000000000000 : ℚ), 2⟩,
    ⟨(195280679597/500000000000 : ℚ), (-858356793/2000000000 : ℚ), (145156629393/1000000000000 : ℚ), 2⟩,
    ⟨(393630408927/1000000000000 : ℚ), (-897631427/2000000000 : ℚ), (6114244321/40000000000 : ℚ), 2⟩,
    ⟨(198060943343/500000000000 : ℚ), (-2320558541/5000000000 : ℚ), (158896015837/1000000000000 : ℚ), 2⟩,
    ⟨(19900589909/50000000000 : ℚ), (-4753526839/10000000000 : ℚ), (8167969341/50000000000 : ℚ), 2⟩,
    ⟨(97480943/244140625 : ℚ), (-4827402503/10000000000 : ℚ), (166304403147/1000000000000 : ℚ), 2⟩,
    ⟨(49990010943/125000000000 : ℚ), (-48640281/100000000 : ℚ), (167767963981/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4868591833/10000000000 : ℚ), (167950495079/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (80208321979/250000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control465.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control465.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate465

-- Control466
namespace DiagonalRamsey.JointInheritedCertificate466
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28218964211/100000000000 : ℚ), (7628433250773/5000000000 : ℚ), (-107817087232057/250000000000 : ℚ), 12⟩,
    ⟨(56570567349/200000000000 : ℚ), (52138092023/312500000 : ℚ), (-1906022959303/40000000000 : ℚ), 9⟩,
    ⟨(284172839089/1000000000000 : ℚ), (73139241889/1250000000 : ℚ), (-16960997357779/1000000000000 : ℚ), 7⟩,
    ⟨(143068468399/500000000000 : ℚ), (72091480203/2500000000 : ℚ), (-8505508901653/1000000000000 : ℚ), 6⟩,
    ⟨(36090776817/125000000000 : ℚ), (83604333681/5000000000 : ℚ), (-201026494949/40000000000 : ℚ), 6⟩,
    ⟨(18244733509/62500000000 : ℚ), (106482458239/10000000000 : ℚ), (-815983237439/250000000000 : ℚ), 5⟩,
    ⟨(59134956957/200000000000 : ℚ), (71961379969/10000000000 : ℚ), (-2250432149861/1000000000000 : ℚ), 5⟩,
    ⟨(149983579383/500000000000 : ℚ), (50587569143/10000000000 : ℚ), (-1614304591287/1000000000000 : ℚ), 4⟩,
    ⟨(304751520179/1000000000000 : ℚ), (18254875143/5000000000 : ℚ), (-1188922469397/1000000000000 : ℚ), 4⟩,
    ⟨(309981793007/1000000000000 : ℚ), (26791912877/10000000000 : ℚ), (-445205287151/500000000000 : ℚ), 4⟩,
    ⟨(157803803433/500000000000 : ℚ), (9915755941/5000000000 : ℚ), (-42051102959/62500000000 : ℚ), 4⟩,
    ⟨(321574782091/1000000000000 : ℚ), (7347502487/5000000000 : ℚ), (-509260509361/1000000000000 : ℚ), 3⟩,
    ⟨(327825851523/1000000000000 : ℚ), (2161928269/2000000000 : ℚ), (-3831650053/10000000000 : ℚ), 3⟩,
    ⟨(334300613947/1000000000000 : ℚ), (1952222339/2500000000 : ℚ), (-283866198349/1000000000000 : ℚ), 3⟩,
    ⟨(340936713861/1000000000000 : ℚ), (2724929169/5000000000 : ℚ), (-204253748409/1000000000000 : ℚ), 3⟩,
    ⟨(173835120997/500000000000 : ℚ), (1783407181/5000000000 : ℚ), (-34860990149/250000000000 : ℚ), 3⟩,
    ⟨(44304543849/125000000000 : ℚ), (31934951/156250000 : ℚ), (-85997025983/1000000000000 : ℚ), 3⟩,
    ⟨(14446795157/40000000000 : ℚ), (199529821/2500000000 : ℚ), (-41437866611/1000000000000 : ℚ), 3⟩,
    ⟨(367805978839/1000000000000 : ℚ), (-57641353/2500000000 : ℚ), (-3953081899/1000000000000 : ℚ), 3⟩,
    ⟨(374280741263/1000000000000 : ℚ), (-2716751/25000000 : ℚ), (6951573257/250000000000 : ℚ), 3⟩,
    ⟨(76106362139/200000000000 : ℚ), (-901785907/5000000000 : ℚ), (54856453969/1000000000000 : ℚ), 3⟩,
    ⟨(1207809331/3125000000 : ℚ), (-2406360079/10000000000 : ℚ), (77970735039/1000000000000 : ℚ), 3⟩,
    ⟨(392124799779/1000000000000 : ℚ), (-2914282933/10000000000 : ℚ), (97742268339/1000000000000 : ℚ), 2⟩,
    ⟨(397355072607/1000000000000 : ℚ), (-417763369/1250000000 : ℚ), (114628473021/1000000000000 : ℚ), 2⟩,
    ⟨(20106971701/50000000000 : ℚ), (-1850615013/5000000000 : ℚ), (64491588661/500000000000 : ℚ), 2⟩,
    ⟨(406431808001/1000000000000 : ℚ), (-2000233429/5000000000 : ℚ), (141080163229/1000000000000 : ℚ), 2⟩,
    ⟨(205095428321/500000000000 : ℚ), (-2123312533/5000000000 : ℚ), (151130641553/1000000000000 : ℚ), 2⟩,
    ⟨(1653521513/4000000000 : ℚ), (-4444930861/10000000000 : ℚ), (31859268593/200000000000 : ℚ), 2⟩,
    ⟨(103992413997/250000000000 : ℚ), (-4599344411/10000000000 : ℚ), (165699364779/1000000000000 : ℚ), 2⟩,
    ⟨(417933753697/1000000000000 : ℚ), (-2356396153/5000000000 : ℚ), (85214771813/500000000000 : ℚ), 2⟩,
    ⟨(419253756041/1000000000000 : ℚ), (-598416991/1250000000 : ℚ), (173549878337/1000000000000 : ℚ), 2⟩,
    ⟨(104979237669/250000000000 : ℚ), (-1206072099/2500000000 : ℚ), (7004013919/40000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4828892657/10000000000 : ℚ), (43823426951/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (77244987981/250000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control466.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control466.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate466

-- Control467
namespace DiagonalRamsey.JointInheritedCertificate467
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(100781319119/500000000000 : ℚ), (3814016179817/2500000000 : ℚ), (-308028143080671/1000000000000 : ℚ), 12⟩,
    ⟨(20203635539/100000000000 : ℚ), (333580150483/2000000000 : ℚ), (-34023054861431/1000000000000 : ℚ), 9⟩,
    ⟨(202979227539/1000000000000 : ℚ), (292306796889/5000000000 : ℚ), (-12102439411521/1000000000000 : ℚ), 7⟩,
    ⟨(204382174311/1000000000000 : ℚ), (71966097717/2500000000 : ℚ), (-9473157769/1562500000 : ℚ), 6⟩,
    ⟨(2577896057/12500000000 : ℚ), (166699875513/10000000000 : ℚ), (-715416685281/200000000000 : ℚ), 6⟩,
    ⟨(208509946493/1000000000000 : ℚ), (13245359591/1250000000 : ℚ), (-36226397937/15625000000 : ℚ), 5⟩,
    ⟨(105597509601/500000000000 : ℚ), (17857085887/2500000000 : ℚ), (-1594282368267/1000000000000 : ℚ), 5⟩,
    ⟨(836957203/3906250000 : ℚ), (50038849223/10000000000 : ℚ), (-56978727287/50000000000 : ℚ), 4⟩,
    ⟨(108839246649/500000000000 : ℚ), (17971710417/5000000000 : ℚ), (-417675766939/500000000000 : ℚ), 4⟩,
    ⟨(44282891057/200000000000 : ℚ), (5241260829/2000000000 : ℚ), (-310853294671/500000000000 : ℚ), 4⟩,
    ⟨(9017318023/40000000000 : ℚ), (9612597399/5000000000 : ℚ), (-465821152909/1000000000000 : ℚ), 4⟩,
    ⟨(229695278859/1000000000000 : ℚ), (14066787009/10000000000 : ℚ), (-10890524061/31250000000 : ℚ), 4⟩,
    ⟨(234160391587/1000000000000 : ℚ), (2031713297/2000000000 : ℚ), (-257898815781/1000000000000 : ℚ), 3⟩,
    ⟨(238785287283/1000000000000 : ℚ), (3567119557/5000000000 : ℚ), (-186413876733/1000000000000 : ℚ), 3⟩,
    ⟨(243525425673/1000000000000 : ℚ), (950230483/2000000000 : ℚ), (-64483963159/500000000000 : ℚ), 3⟩,
    ⟨(31041894579/125000000000 : ℚ), (2843810297/10000000000 : ℚ), (-8207780451/100000000000 : ℚ), 3⟩,
    ⟨(126584079911/500000000000 : ℚ), (162066039/1250000000 : ℚ), (-21646047133/500000000000 : ℚ), 3⟩,
    ⟨(257977890781/1000000000000 : ℚ), (6683183/2500000000 : ℚ), (-10848837313/1000000000000 : ℚ), 3⟩,
    ⟨(262718029171/1000000000000 : ℚ), (-1025575649/10000000000 : ℚ), (4135246203/250000000000 : ℚ), 3⟩,
    ⟨(267342924867/1000000000000 : ℚ), (-76186359/400000000 : ℚ), (9958601819/250000000000 : ℚ), 3⟩,
    ⟨(54361607519/200000000000 : ℚ), (-528718197/2000000000 : ℚ), (14937654007/250000000000 : ℚ), 3⟩,
    ⟨(276070365879/1000000000000 : ℚ), (-816837543/2500000000 : ℚ), (4802204201/62500000000 : ℚ), 3⟩,
    ⟨(280088861169/1000000000000 : ℚ), (-758992913/2000000000 : ℚ), (91505354209/1000000000000 : ℚ), 3⟩,
    ⟨(70956205789/250000000000 : ℚ), (-530128107/1250000000 : ℚ), (104081100049/1000000000000 : ℚ), 3⟩,
    ⟨(143621136243/500000000000 : ℚ), (-288548019/625000000 : ℚ), (14351127331/125000000000 : ℚ), 3⟩,
    ⟨(72577074313/250000000000 : ℚ), (-4930865389/10000000000 : ℚ), (61939422121/500000000000 : ℚ), 2⟩,
    ⟨(292993369961/1000000000000 : ℚ), (-5189996799/10000000000 : ℚ), (65718059037/500000000000 : ℚ), 2⟩,
    ⟨(147635815947/500000000000 : ℚ), (-1079855941/2000000000 : ℚ), (137591632283/1000000000000 : ℚ), 2⟩,
    ⟨(297121142143/1000000000000 : ℚ), (-1390645863/2500000000 : ℚ), (35607135641/250000000000 : ℚ), 2⟩,
    ⟨(59704817783/200000000000 : ℚ), (-177586317/312500000 : ℚ), (73003849801/500000000000 : ℚ), 2⟩,
    ⟨(37433370133/125000000000 : ℚ), (-5761822969/10000000000 : ℚ), (7418578617/50000000000 : ℚ), 2⟩,
    ⟨(37492584777/125000000000 : ℚ), (-5801043023/10000000000 : ℚ), (74773505517/500000000000 : ℚ), 2⟩,
    ⟨(3/10 : ℚ), (-5805931153/10000000000 : ℚ), (18711705053/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (91125737843/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control467.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control467.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate467

-- Control468
namespace DiagonalRamsey.JointInheritedCertificate468
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118825154699/500000000000 : ℚ), (3940327683491/2500000000 : ℚ), (-375186057131817/1000000000000 : ℚ), 12⟩,
    ⟨(47638195569/200000000000 : ℚ), (861879757391/5000000000 : ℚ), (-20721764841671/500000000000 : ℚ), 9⟩,
    ⟨(47853421561/200000000000 : ℚ), (302261968821/5000000000 : ℚ), (-14743927689003/1000000000000 : ℚ), 7⟩,
    ⟨(240868335559/1000000000000 : ℚ), (148936901503/5000000000 : ℚ), (-3693830320619/500000000000 : ℚ), 6⟩,
    ⟨(30372405051/125000000000 : ℚ), (86319195609/5000000000 : ℚ), (-2180052310317/500000000000 : ℚ), 6⟩,
    ⟨(49115898637/200000000000 : ℚ), (21968886203/2000000000 : ℚ), (-2827256048601/1000000000000 : ℚ), 5⟩,
    ⟨(49728810407/200000000000 : ℚ), (14826121171/2000000000 : ℚ), (-972662754659/500000000000 : ℚ), 5⟩,
    ⟨(252143403579/1000000000000 : ℚ), (52004947553/10000000000 : ℚ), (-278334963571/200000000000 : ℚ), 4⟩,
    ⟨(5120876943/20000000000 : ℚ), (935529339/250000000 : ℚ), (-127667667589/125000000000 : ℚ), 4⟩,
    ⟨(16269238709/62500000000 : ℚ), (5469030493/2000000000 : ℚ), (-761356347431/1000000000000 : ℚ), 4⟩,
    ⟨(264894255777/1000000000000 : ℚ), (4024124613/2000000000 : ℚ), (-571744685727/1000000000000 : ℚ), 4⟩,
    ⟨(269758986561/1000000000000 : ℚ), (7391328269/5000000000 : ℚ), (-429120434823/1000000000000 : ℚ), 3⟩,
    ⟨(274855161677/1000000000000 : ℚ), (5369595281/5000000000 : ℚ), (-79766664631/250000000000 : ℚ), 3⟩,
    ⟨(140066851087/500000000000 : ℚ), (7611305563/10000000000 : ℚ), (-116153823699/500000000000 : ℚ), 3⟩,
    ⟨(285543772821/1000000000000 : ℚ), (5147889301/10000000000 : ℚ), (-81330219863/500000000000 : ℚ), 3⟩,
    ⟨(291033271681/1000000000000 : ℚ), (1588798611/5000000000 : ℚ), (-105879526193/1000000000000 : ℚ), 3⟩,
    ⟨(148274665939/500000000000 : ℚ), (1580591751/10000000000 : ℚ), (-14743963581/250000000000 : ℚ), 3⟩,
    ⟨(151019415369/500000000000 : ℚ), (135640441/5000000000 : ℚ), (-3959990831/200000000000 : ℚ), 3⟩,
    ⟨(61489780277/200000000000 : ℚ), (-162514467/2000000000 : ℚ), (6610871699/500000000000 : ℚ), 3⟩,
    ⟨(312727441883/1000000000000 : ℚ), (-171691773/1000000000 : ℚ), (4125854563/100000000000 : ℚ), 3⟩,
    ⟨(317823616999/1000000000000 : ℚ), (-2476120409/10000000000 : ℚ), (6519010107/100000000000 : ℚ), 3⟩,
    ⟨(161344173891/500000000000 : ℚ), (-3116158803/10000000000 : ℚ), (5355292739/62500000000 : ℚ), 3⟩,
    ⟨(40909348027/125000000000 : ℚ), (-914210619/2500000000 : ℚ), (51626891081/500000000000 : ℚ), 3⟩,
    ⟨(33153875641/100000000000 : ℚ), (-2056688533/5000000000 : ℚ), (23658176949/200000000000 : ℚ), 3⟩,
    ⟨(335439199981/1000000000000 : ℚ), (-2248742791/5000000000 : ℚ), (32774878103/250000000000 : ℚ), 2⟩,
    ⟨(13557542061/40000000000 : ℚ), (-481822247/1000000000 : ℚ), (35478446357/250000000000 : ℚ), 2⟩,
    ⟨(171001555187/500000000000 : ℚ), (-1270642747/2500000000 : ℚ), (150913707999/1000000000000 : ℚ), 2⟩,
    ⟨(344603363151/1000000000000 : ℚ), (-2647942399/5000000000 : ℚ), (158236631487/1000000000000 : ℚ), 2⟩,
    ⟨(346714268001/1000000000000 : ℚ), (-85347113/156250000 : ℚ), (163985885733/1000000000000 : ℚ), 2⟩,
    ⟨(69663099151/200000000000 : ℚ), (-1116910521/2000000000 : ℚ), (168237248691/1000000000000 : ℚ), 2⟩,
    ⟨(69878325143/200000000000 : ℚ), (-2832500497/5000000000 : ℚ), (34208741377/200000000000 : ℚ), 2⟩,
    ⟨(349932294161/1000000000000 : ℚ), (-5704899651/10000000000 : ℚ), (21554851199/125000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-2854935951/5000000000 : ℚ), (172612821533/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (333566791883/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control468.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control468.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate468

-- Control469
namespace DiagonalRamsey.JointInheritedCertificate469
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129901107543/500000000000 : ℚ), (16106233796813/10000000000 : ℚ), (-83824073744519/200000000000 : ℚ), 12⟩,
    ⟨(130190325739/500000000000 : ℚ), (352380002419/2000000000 : ℚ), (-23149342756717/500000000000 : ℚ), 9⟩,
    ⟨(130765976801/500000000000 : ℚ), (618123465681/10000000000 : ℚ), (-8236382168671/500000000000 : ℚ), 7⟩,
    ⟨(263245033791/1000000000000 : ℚ), (304714105469/10000000000 : ℚ), (-8255181416999/1000000000000 : ℚ), 6⟩,
    ⟨(53100678829/200000000000 : ℚ), (176699398389/10000000000 : ℚ), (-609149179713/125000000000 : ℚ), 6⟩,
    ⟨(13414264271/50000000000 : ℚ), (112500946397/10000000000 : ℚ), (-63219045463/20000000000 : ℚ), 5⟩,
    ⟨(135781958241/500000000000 : ℚ), (18995436477/2500000000 : ℚ), (-2175865559833/1000000000000 : ℚ), 5⟩,
    ⟨(137653856161/500000000000 : ℚ), (1333829679/250000000 : ℚ), (-1557515601983/1000000000000 : ℚ), 4⟩,
    ⟨(139740309069/500000000000 : ℚ), (38435662459/10000000000 : ℚ), (-1143964809831/1000000000000 : ℚ), 4⟩,
    ⟨(35505305821/125000000000 : ℚ), (7031972023/2500000000 : ℚ), (-170739873767/200000000000 : ℚ), 4⟩,
    ⟨(288949264709/1000000000000 : ℚ), (129604843/62500000 : ℚ), (-642062208549/1000000000000 : ℚ), 4⟩,
    ⟨(14707690861/50000000000 : ℚ), (7637906199/5000000000 : ℚ), (-241463899561/500000000000 : ℚ), 3⟩,
    ⟨(37450747677/125000000000 : ℚ), (348112487/312500000 : ℚ), (-5627962757/15625000000 : ℚ), 3⟩,
    ⟨(12210129999/40000000000 : ℚ), (1985150869/2500000000 : ℚ), (-263484177561/1000000000000 : ℚ), 3⟩,
    ⟨(311041236613/1000000000000 : ℚ), (1355485423/2500000000 : ℚ), (-185902702869/1000000000000 : ℚ), 3⟩,
    ⟨(19807137491/62500000000 : ℚ), (106508799/312500000 : ℚ), (-4908022117/40000000000 : ℚ), 3⟩,
    ⟨(20175973741/62500000000 : ℚ), (1776954123/10000000000 : ℚ), (-17634127239/250000000000 : ℚ), 3⟩,
    ⟨(328688543099/1000000000000 : ℚ), (1719961/39062500 : ℚ), (-13503553523/500000000000 : ℚ), 3⟩,
    ⟨(334476529737/1000000000000 : ℚ), (-665412851/10000000000 : ℚ), (9647892017/1000000000000 : ℚ), 3⟩,
    ⟨(42515474787/125000000000 : ℚ), (-1587314583/10000000000 : ℚ), (8147441477/200000000000 : ℚ), 3⟩,
    ⟨(86393990623/250000000000 : ℚ), (-11803203/50000000 : ℚ), (2689840949/40000000000 : ℚ), 3⟩,
    ⟨(350780515003/1000000000000 : ℚ), (-602410247/2000000000 : ℚ), (22480850567/250000000000 : ℚ), 3⟩,
    ⟨(44460916643/125000000000 : ℚ), (-3561889333/10000000000 : ℚ), (27335804891/250000000000 : ℚ), 3⟩,
    ⟨(180124580787/500000000000 : ℚ), (-503222561/1250000000 : ℚ), (62973726681/500000000000 : ℚ), 3⟩,
    ⟨(364422067391/1000000000000 : ℚ), (-176631191/400000000 : ℚ), (70038727491/500000000000 : ℚ), 2⟩,
    ⟨(36816586323/100000000000 : ℚ), (-94824089/200000000 : ℚ), (4749902709/31250000000 : ℚ), 2⟩,
    ⟨(92861123573/250000000000 : ℚ), (-5009245151/10000000000 : ℚ), (161908761151/1000000000000 : ℚ), 2⟩,
    ⟨(374226385567/1000000000000 : ℚ), (-2612708933/5000000000 : ℚ), (169968217307/1000000000000 : ℚ), 2⟩,
    ⟨(376484745921/1000000000000 : ℚ), (-269694951/500000000 : ℚ), (176292137349/1000000000000 : ℚ), 2⟩,
    ⟨(37819782611/100000000000 : ℚ), (-2758886341/5000000000 : ℚ), (90483177539/500000000000 : ℚ), 2⟩,
    ⟨(75869825647/200000000000 : ℚ), (-55992097/100000000 : ℚ), (1472407677/8000000000 : ℚ), 2⟩,
    ⟨(189963782313/500000000000 : ℚ), (-1409898049/2500000000 : ℚ), (18558403233/100000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-5644624441/10000000000 : ℚ), (92887619711/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (157496191013/500000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control469.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control469.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate469

-- Control470
namespace DiagonalRamsey.JointInheritedCertificate470
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137339231277/500000000000 : ℚ), (16332782091411/10000000000 : ℚ), (-449342610177107/1000000000000 : ℚ), 12⟩,
    ⟨(137640778173/500000000000 : ℚ), (223368238889/1250000000 : ℚ), (-6204794559159/125000000000 : ℚ), 9⟩,
    ⟨(4320030247/15625000000 : ℚ), (25082010673/400000000 : ℚ), (-3532368383683/200000000000 : ℚ), 7⟩,
    ⟨(69567010157/250000000000 : ℚ), (309201301823/10000000000 : ℚ), (-8851764008731/1000000000000 : ℚ), 6⟩,
    ⟨(140311334821/500000000000 : ℚ), (44840277957/2500000000 : ℚ), (-522596819433/100000000000 : ℚ), 6⟩,
    ⟨(283523146483/1000000000000 : ℚ), (22848037673/2000000000 : ℚ), (-339033030977/100000000000 : ℚ), 5⟩,
    ⟨(35867692247/125000000000 : ℚ), (38596018853/5000000000 : ℚ), (-233429135281/100000000000 : ℚ), 5⟩,
    ⟨(290844923141/1000000000000 : ℚ), (10846641767/2000000000 : ℚ), (-13058164321/7812500000 : ℚ), 4⟩,
    ⟨(59039142049/200000000000 : ℚ), (4887065361/1250000000 : ℚ), (-614088307561/500000000000 : ℚ), 4⟩,
    ⟨(299951998831/1000000000000 : ℚ), (7159147219/2500000000 : ℚ), (-183418808217/200000000000 : ℚ), 4⟩,
    ⟨(152533991619/500000000000 : ℚ), (845445119/400000000 : ℚ), (-690319457987/1000000000000 : ℚ), 4⟩,
    ⟨(15524719687/50000000000 : ℚ), (3898613543/2500000000 : ℚ), (-519842655771/1000000000000 : ℚ), 3⟩,
    ⟨(316178971039/1000000000000 : ℚ), (11397404779/10000000000 : ℚ), (-15535789061/40000000000 : ℚ), 3⟩,
    ⟨(161033484773/500000000000 : ℚ), (4075894387/5000000000 : ℚ), (-17803986149/62500000000 : ℚ), 3⟩,
    ⟨(164050842309/500000000000 : ℚ), (5596933053/10000000000 : ℚ), (-25230199759/125000000000 : ℚ), 3⟩,
    ⟨(334224998649/1000000000000 : ℚ), (1777442279/5000000000 : ℚ), (-134240038267/1000000000000 : ℚ), 3⟩,
    ⟨(340377940779/1000000000000 : ℚ), (380222703/2000000000 : ℚ), (-78475456449/1000000000000 : ℚ), 3⟩,
    ⟨(346501254811/1000000000000 : ℚ), (68327261/1250000000 : ℚ), (-7992371643/250000000000 : ℚ), 3⟩,
    ⟨(352535969883/1000000000000 : ℚ), (-286683429/5000000000 : ℚ), (1791677301/250000000000 : ℚ), 3⟩,
    ⟨(35842396839/100000000000 : ℚ), (-753349151/5000000000 : ℚ), (20168972937/500000000000 : ℚ), 3⟩,
    ⟨(364108545689/1000000000000 : ℚ), (-457840249/2000000000 : ℚ), (68602203921/1000000000000 : ℚ), 3⟩,
    ⟨(369534956191/1000000000000 : ℚ), (-1473992633/5000000000 : ℚ), (46382157717/500000000000 : ℚ), 3⟩,
    ⟨(187325470299/500000000000 : ℚ), (-218984049/625000000 : ℚ), (113441267369/1000000000000 : ℚ), 3⟩,
    ⟨(379407229183/1000000000000 : ℚ), (-993095609/2500000000 : ℚ), (2622171571/20000000000 : ℚ), 2⟩,
    ⟨(11992438009/31250000000 : ℚ), (-2183086247/5000000000 : ℚ), (146133798307/1000000000000 : ℚ), 2⟩,
    ⟨(387661401453/1000000000000 : ℚ), (-586825723/1250000000 : ℚ), (19850133901/125000000000 : ℚ), 2⟩,
    ⟨(78215958589/200000000000 : ℚ), (-4965009951/10000000000 : ℚ), (169329380689/1000000000000 : ℚ), 2⟩,
    ⟨(393980269787/1000000000000 : ℚ), (-5183008241/10000000000 : ℚ), (177886225891/1000000000000 : ℚ), 2⟩,
    ⟨(396334898801/1000000000000 : ℚ), (-5352859743/10000000000 : ℚ), (184597916247/1000000000000 : ℚ), 2⟩,
    ⟨(398121003621/1000000000000 : ℚ), (-5477710469/10000000000 : ℚ), (189557286311/1000000000000 : ℚ), 2⟩,
    ⟨(199660691541/500000000000 : ℚ), (-44478203/80000000 : ℚ), (96414686759/500000000000 : ℚ), 2⟩,
    ⟨(199962238437/500000000000 : ℚ), (-2800232449/5000000000 : ℚ), (9722770919/50000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-7006919/12500000 : ℚ), (38931642263/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (302667427121/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control470.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control470.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate470
