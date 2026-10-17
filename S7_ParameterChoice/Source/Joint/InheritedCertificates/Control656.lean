import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate656
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (16033513296527/72347139157320 : ℚ), (1011450300103/2500000000 : ℚ), (-4494586226633/50000000000 : ℚ)⟩,
  ⟨(16033513296527/72347139157320 : ℚ), (6414136074247/28654486488000 : ℚ), (214222121273/5000000000 : ℚ), (-388966322001/40000000000 : ℚ)⟩,
  ⟨(6414136074247/28654486488000 : ℚ), (88403291153/388609066595 : ℚ), (70949688833/5000000000 : ℚ), (-1655010987889/500000000000 : ℚ)⟩,
  ⟨(88403291153/388609066595 : ℚ), (36428543159/156753997875 : ℚ), (64177564347/10000000000 : ℚ), (-770978076359/500000000000 : ℚ)⟩,
  ⟨(36428543159/156753997875 : ℚ), (30813404608/129264659375 : ℚ), (8206691193/2500000000 : ℚ), (-406692644769/500000000000 : ℚ)⟩,
  ⟨(30813404608/129264659375 : ℚ), (42708579063/174177698600 : ℚ), (17315005647/10000000000 : ℚ), (-221812217121/500000000000 : ℚ)⟩,
  ⟨(42708579063/174177698600 : ℚ), (4810572797/19043425325 : ℚ), (8606120717/10000000000 : ℚ), (-230081538927/1000000000000 : ℚ)⟩,
  ⟨(4810572797/19043425325 : ℚ), (22624584284/86911373125 : ℚ), (1636980813/5000000000 : ℚ), (-95385500611/1000000000000 : ℚ)⟩,
  ⟨(22624584284/86911373125 : ℚ), (31804318069/118661433750 : ℚ), (-202493299/10000000000 : ℚ), (-195486539/40000000000 : ℚ)⟩,
  ⟨(31804318069/118661433750 : ℚ), (46051850981/167195563000 : ℚ), (-1287860987/5000000000 : ℚ), (58721472663/1000000000000 : ℚ)⟩,
  ⟨(46051850981/167195563000 : ℚ), (8448732611/29931794650 : ℚ), (-1061919401/2500000000 : ℚ), (26193330911/250000000000 : ℚ)⟩,
  ⟨(8448732611/29931794650 : ℚ), (1760077101/6106071700 : ℚ), (-544494939/1000000000 : ℚ), (17321031761/125000000000 : ℚ)⟩,
  ⟨(1760077101/6106071700 : ℚ), (4330557749/14772001875 : ℚ), (-1574949857/2500000000 : ℚ), (81604666751/500000000000 : ℚ)⟩,
  ⟨(4330557749/14772001875 : ℚ), (3690740167/12434821700 : ℚ), (-6890679503/10000000000 : ℚ), (90265782249/500000000000 : ℚ)⟩,
  ⟨(3690740167/12434821700 : ℚ), (2703692661/9040874350 : ℚ), (-3631862077/5000000000 : ℚ), (191603784999/1000000000000 : ℚ)⟩,
  ⟨(2703692661/9040874350 : ℚ), (167554506/558691925 : ℚ), (-7444541641/10000000000 : ℚ), (197011170321/1000000000000 : ℚ)⟩,
  ⟨(167554506/558691925 : ℚ), (3/10 : ℚ), (-3733444659/5000000000 : ℚ), (39536277669/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1266555341/5000000000 : ℚ), (-3/10 : ℚ), (54734941761/200000000000 : ℚ)⟩,
  ⟨(1266555341/5000000000 : ℚ), (2555458359/10000000000 : ℚ), (-167554506/558691925 : ℚ), (6115456251508956933/22347677000000000000 : ℚ)⟩,
  ⟨(2555458359/10000000000 : ℚ), (1368137923/5000000000 : ℚ), (-2703692661/9040874350 : ℚ), (1977656509992440397/7232699480000000000 : ℚ)⟩,
  ⟨(1368137923/5000000000 : ℚ), (3109320497/10000000000 : ℚ), (-3690740167/12434821700 : ℚ), (157788242827446991/578363800000000000 : ℚ)⟩,
  ⟨(3109320497/10000000000 : ℚ), (925050143/2500000000 : ℚ), (-4330557749/14772001875 : ℚ), (80266436130038551181/295440037500000000000 : ℚ)⟩,
  ⟨(925050143/2500000000 : ℚ), (455505061/1000000000 : ℚ), (-1760077101/6106071700 : ℚ), (8239158610304271353/30530358500000000000 : ℚ)⟩,
  ⟨(455505061/1000000000 : ℚ), (1438080599/2500000000 : ℚ), (-8448732611/29931794650 : ℚ), (39980184948586416501/149658973250000000000 : ℚ)⟩,
  ⟨(1438080599/2500000000 : ℚ), (3712139013/5000000000 : ℚ), (-46051850981/167195563000 : ℚ), (110020360528914696549/417988907500000000000 : ℚ)⟩,
  ⟨(3712139013/5000000000 : ℚ), (9797506701/10000000000 : ℚ), (-31804318069/118661433750 : ℚ), (203869227435081038371/791076225000000000000 : ℚ)⟩,
  ⟨(9797506701/10000000000 : ℚ), (6636980813/5000000000 : ℚ), (-22624584284/86911373125 : ℚ), (869668060987373283961/3476454925000000000000 : ℚ)⟩,
  ⟨(6636980813/5000000000 : ℚ), (18606120717/10000000000 : ℚ), (-4810572797/19043425325 : ℚ), (36552553701379427349/152347402600000000000 : ℚ)⟩,
  ⟨(18606120717/10000000000 : ℚ), (27315005647/10000000000 : ℚ), (-42708579063/174177698600 : ℚ), (393890248291205014149/1741776986000000000000 : ℚ)⟩,
  ⟨(27315005647/10000000000 : ℚ), (10706691193/2500000000 : ℚ), (-30813404608/129264659375 : ℚ), (536437414087247316377/2585293187500000000000 : ℚ)⟩,
  ⟨(10706691193/2500000000 : ℚ), (74177564347/10000000000 : ℚ), (-36428543159/156753997875 : ℚ), (570205378758367354861/3135079957500000000000 : ℚ)⟩,
  ⟨(74177564347/10000000000 : ℚ), (75949688833/5000000000 : ℚ), (-88403291153/388609066595 : ℚ), (5653594056066407995389/38860906659500000000000 : ℚ)⟩,
  ⟨(75949688833/5000000000 : ℚ), (32/1 : ℚ), (-6414136074247/28654486488000 : ℚ), (12916739072011013345431/143272432440000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (12836194813/31250000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(110670605459/500000000000 : ℚ), (1011450300103/2500000000 : ℚ), (-4494586226633/50000000000 : ℚ), 11⟩,
    ⟨(222848969793/1000000000000 : ℚ), (214222121273/5000000000 : ℚ), (-388966322001/40000000000 : ℚ), 8⟩,
    ⟨(225806545217/1000000000000 : ℚ), (70949688833/5000000000 : ℚ), (-1655010987889/500000000000 : ℚ), 6⟩,
    ⟨(230100279223/1000000000000 : ℚ), (64177564347/10000000000 : ℚ), (-770978076359/500000000000 : ℚ), 5⟩,
    ⟨(235565166023/1000000000000 : ℚ), (8206691193/2500000000 : ℚ), (-406692644769/500000000000 : ℚ), 5⟩,
    ⟨(6049779827/25000000000 : ℚ), (17315005647/10000000000 : ℚ), (-221812217121/500000000000 : ℚ), 4⟩,
    ⟨(12456570589/50000000000 : ℚ), (8606120717/10000000000 : ℚ), (-230081538927/1000000000000 : ℚ), 4⟩,
    ⟨(256711427521/1000000000000 : ℚ), (1636980813/5000000000 : ℚ), (-95385500611/1000000000000 : ℚ), 4⟩,
    ⟨(264439944549/1000000000000 : ℚ), (-202493299/10000000000 : ℚ), (-195486539/40000000000 : ℚ), 3⟩,
    ⟨(27201996029/100000000000 : ℚ), (-1287860987/5000000000 : ℚ), (58721472663/1000000000000 : ℚ), 3⟩,
    ⟨(27916017899/100000000000 : ℚ), (-1061919401/2500000000 : ℚ), (26193330911/250000000000 : ℚ), 3⟩,
    ⟨(285586206047/1000000000000 : ℚ), (-544494939/1000000000 : ℚ), (17321031761/125000000000 : ℚ), 3⟩,
    ⟨(291051092847/1000000000000 : ℚ), (-1574949857/2500000000 : ℚ), (81604666751/500000000000 : ℚ), 3⟩,
    ⟨(295344826853/1000000000000 : ℚ), (-6890679503/10000000000 : ℚ), (90265782249/500000000000 : ℚ), 3⟩,
    ⟨(298302402277/1000000000000 : ℚ), (-3631862077/5000000000 : ℚ), (191603784999/1000000000000 : ℚ), 3⟩,
    ⟨(585566721/1953125000 : ℚ), (-7444541641/10000000000 : ℚ), (197011170321/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-3733444659/5000000000 : ℚ), (39536277669/200000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control656.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control656.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate656
