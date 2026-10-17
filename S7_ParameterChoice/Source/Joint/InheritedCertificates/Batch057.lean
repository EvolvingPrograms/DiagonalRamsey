import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control490
namespace DiagonalRamsey.JointInheritedCertificate490
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29171550073/100000000000 : ℚ), (3336860865463/2500000000 : ℚ), (-390103637536013/1000000000000 : ℚ), 12⟩,
    ⟨(14623861227/50000000000 : ℚ), (1458368184607/10000000000 : ℚ), (-43114216483257/1000000000000 : ℚ), 9⟩,
    ⟨(146996668171/500000000000 : ℚ), (102181432459/2000000000 : ℚ), (-15354939879267/1000000000000 : ℚ), 7⟩,
    ⟨(296249235151/1000000000000 : ℚ), (98256507/3906250 : ℚ), (-3853409483353/500000000000 : ℚ), 6⟩,
    ⟨(299223195429/1000000000000 : ℚ), (145733014621/10000000000 : ℚ), (-2279633587607/500000000000 : ℚ), 6⟩,
    ⟨(302886576313/1000000000000 : ℚ), (3710425829/400000000 : ℚ), (-1482896141829/500000000000 : ℚ), 5⟩,
    ⟨(307204097441/1000000000000 : ℚ), (62686605997/10000000000 : ℚ), (-2049111764673/1000000000000 : ℚ), 5⟩,
    ⟨(12485367149/40000000000 : ℚ), (44093786943/10000000000 : ℚ), (-368444924601/250000000000 : ℚ), 4⟩,
    ⟨(79407335197/250000000000 : ℚ), (31867737309/10000000000 : ℚ), (-272269459133/250000000000 : ℚ), 4⟩,
    ⟨(64727332443/200000000000 : ℚ), (23443132581/10000000000 : ℚ), (-163827843893/200000000000 : ℚ), 4⟩,
    ⟨(66019657843/200000000000 : ℚ), (17420386651/10000000000 : ℚ), (-4979198613/8000000000 : ℚ), 4⟩,
    ⟨(33695199279/100000000000 : ℚ), (12984619039/10000000000 : ℚ), (-59317884023/125000000000 : ℚ), 3⟩,
    ⟨(86032942007/250000000000 : ℚ), (602261609/625000000 : ℚ), (-360577052931/1000000000000 : ℚ), 3⟩,
    ⟨(175784234883/500000000000 : ℚ), (7055560297/10000000000 : ℚ), (-16928425773/62500000000 : ℚ), 3⟩,
    ⟨(44898809813/125000000000 : ℚ), (1006232469/2000000000 : ℚ), (-49736127539/250000000000 : ℚ), 3⟩,
    ⟨(366924390129/1000000000000 : ℚ), (2670891/7812500 : ℚ), (-140428235837/1000000000000 : ℚ), 3⟩,
    ⟨(187347861423/500000000000 : ℚ), (1058743059/5000000000 : ℚ), (-46096980979/500000000000 : ℚ), 3⟩,
    ⟨(382429634471/1000000000000 : ℚ), (527725007/5000000000 : ℚ), (-26001060489/500000000000 : ℚ), 3⟩,
    ⟨(390051643209/1000000000000 : ℚ), (180345901/10000000000 : ℚ), (-1138217239/62500000000 : ℚ), 3⟩,
    ⟨(99372086237/250000000000 : ℚ), (-273207099/5000000000 : ℚ), (10399289277/1000000000000 : ℚ), 3⟩,
    ⟨(80933624037/200000000000 : ℚ), (-72105329/625000000 : ℚ), (34750654623/1000000000000 : ℚ), 3⟩,
    ⟨(5144022797/12500000000 : ℚ), (-831641713/5000000000 : ℚ), (55543568411/1000000000000 : ℚ), 2⟩,
    ⟨(417983450761/1000000000000 : ℚ), (-2091852113/10000000000 : ℚ), (36658047127/500000000000 : ℚ), 2⟩,
    ⟨(423990772187/1000000000000 : ℚ), (-306522127/1250000000 : ℚ), (88483614599/1000000000000 : ℚ), 2⟩,
    ⟨(1717943737/4000000000 : ℚ), (-2754126733/10000000000 : ℚ), (101367841831/1000000000000 : ℚ), 2⟩,
    ⟨(217208007767/500000000000 : ℚ), (-1502667233/5000000000 : ℚ), (2805451659/25000000000 : ℚ), 2⟩,
    ⟨(219366768331/500000000000 : ℚ), (-3211697283/10000000000 : ℚ), (121226912861/1000000000000 : ℚ), 2⟩,
    ⟨(221198458773/500000000000 : ℚ), (-3377744471/10000000000 : ℚ), (12854213241/100000000000 : ℚ), 2⟩,
    ⟨(3479459983/7812500000 : ℚ), (-3506909999/10000000000 : ℚ), (67137730887/500000000000 : ℚ), 2⟩,
    ⟨(447626776633/1000000000000 : ℚ), (-1800866539/5000000000 : ℚ), (138509251453/1000000000000 : ℚ), 2⟩,
    ⟨(112285722109/250000000000 : ℚ), (-732800643/2000000000 : ℚ), (7065066773/50000000000 : ℚ), 2⟩,
    ⟨(89980922449/200000000000 : ℚ), (-923715213/2500000000 : ℚ), (570753831/4000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-9246763/25000000 : ℚ), (3571535877/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (83191898217/250000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control490.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control490.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate490

-- Control491
namespace DiagonalRamsey.JointInheritedCertificate491
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74764108853/250000000000 : ℚ), (6728768655563/5000000000 : ℚ), (-100803336151903/250000000000 : ℚ), 12⟩,
    ⟨(18739434727/62500000000 : ℚ), (1470537337043/10000000000 : ℚ), (-22281766700509/500000000000 : ℚ), 9⟩,
    ⟨(150686268509/500000000000 : ℚ), (20609715127/400000000 : ℚ), (-991964587841/62500000000 : ℚ), 7⟩,
    ⟨(151833166649/500000000000 : ℚ), (126857430903/5000000000 : ℚ), (-7966320142417/1000000000000 : ℚ), 6⟩,
    ⟨(153345126981/500000000000 : ℚ), (18378012887/1250000000 : ℚ), (-4713021418683/1000000000000 : ℚ), 6⟩,
    ⟨(310415177/1000000000 : ℚ), (18720691939/2000000000 : ℚ), (-1533014803429/500000000000 : ℚ), 5⟩,
    ⟨(157402614683/500000000000 : ℚ), (6327238589/1000000000 : ℚ), (-529645359879/250000000000 : ℚ), 5⟩,
    ⟨(319818132457/1000000000000 : ℚ), (11129770901/2500000000 : ℚ), (-1523958349461/1000000000000 : ℚ), 4⟩,
    ⟨(13016224371/40000000000 : ℚ), (32186542569/10000000000 : ℚ), (-225275413673/200000000000 : ℚ), 4⟩,
    ⟨(66302769873/200000000000 : ℚ), (5922000451/2500000000 : ℚ), (-847420899007/1000000000000 : ℚ), 4⟩,
    ⟨(169042013517/500000000000 : ℚ), (352242371/200000000 : ℚ), (-161032188791/250000000000 : ℚ), 4⟩,
    ⟨(172526433941/500000000000 : ℚ), (6568561333/5000000000 : ℚ), (-245683255847/500000000000 : ℚ), 3⟩,
    ⟨(352353258159/1000000000000 : ℚ), (9759111983/10000000000 : ℚ), (-373638010483/1000000000000 : ℚ), 3⟩,
    ⟨(359914891119/1000000000000 : ℚ), (3577905271/5000000000 : ℚ), (-140485793263/500000000000 : ℚ), 3⟩,
    ⟨(367664944101/1000000000000 : ℚ), (5113796371/10000000000 : ℚ), (-6459958331/31250000000 : ℚ), 3⟩,
    ⟨(187764389929/500000000000 : ℚ), (871886377/2500000000 : ℚ), (-146312220403/1000000000000 : ℚ), 3⟩,
    ⟨(191715332677/500000000000 : ℚ), (2175346197/10000000000 : ℚ), (-96534924509/1000000000000 : ℚ), 3⟩,
    ⟨(391294501111/1000000000000 : ℚ), (110459319/1000000000 : ℚ), (-13767795241/250000000000 : ℚ), 3⟩,
    ⟨(399044554093/1000000000000 : ℚ), (55628527/2500000000 : ℚ), (-5055946177/250000000000 : ℚ), 3⟩,
    ⟨(101651546763/250000000000 : ℚ), (-509845527/10000000000 : ℚ), (2317617663/250000000000 : ℚ), 3⟩,
    ⟨(41390657733/100000000000 : ℚ), (-1121621123/10000000000 : ℚ), (6872773639/200000000000 : ℚ), 3⟩,
    ⟨(420875418177/1000000000000 : ℚ), (-204355753/1250000000 : ℚ), (13945447163/250000000000 : ℚ), 2⟩,
    ⟨(427445595847/1000000000000 : ℚ), (-2066333579/10000000000 : ℚ), (14816249471/200000000000 : ℚ), 2⟩,
    ⟨(433553835937/1000000000000 : ℚ), (-1214501679/5000000000 : ℚ), (89692432229/1000000000000 : ℚ), 2⟩,
    ⟨(87828262551/200000000000 : ℚ), (-2732829911/10000000000 : ℚ), (51474337441/500000000000 : ℚ), 2⟩,
    ⟨(222077107923/500000000000 : ℚ), (-1492765193/5000000000 : ℚ), (57054198851/500000000000 : ℚ), 2⟩,
    ⟨(112136067053/250000000000 : ℚ), (-1596534089/5000000000 : ℚ), (123371386239/1000000000000 : ℚ), 2⟩,
    ⟨(452269191249/1000000000000 : ℚ), (-1680012279/5000000000 : ℚ), (130890965343/1000000000000 : ℚ), 2⟩,
    ⟨(455293111913/1000000000000 : ℚ), (-3489873613/10000000000 : ℚ), (2735662941/20000000000 : ℚ), 2⟩,
    ⟨(228793454097/500000000000 : ℚ), (-179259233/500000000 : ℚ), (28226694721/200000000000 : ℚ), 2⟩,
    ⟨(22956424479/50000000000 : ℚ), (-1823884333/5000000000 : ℚ), (144002044803/1000000000000 : ℚ), 2⟩,
    ⟨(2299515049/5000000000 : ℚ), (-1839389933/5000000000 : ℚ), (145427056447/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3682643253/10000000000 : ℚ), (18200594191/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (163564243/500000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control491.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control491.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate491

-- Control492
namespace DiagonalRamsey.JointInheritedCertificate492
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1278071561/5000000000 : ℚ), (12820122970171/10000000000 : ℚ), (-1641726750957/5000000000 : ℚ), 12⟩,
    ⟨(128154574883/500000000000 : ℚ), (350019542177/2500000000 : ℚ), (-18143315263947/500000000000 : ℚ), 9⟩,
    ⟨(257692133231/1000000000000 : ℚ), (122534230503/2500000000 : ℚ), (-12921779572603/1000000000000 : ℚ), 7⟩,
    ⟨(25974994371/100000000000 : ℚ), (30137520303/1250000000 : ℚ), (-6484329233331/1000000000000 : ℚ), 6⟩,
    ⟨(131231381681/500000000000 : ℚ), (34886353009/2500000000 : ℚ), (-3834952546711/1000000000000 : ℚ), 6⟩,
    ⟨(265804466251/1000000000000 : ℚ), (44359997167/5000000000 : ℚ), (-498721379577/200000000000 : ℚ), 5⟩,
    ⟨(4214732343/15625000000 : ℚ), (5987690177/1000000000 : ℚ), (-107618118897/62500000000 : ℚ), 5⟩,
    ⟨(274240045483/1000000000000 : ℚ), (21026283047/5000000000 : ℚ), (-618729817881/500000000000 : ℚ), 4⟩,
    ⟨(279252682587/1000000000000 : ℚ), (1896024151/625000000 : ℚ), (-114182304611/125000000000 : ℚ), 4⟩,
    ⟨(71183126707/250000000000 : ℚ), (22265717699/10000000000 : ℚ), (-343015356019/500000000000 : ℚ), 4⟩,
    ⟨(145313372251/500000000000 : ℚ), (8248644801/5000000000 : ℚ), (-520193678767/1000000000000 : ℚ), 4⟩,
    ⟨(296878630879/1000000000000 : ℚ), (24498451/20000000 : ℚ), (-395481876361/1000000000000 : ℚ), 3⟩,
    ⟨(485484731/1600000000 : ℚ), (4521140301/5000000000 : ℚ), (-59855729273/200000000000 : ℚ), 3⟩,
    ⟨(310211648901/1000000000000 : ℚ), (410631303/625000000 : ℚ), (-111733208953/500000000000 : ℚ), 3⟩,
    ⟨(158582188147/500000000000 : ℚ), (2314964581/5000000000 : ℚ), (-2032925473/12500000000 : ℚ), 3⟩,
    ⟨(324219180489/1000000000000 : ℚ), (1541805511/5000000000 : ℚ), (-22613145473/200000000000 : ℚ), 3⟩,
    ⟨(41413514983/125000000000 : ℚ), (1834664769/10000000000 : ℚ), (-14429020611/200000000000 : ℚ), 3⟩,
    ⟨(338362924059/1000000000000 : ℚ), (814283521/10000000000 : ℚ), (-37990338303/1000000000000 : ℚ), 3⟩,
    ⟨(86328912863/250000000000 : ℚ), (-1099639/400000000 : ℚ), (-1152924229/125000000000 : ℚ), 3⟩,
    ⟨(176049671739/500000000000 : ℚ), (-90936519/1250000000 : ℚ), (15180193041/1000000000000 : ℚ), 3⟩,
    ⟨(179324334737/500000000000 : ℚ), (-164154151/1250000000 : ℚ), (35991594253/1000000000000 : ℚ), 3⟩,
    ⟨(364900555851/1000000000000 : ℚ), (-902745803/5000000000 : ℚ), (13449295097/250000000000 : ℚ), 3⟩,
    ⟨(14831791741/40000000000 : ℚ), (-444019787/2000000000 : ℚ), (13809252447/200000000000 : ℚ), 2⟩,
    ⟨(188137308883/500000000000 : ℚ), (-2569201809/10000000000 : ℚ), (82084992531/1000000000000 : ℚ), 2⟩,
    ⟨(38128725487/100000000000 : ℚ), (-2862163571/10000000000 : ℚ), (46590423273/500000000000 : ℚ), 2⟩,
    ⟨(385784430401/1000000000000 : ℚ), (-38827719/125000000 : ℚ), (102540565551/1000000000000 : ℚ), 2⟩,
    ⟨(194861417051/500000000000 : ℚ), (-1653472541/5000000000 : ℚ), (110323472473/1000000000000 : ℚ), 2⟩,
    ⟨(393064536991/1000000000000 : ℚ), (-3468628371/10000000000 : ℚ), (116651443599/1000000000000 : ℚ), 2⟩,
    ⟨(395777356643/1000000000000 : ℚ), (-1797255387/5000000000 : ℚ), (121616404453/1000000000000 : ℚ), 2⟩,
    ⟨(198917583561/500000000000 : ℚ), (-1843494293/5000000000 : ℚ), (25057187741/200000000000 : ℚ), 2⟩,
    ⟨(99804537647/250000000000 : ℚ), (-3747749479/10000000000 : ℚ), (127707409659/1000000000000 : ℚ), 2⟩,
    ⟨(399912988153/1000000000000 : ℚ), (-1888934241/5000000000 : ℚ), (25782171951/200000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3781621243/10000000000 : ℚ), (25812190773/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (14424670237/40000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control492.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control492.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate492

-- Control493
namespace DiagonalRamsey.JointInheritedCertificate493
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134959254963/500000000000 : ℚ), (13024314312221/10000000000 : ℚ), (-352231944035749/1000000000000 : ℚ), 12⟩,
    ⟨(16915047363/62500000000 : ℚ), (1422649275309/10000000000 : ℚ), (-7785464773587/200000000000 : ℚ), 9⟩,
    ⟨(27207829793/100000000000 : ℚ), (3892026983/78125000 : ℚ), (-2772562218889/200000000000 : ℚ), 7⟩,
    ⟨(137108642997/500000000000 : ℚ), (122570619413/5000000000 : ℚ), (-6957099701177/1000000000000 : ℚ), 6⟩,
    ⟨(138518561189/500000000000 : ℚ), (35485311933/2500000000 : ℚ), (-4115037703371/1000000000000 : ℚ), 6⟩,
    ⟨(280510650513/1000000000000 : ℚ), (45142260457/5000000000 : ℚ), (-2676170777041/1000000000000 : ℚ), 5⟩,
    ⟨(284604418427/1000000000000 : ℚ), (30482412447/5000000000 : ℚ), (-462095244841/250000000000 : ℚ), 5⟩,
    ⟨(4519984389/15625000000 : ℚ), (8568593613/2000000000 : ℚ), (-33219675711/25000000000 : ℚ), 4⟩,
    ⟨(58897875827/200000000000 : ℚ), (773235307/250000000 : ℚ), (-245325642967/250000000000 : ℚ), 4⟩,
    ⟨(150092687177/500000000000 : ℚ), (22721751139/10000000000 : ℚ), (-737426330169/1000000000000 : ℚ), 4⟩,
    ⟨(76578032751/250000000000 : ℚ), (8427453093/5000000000 : ℚ), (-69953760949/125000000000 : ℚ), 4⟩,
    ⟨(312810645071/1000000000000 : ℚ), (6267109863/5000000000 : ℚ), (-425958900769/1000000000000 : ℚ), 3⟩,
    ⟨(319618332311/1000000000000 : ℚ), (9272546851/10000000000 : ℚ), (-322877472103/1000000000000 : ℚ), 3⟩,
    ⟨(13066785239/40000000000 : ℚ), (6758431919/10000000000 : ℚ), (-241676758003/1000000000000 : ℚ), 3⟩,
    ⟨(166948316601/500000000000 : ℚ), (957140103/2000000000 : ℚ), (-35310178687/200000000000 : ℚ), 3⟩,
    ⟨(341229739009/1000000000000 : ℚ), (160691833/500000000 : ℚ), (-30878151449/250000000000 : ℚ), 3⟩,
    ⟨(17429916329/50000000000 : ℚ), (972341383/5000000000 : ℚ), (-39876945267/500000000000 : ℚ), 3⟩,
    ⟨(88982858097/250000000000 : ℚ), (454107431/5000000000 : ℚ), (-21627322543/500000000000 : ℚ), 3⟩,
    ⟨(72631686923/200000000000 : ℚ), (13393271/2500000000 : ℚ), (-12535128307/1000000000000 : ℚ), 3⟩,
    ⟨(185104866639/500000000000 : ℚ), (-164188857/2500000000 : ℚ), (6752579181/500000000000 : ℚ), 3⟩,
    ⟨(377017420519/1000000000000 : ℚ), (-25016067/200000000 : ℚ), (17847514321/500000000000 : ℚ), 3⟩,
    ⟨(76703186917/200000000000 : ℚ), (-874875081/5000000000 : ℚ), (54665059693/1000000000000 : ℚ), 2⟩,
    ⟨(97410672809/250000000000 : ℚ), (-54243539/250000000 : ℚ), (70898779357/1000000000000 : ℚ), 2⟩,
    ⟨(79067737291/200000000000 : ℚ), (-1261585657/5000000000 : ℚ), (84769007697/1000000000000 : ℚ), 2⟩,
    ⟨(200274532347/500000000000 : ℚ), (-1409799039/5000000000 : ℚ), (96564092581/1000000000000 : ℚ), 2⟩,
    ⟨(405223647163/1000000000000 : ℚ), (-61328193/200000000 : ℚ), (53253566293/500000000000 : ℚ), 2⟩,
    ⟨(102329353769/250000000000 : ℚ), (-3269309339/10000000000 : ℚ), (4590809583/40000000000 : ℚ), 2⟩,
    ⟨(103197735803/250000000000 : ℚ), (-858168663/2500000000 : ℚ), (121485215939/1000000000000 : ℚ), 2⟩,
    ⟨(83122155919/200000000000 : ℚ), (-889955623/2500000000 : ℚ), (12675157947/100000000000 : ℚ), 2⟩,
    ⟨(20887488383/50000000000 : ℚ), (-3653204259/10000000000 : ℚ), (65321283851/500000000000 : ℚ), 2⟩,
    ⟨(209593653891/500000000000 : ℚ), (-1857273439/5000000000 : ℚ), (66604774983/500000000000 : ℚ), 2⟩,
    ⟨(26244347229/62500000000 : ℚ), (-468118823/1250000000 : ℚ), (33621282759/250000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3748738647/10000000000 : ℚ), (26928842511/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (174777933309/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control493.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control493.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate493

-- Control494
namespace DiagonalRamsey.JointInheritedCertificate494
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(152319252919/500000000000 : ℚ), (443842559487/312500000 : ℚ), (-433449296583427/1000000000000 : ℚ), 12⟩,
    ⟨(305386163061/1000000000000 : ℚ), (310549085961/2000000000 : ℚ), (-47900923930073/1000000000000 : ℚ), 9⟩,
    ⟨(306874277159/1000000000000 : ℚ), (108878965777/2000000000 : ℚ), (-8528469290963/500000000000 : ℚ), 7⟩,
    ⟨(309088516781/1000000000000 : ℚ), (134125386969/5000000000 : ℚ), (-8558958530401/1000000000000 : ℚ), 6⟩,
    ⟨(312007557587/1000000000000 : ℚ), (155546790031/10000000000 : ℚ), (-1265420358403/250000000000 : ℚ), 6⟩,
    ⟨(15780164381/50000000000 : ℚ), (19816782879/2000000000 : ℚ), (-3291188140091/1000000000000 : ℚ), 5⟩,
    ⟨(319841078033/1000000000000 : ℚ), (67004750079/10000000000 : ℚ), (-568177162061/250000000000 : ℚ), 5⟩,
    ⟨(81170029147/250000000000 : ℚ), (9431255671/2000000000 : ℚ), (-816760340239/500000000000 : ℚ), 4⟩,
    ⟨(330073800699/1000000000000 : ℚ), (213083387/62500000 : ℚ), (-1206157227939/1000000000000 : ℚ), 4⟩,
    ⟨(335970186239/1000000000000 : ℚ), (12542048343/5000000000 : ℚ), (-181264041257/200000000000 : ℚ), 4⟩,
    ⟨(342312487793/1000000000000 : ℚ), (9318840407/5000000000 : ℚ), (-687826183411/1000000000000 : ℚ), 4⟩,
    ⟨(43629953191/125000000000 : ℚ), (3471443007/2500000000 : ℚ), (-16364237181/31250000000 : ℚ), 3⟩,
    ⟨(44510851679/125000000000 : ℚ), (5147870699/5000000000 : ℚ), (-79429911873/200000000000 : ℚ), 3⟩,
    ⟨(5677909113/15625000000 : ℚ), (940850773/1250000000 : ℚ), (-297587961663/1000000000000 : ℚ), 3⟩,
    ⟨(370867438007/1000000000000 : ℚ), (133829691/250000000 : ℚ), (-54455728607/250000000000 : ℚ), 3⟩,
    ⟨(378458529183/1000000000000 : ℚ), (362085969/1000000000 : ℚ), (-30588828069/200000000000 : ℚ), 3⟩,
    ⟨(96521587601/250000000000 : ℚ), (2222110037/10000000000 : ℚ), (-99492266649/1000000000000 : ℚ), 3⟩,
    ⟨(393677441581/1000000000000 : ℚ), (1080006031/10000000000 : ℚ), (-2199090743/40000000000 : ℚ), 3⟩,
    ⟨(100289674089/250000000000 : ℚ), (27719373/2000000000 : ℚ), (-549184637/31250000000 : ℚ), 3⟩,
    ⟨(102114516539/250000000000 : ℚ), (-80430341/1250000000 : ℚ), (14076468331/1000000000000 : ℚ), 3⟩,
    ⟨(20775262703/50000000000 : ℚ), (-259407867/2000000000 : ℚ), (5124777721/125000000000 : ℚ), 3⟩,
    ⟨(84446478359/200000000000 : ℚ), (-14418701/78125000 : ℚ), (31985864063/500000000000 : ℚ), 3⟩,
    ⟨(428574693349/1000000000000 : ℚ), (-1153485823/5000000000 : ℚ), (16719259321/200000000000 : ℚ), 2⟩,
    ⟨(434471078889/1000000000000 : ℚ), (-673726821/2500000000 : ℚ), (100334818397/1000000000000 : ℚ), 2⟩,
    ⟨(439864763/1000000000 : ℚ), (-3020007887/10000000000 : ℚ), (22909197029/200000000000 : ℚ), 2⟩,
    ⟨(88940760311/200000000000 : ℚ), (-3290482297/10000000000 : ℚ), (126507884573/1000000000000 : ℚ), 2⟩,
    ⟨(14029424749/31250000000 : ℚ), (-1756337493/5000000000 : ℚ), (136435500083/1000000000000 : ℚ), 2⟩,
    ⟨(452537322001/1000000000000 : ℚ), (-3691460433/10000000000 : ℚ), (14449380973/100000000000 : ℚ), 2⟩,
    ⟨(455456362807/1000000000000 : ℚ), (-1915267569/5000000000 : ℚ), (150807630133/1000000000000 : ℚ), 2⟩,
    ⟨(114417650607/250000000000 : ℚ), (-983158203/2500000000 : ℚ), (155468984577/1000000000000 : ℚ), 2⟩,
    ⟨(459158716527/1000000000000 : ℚ), (-3999680173/10000000000 : ℚ), (15854251861/100000000000 : ℚ), 2⟩,
    ⟨(367925099/800000000 : ℚ), (-4032905139/10000000000 : ℚ), (40017328009/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-63078819/156250000 : ℚ), (80129849683/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (315421245581/1000000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control494.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control494.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate494

-- Control495
namespace DiagonalRamsey.JointInheritedCertificate495
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(207676044409/500000000000 : ℚ), (8149235799899/5000000000 : ℚ), (-84752995928643/125000000000 : ℚ), 12⟩,
    ⟨(416240683159/1000000000000 : ℚ), (1784447220359/10000000000 : ℚ), (-74943553449541/1000000000000 : ℚ), 9⟩,
    ⟨(26125582137/62500000000 : ℚ), (627000686189/10000000000 : ℚ), (-6674304238819/250000000000 : ℚ), 7⟩,
    ⟨(420640949033/1000000000000 : ℚ), (61958024323/2000000000 : ℚ), (-1675622645677/125000000000 : ℚ), 6⟩,
    ⟨(424110243599/1000000000000 : ℚ), (18019844439/1000000000 : ℚ), (-991882786839/125000000000 : ℚ), 6⟩,
    ⟨(6693496667/15625000000 : ℚ), (115199721919/10000000000 : ℚ), (-516634496719/100000000000 : ℚ), 5⟩,
    ⟨(27088776359/62500000000 : ℚ), (78224055321/10000000000 : ℚ), (-714815335747/200000000000 : ℚ), 5⟩,
    ⟨(439171643217/1000000000000 : ℚ), (6914536719/1250000000 : ℚ), (-2575236099931/1000000000000 : ℚ), 4⟩,
    ⟨(222791031851/500000000000 : ℚ), (40221355791/10000000000 : ℚ), (-1907864197333/1000000000000 : ℚ), 4⟩,
    ⟨(28286871709/62500000000 : ℚ), (7449875043/2500000000 : ℚ), (-288018959369/200000000000 : ℚ), 4⟩,
    ⟨(460127804393/1000000000000 : ℚ), (2792025109/1250000000 : ℚ), (-1099679888629/1000000000000 : ℚ), 4⟩,
    ⟨(93624608233/200000000000 : ℚ), (16832099041/10000000000 : ℚ), (-84434641583/100000000000 : ℚ), 3⟩,
    ⟨(476498659159/1000000000000 : ℚ), (3168401549/2500000000 : ℚ), (-648026167773/1000000000000 : ℚ), 3⟩,
    ⟨(97034799319/200000000000 : ℚ), (4733842549/5000000000 : ℚ), (-123484706987/250000000000 : ℚ), 3⟩,
    ⟨(494065505233/1000000000000 : ℚ), (6953571337/10000000000 : ℚ), (-92722567573/250000000000 : ℚ), 3⟩,
    ⟨(251543777491/500000000000 : ℚ), (309567073/625000000 : ℚ), (-135592459421/500000000000 : ℚ), 3⟩,
    ⟨(512153258571/1000000000000 : ℚ), (104416627/312500000 : ℚ), (-189395249553/1000000000000 : ℚ), 3⟩,
    ⟨(3257345677/6250000000 : ℚ), (2028962777/10000000000 : ℚ), (-60804324291/500000000000 : ℚ), 3⟩,
    ⟨(530066816957/1000000000000 : ℚ), (118848151/1250000000 : ℚ), (-16237795143/250000000000 : ℚ), 3⟩,
    ⟨(269371077197/500000000000 : ℚ), (58511937/10000000000 : ℚ), (-17277773591/1000000000000 : ℚ), 3⟩,
    ⟨(136779443097/250000000000 : ℚ), (-684115991/10000000000 : ℚ), (2879304771/125000000000 : ℚ), 2⟩,
    ⟨(13877825229/25000000000 : ℚ), (-1304636127/10000000000 : ℚ), (57227060129/1000000000000 : ℚ), 2⟩,
    ⟨(562650866209/1000000000000 : ℚ), (-228019619/1250000000 : ℚ), (86258495063/1000000000000 : ℚ), 2⟩,
    ⟨(569658749851/1000000000000 : ℚ), (-70592951/312500000 : ℚ), (55436698417/500000000000 : ℚ), 2⟩,
    ⟨(115213834067/200000000000 : ℚ), (-1310864767/5000000000 : ℚ), (131652667679/1000000000000 : ℚ), 2⟩,
    ⟨(581820391809/1000000000000 : ℚ), (-2922248111/10000000000 : ℚ), (29809994591/200000000000 : ℚ), 2⟩,
    ⟨(36678564179/62500000000 : ℚ), (-1584078523/5000000000 : ℚ), (1634187431/10000000000 : ℚ), 2⟩,
    ⟨(295565284977/500000000000 : ℚ), (-673067963/2000000000 : ℚ), (87516163931/500000000000 : ℚ), 2⟩,
    ⟨(14864996613/25000000000 : ℚ), (-219892151/625000000 : ℚ), (184099110321/1000000000000 : ℚ), 2⟩,
    ⟨(597231499361/1000000000000 : ℚ), (-1815141471/5000000000 : ℚ), (23846725071/125000000000 : ℚ), 2⟩,
    ⟨(599000130393/1000000000000 : ℚ), (-740742551/2000000000 : ℚ), (195165732387/1000000000000 : ℚ), 2⟩,
    ⟨(299944362367/500000000000 : ℚ), (-3740062641/10000000000 : ℚ), (39468940681/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-936147363/2500000000 : ℚ), (98808143411/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (57879352733/250000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control495.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control495.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate495

-- Control496
namespace DiagonalRamsey.JointInheritedCertificate496
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(251845149061/500000000000 : ℚ), (74549544359589/10000000000 : ℚ), (-3756594815630353/1000000000000 : ℚ), 14⟩,
    ⟨(503926726141/1000000000000 : ℚ), (8250215065331/10000000000 : ℚ), (-208436746314009/500000000000 : ℚ), 11⟩,
    ⟨(252199506301/500000000000 : ℚ), (2949967758241/10000000000 : ℚ), (-935599279271/6250000000 : ℚ), 9⟩,
    ⟨(505106019727/1000000000000 : ℚ), (745701559267/5000000000 : ℚ), (-4755365817073/62500000000 : ℚ), 8⟩,
    ⟨(506046044273/1000000000000 : ℚ), (446075751751/5000000000 : ℚ), (-2862112561813/62500000000 : ℚ), 8⟩,
    ⟨(12680420541/25000000000 : ℚ), (294723248147/5000000000 : ℚ), (-15230083384837/500000000000 : ℚ), 7⟩,
    ⟨(12715388283/25000000000 : ℚ), (41579005571/1000000000 : ℚ), (-2164121861407/100000000000 : ℚ), 7⟩,
    ⟨(255119401851/500000000000 : ℚ), (153581635347/5000000000 : ℚ), (-1006769394567/62500000000 : ℚ), 6⟩,
    ⟨(256041364089/500000000000 : ℚ), (58704015783/2500000000 : ℚ), (-12410757185927/1000000000000 : ℚ), 6⟩,
    ⟨(257071431287/500000000000 : ℚ), (184284275671/10000000000 : ℚ), (-9818289045189/1000000000000 : ℚ), 6⟩,
    ⟨(258207121923/500000000000 : ℚ), (147648013423/10000000000 : ℚ), (-7930775745181/1000000000000 : ℚ), 5⟩,
    ⟨(129722850009/250000000000 : ℚ), (120276184353/10000000000 : ℚ), (-26056273477/4000000000 : ℚ), 5⟩,
    ⟨(521568363459/1000000000000 : ℚ), (1986293727/200000000 : ℚ), (-5423742304043/1000000000000 : ℚ), 5⟩,
    ⟨(131109671269/250000000000 : ℚ), (10365905097/1250000000 : ℚ), (-4566791735771/1000000000000 : ℚ), 5⟩,
    ⟨(52749545003/100000000000 : ℚ), (69889254019/10000000000 : ℚ), (-194056480419/50000000000 : ℚ), 4⟩,
    ⟨(265365647153/500000000000 : ℚ), (59358852319/10000000000 : ℚ), (-3324025967367/1000000000000 : ℚ), 4⟩,
    ⟨(534138422473/1000000000000 : ℚ), (10148395149/2000000000 : ℚ), (-2865292966671/1000000000000 : ℚ), 4⟩,
    ⟨(26885431323/50000000000 : ℚ), (8721967501/2000000000 : ℚ), (-2483113304763/1000000000000 : ℚ), 4⟩,
    ⟨(541433305333/1000000000000 : ℚ), (18823374351/5000000000 : ℚ), (-2161402038889/1000000000000 : ℚ), 4⟩,
    ⟨(272651743007/500000000000 : ℚ), (4077023087/1250000000 : ℚ), (-377617977011/200000000000 : ℚ), 4⟩,
    ⟨(549309844899/1000000000000 : ℚ), (14169077171/5000000000 : ℚ), (-1653977707381/1000000000000 : ℚ), 4⟩,
    ⟨(6918034129/12500000000 : ℚ), (12336883459/5000000000 : ℚ), (-1451954887261/1000000000000 : ℚ), 3⟩,
    ⟨(8713940403/15625000000 : ℚ), (21514495561/10000000000 : ℚ), (-638227613687/500000000000 : ℚ), 3⟩,
    ⟨(112409594801/200000000000 : ℚ), (3754914549/2000000000 : ℚ), (-1123071334131/1000000000000 : ℚ), 3⟩,
    ⟨(141624900371/250000000000 : ℚ), (3277103203/2000000000 : ℚ), (-247069210031/250000000000 : ℚ), 3⟩,
    ⟨(571036343869/1000000000000 : ℚ), (1786516081/1250000000 : ℚ), (-217305832049/250000000000 : ℚ), 3⟩,
    ⟨(575647271749/1000000000000 : ℚ), (1556192279/1250000000 : ℚ), (-763589850309/1000000000000 : ℚ), 3⟩,
    ⟨(145080319249/250000000000 : ℚ), (10820976557/10000000000 : ℚ), (-669470031193/1000000000000 : ℚ), 3⟩,
    ⟨(585047099521/1000000000000 : ℚ), (9376096247/10000000000 : ℚ), (-36580400001/62500000000 : ℚ), 3⟩,
    ⟨(117962670881/200000000000 : ℚ), (8089680907/10000000000 : ℚ), (-254862347537/500000000000 : ℚ), 3⟩,
    ⟨(594608559321/1000000000000 : ℚ), (3470323589/5000000000 : ℚ), (-44168299423/100000000000 : ℚ), 3⟩,
    ⟨(599421162201/1000000000000 : ℚ), (5911265641/10000000000 : ℚ), (-380231966297/1000000000000 : ℚ), 3⟩,
    ⟨(604239569063/1000000000000 : ℚ), (4986547471/10000000000 : ℚ), (-8114588773/25000000000 : ℚ), 3⟩,
    ⟨(609052171943/1000000000000 : ℚ), (830751557/2000000000 : ℚ), (-274066084507/1000000000000 : ℚ), 3⟩,
    ⟨(613847376859/1000000000000 : ℚ), (3402026699/10000000000 : ℚ), (-228104401671/1000000000000 : ℚ), 3⟩,
    ⟨(309306815871/500000000000 : ℚ), (1361018171/5000000000 : ℚ), (-46550951659/250000000000 : ℚ), 3⟩,
    ⟨(155834863567/250000000000 : ℚ), (131610461/625000000 : ℚ), (-147937078453/1000000000000 : ℚ), 3⟩,
    ⟨(314006729757/500000000000 : ℚ), (1546292479/10000000000 : ℚ), (-112933872669/1000000000000 : ℚ), 3⟩,
    ⟨(126524877479/200000000000 : ℚ), (32425223/312500000 : ℚ), (-80872028119/1000000000000 : ℚ), 3⟩,
    ⟨(637161129779/1000000000000 : ℚ), (71811283/1250000000 : ℚ), (-51470398247/1000000000000 : ℚ), 2⟩,
    ⟨(320806378629/500000000000 : ℚ), (30477767/2000000000 : ℚ), (-24482909873/1000000000000 : ℚ), 2⟩,
    ⟨(10093258523/15625000000 : ℚ), (-58169523/2500000000 : ℚ), (306385417/1000000000000 : ℚ), 2⟩,
    ⟨(40638625059/62500000000 : ℚ), (-584199529/10000000000 : ℚ), (23087448751/1000000000000 : ℚ), 2⟩,
    ⟨(163587721591/250000000000 : ℚ), (-113154977/1250000000 : ℚ), (22013865627/500000000000 : ℚ), 2⟩,
    ⟨(658357245249/1000000000000 : ℚ), (-37452977/312500000 : ℚ), (63275106737/1000000000000 : ℚ), 2⟩,
    ⟨(662227425931/1000000000000 : ℚ), (-1466342031/10000000000 : ℚ), (80960353771/1000000000000 : ℚ), 2⟩,
    ⟨(166488026201/250000000000 : ℚ), (-855438371/5000000000 : ℚ), (97199265851/1000000000000 : ℚ), 2⟩,
    ⟨(669522308791/1000000000000 : ℚ), (-483487763/2500000000 : ℚ), (112094449693/1000000000000 : ℚ), 2⟩,
    ⟨(672929436957/1000000000000 : ℚ), (-1068600577/5000000000 : ℚ), (31434216053/250000000000 : ℚ), 2⟩,
    ⟨(338082640617/500000000000 : ℚ), (-290259129/1250000000 : ℚ), (27641428063/200000000000 : ℚ), 2⟩,
    ⟨(679222046187/1000000000000 : ℚ), (-1244922063/5000000000 : ℚ), (149576716039/1000000000000 : ℚ), 2⟩,
    ⟨(170523091951/250000000000 : ℚ), (-1320820981/5000000000 : ℚ), (159908815819/1000000000000 : ℚ), 2⟩,
    ⟨(684769331227/1000000000000 : ℚ), (-2778460187/10000000000 : ℚ), (21157411953/125000000000 : ℚ), 2⟩,
    ⟨(687246487417/1000000000000 : ℚ), (-1450586197/5000000000 : ℚ), (177677374633/1000000000000 : ℚ), 2⟩,
    ⟨(689517868689/1000000000000 : ℚ), (-3010544033/10000000000 : ℚ), (92603133801/500000000000 : ℚ), 2⟩,
    ⟨(138315600617/200000000000 : ℚ), (-310724267/1000000000 : ℚ), (95941865957/500000000000 : ℚ), 2⟩,
    ⟨(346710963781/500000000000 : ℚ), (-398980851/1250000000 : ℚ), (197742540459/1000000000000 : ℚ), 2⟩,
    ⟨(695045199943/1000000000000 : ℚ), (-1632426711/5000000000 : ℚ), (202810886231/1000000000000 : ℚ), 2⟩,
    ⟨(87055488703/125000000000 : ℚ), (-1663342191/5000000000 : ℚ), (103556365077/500000000000 : ℚ), 2⟩,
    ⟨(69761468699/100000000000 : ℚ), (-1688845923/5000000000 : ℚ), (210668093247/1000000000000 : ℚ), 2⟩,
    ⟨(43659669471/62500000000 : ℚ), (-1709081371/5000000000 : ℚ), (213493301269/1000000000000 : ℚ), 2⟩,
    ⟨(699261718661/1000000000000 : ℚ), (-3448322393/10000000000 : ℚ), (215601182621/1000000000000 : ℚ), 2⟩,
    ⟨(699734005123/1000000000000 : ℚ), (-3468337363/10000000000 : ℚ), (108500612541/500000000000 : ℚ), 2⟩,
    ⟨(349985216571/500000000000 : ℚ), (-1739158773/5000000000 : ℚ), (108849845191/500000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-217472737/625000000 : ℚ), (27223365717/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (42137590997/250000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control496.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control496.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate496

-- Control497
namespace DiagonalRamsey.JointInheritedCertificate497
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49243946139/200000000000 : ℚ), (13329042454387/10000000000 : ℚ), (-328808528873993/1000000000000 : ℚ), 12⟩,
    ⟨(246863531047/1000000000000 : ℚ), (291226796499/2000000000 : ℚ), (-7266684681811/200000000000 : ℚ), 9⟩,
    ⟨(124072465801/500000000000 : ℚ), (509963739099/10000000000 : ℚ), (-1293524844233/100000000000 : ℚ), 7⟩,
    ⟨(62512897943/250000000000 : ℚ), (250945631149/10000000000 : ℚ), (-6488600435047/1000000000000 : ℚ), 6⟩,
    ⟨(252565149377/1000000000000 : ℚ), (36320857583/2500000000 : ℚ), (-3835420287253/1000000000000 : ℚ), 6⟩,
    ⟨(255661397483/1000000000000 : ℚ), (23094726197/2500000000 : ℚ), (-1246064963409/500000000000 : ℚ), 5⟩,
    ⟨(259310517529/1000000000000 : ℚ), (62340061183/10000000000 : ℚ), (-1719274545741/1000000000000 : ℚ), 5⟩,
    ⟨(131738683247/500000000000 : ℚ), (10941376731/2500000000 : ℚ), (-1234110007151/1000000000000 : ℚ), 4⟩,
    ⟨(16757613459/62500000000 : ℚ), (15773954289/5000000000 : ℚ), (-909598117589/1000000000000 : ℚ), 4⟩,
    ⟨(136599567749/500000000000 : ℚ), (23125579503/10000000000 : ℚ), (-681792576301/1000000000000 : ℚ), 4⟩,
    ⟨(69665107397/250000000000 : ℚ), (17100979377/10000000000 : ℚ), (-20626442517/40000000000 : ℚ), 4⟩,
    ⟨(56890620473/200000000000 : ℚ), (12660474737/10000000000 : ℚ), (-390709286191/1000000000000 : ℚ), 3⟩,
    ⟨(11620854689/40000000000 : ℚ), (581577359/625000000 : ℚ), (-294302966403/1000000000000 : ℚ), 3⟩,
    ⟨(14840339173/50000000000 : ℚ), (6716311563/10000000000 : ℚ), (-109156677651/500000000000 : ℚ), 3⟩,
    ⟨(151624409537/500000000000 : ℚ), (2341268599/5000000000 : ℚ), (-78661011831/500000000000 : ℚ), 3⟩,
    ⟨(61957086749/200000000000 : ℚ), (3059991343/10000000000 : ℚ), (-6725524183/62500000000 : ℚ), 3⟩,
    ⟨(158176838149/500000000000 : ℚ), (1748132377/10000000000 : ℚ), (-4159555433/62500000000 : ℚ), 3⟩,
    ⟨(322890290969/1000000000000 : ℚ), (337618089/5000000000 : ℚ), (-32271639673/1000000000000 : ℚ), 3⟩,
    ⟨(329332326583/1000000000000 : ℚ), (-52697093/2500000000 : ℚ), (-846334767/250000000000 : ℚ), 3⟩,
    ⟨(167808871409/500000000000 : ℚ), (-29636147/312500000 : ℚ), (2641396199/125000000000 : ℚ), 3⟩,
    ⟨(170843003839/500000000000 : ℚ), (-4894279/31250000 : ℚ), (1051233119/25000000000 : ℚ), 3⟩,
    ⟨(69495736091/200000000000 : ℚ), (-2085902939/10000000000 : ℚ), (29977723793/500000000000 : ℚ), 3⟩,
    ⟨(70587994909/200000000000 : ℚ), (-1262037693/5000000000 : ℚ), (37649283329/500000000000 : ℚ), 3⟩,
    ⟨(358017294699/1000000000000 : ℚ), (-723339801/2500000000 : ℚ), (4421219347/50000000000 : ℚ), 2⟩,
    ⟨(362661743549/1000000000000 : ℚ), (-3203521999/10000000000 : ℚ), (99599827671/1000000000000 : ℚ), 2⟩,
    ⟨(183414296257/500000000000 : ℚ), (-3462107821/10000000000 : ℚ), (54515506993/500000000000 : ℚ), 2⟩,
    ⟨(4630971407/12500000000 : ℚ), (-146997451/400000000 : ℚ), (116876635689/1000000000000 : ℚ), 2⟩,
    ⟨(186786980333/500000000000 : ℚ), (-3846470741/10000000000 : ℚ), (123257956341/1000000000000 : ℚ), 2⟩,
    ⟨(376087518271/1000000000000 : ℚ), (-1990045347/5000000000 : ℚ), (128266341119/1000000000000 : ℚ), 2⟩,
    ⟨(377994178441/1000000000000 : ℚ), (-2039146043/5000000000 : ℚ), (16496111589/125000000000 : ℚ), 2⟩,
    ⟨(94818894749/250000000000 : ℚ), (-4142832213/10000000000 : ℚ), (26882518963/200000000000 : ℚ), 2⟩,
    ⟨(94979844837/250000000000 : ℚ), (-2087415081/5000000000 : ℚ), (135627227367/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-2089408649/5000000000 : ℚ), (135778722469/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (361310469103/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control497.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control497.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate497
