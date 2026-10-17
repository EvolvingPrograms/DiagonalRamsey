import Support.Controls.ControlCertificate
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic.ControlBank.K_52_9_4Certificate
open ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2288827328627/12406593913675 : ℚ), (3885013005837/10000000000 : ℚ), (-14371120818861/200000000000 : ℚ)⟩,
  ⟨(2288827328627/12406593913675 : ℚ), (222942770937/1196401639100 : ℚ), (51395838751/1250000000 : ℚ), (-7768438892749/1000000000000 : ℚ)⟩,
  ⟨(222942770937/1196401639100 : ℚ), (141361089963/746406113870 : ℚ), (27198866603/2000000000 : ℚ), (-1320377580599/500000000000 : ℚ)⟩,
  ⟨(141361089963/746406113870 : ℚ), (38845418191/200761557180 : ℚ), (15338430407/2500000000 : ℚ), (-19174129087/15625000000 : ℚ)⟩,
  ⟨(38845418191/200761557180 : ℚ), (3793518717/19111872950 : ℚ), (31239488051/10000000000 : ℚ), (-644462988703/1000000000000 : ℚ)⟩,
  ⟨(3793518717/19111872950 : ℚ), (85527055003/418846782500 : ℚ), (326644543/200000000 : ℚ), (-348568528777/1000000000000 : ℚ)⟩,
  ⟨(85527055003/418846782500 : ℚ), (5402729461/25679579810 : ℚ), (15910583/20000000 : ℚ), (-177514418771/1000000000000 : ℚ)⟩,
  ⟨(5402729461/25679579810 : ℚ), (3637055498/16773572615 : ℚ), (1409687769/5000000000 : ℚ), (-69459829551/1000000000000 : ℚ)⟩,
  ⟨(3637055498/16773572615 : ℚ), (51248860951/229532126600 : ℚ), (-107067797/2000000000 : ℚ), (3281280409/1000000000000 : ℚ)⟩,
  ⟨(51248860951/229532126600 : ℚ), (37200918627/162116602000 : ℚ), (-2830660251/10000000000 : ℚ), (681626767/12500000000 : ℚ)⟩,
  ⟨(37200918627/162116602000 : ℚ), (5474501391/23278103480 : ℚ), (-4451826271/10000000000 : ℚ), (91731059987/1000000000000 : ℚ)⟩,
  ⟨(5474501391/23278103480 : ℚ), (1000392674/4165182555 : ℚ), (-1123146289/2000000000 : ℚ), (59551783471/500000000000 : ℚ)⟩,
  ⟨(1000392674/4165182555 : ℚ), (14094811113/57698664700 : ℚ), (-1612191989/2500000000 : ℚ), (69555710211/500000000000 : ℚ)⟩,
  ⟨(14094811113/57698664700 : ℚ), (9023598977/36483863500 : ℚ), (-7025754603/10000000000 : ℚ), (30641246307/200000000000 : ℚ)⟩,
  ⟨(9023598977/36483863500 : ℚ), (2205610073/8850486600 : ℚ), (-3695296619/5000000000 : ℚ), (10139364407/62500000000 : ℚ)⟩,
  ⟨(2205610073/8850486600 : ℚ), (273476211/1094252350 : ℚ), (-756760297/1000000000 : ℚ), (83320525329/500000000000 : ℚ)⟩,
  ⟨(273476211/1094252350 : ℚ), (1/4 : ℚ), (-7589488017/10000000000 : ℚ), (4179700077/25000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2410511983/10000000000 : ℚ), (-1/4 : ℚ), (45490160531/200000000000 : ℚ)⟩,
  ⟨(2410511983/10000000000 : ℚ), (243239703/1000000000 : ℚ), (-273476211/1094252350 : ℚ), (2488676336301908793/10942523500000000000 : ℚ)⟩,
  ⟨(243239703/1000000000 : ℚ), (1304703381/5000000000 : ℚ), (-2205610073/8850486600 : ℚ), (3352243874914797503/14750811000000000000 : ℚ)⟩,
  ⟨(1304703381/5000000000 : ℚ), (2974245397/10000000000 : ℚ), (-9023598977/36483863500 : ℚ), (41366975054219756797/182419317500000000000 : ℚ)⟩,
  ⟨(2974245397/10000000000 : ℚ), (887808011/2500000000 : ℚ), (-14094811113/57698664700 : ℚ), (65159688453655005003/288493323500000000000 : ℚ)⟩,
  ⟨(887808011/2500000000 : ℚ), (876853711/2000000000 : ℚ), (-1000392674/4165182555 : ℚ), (93468711359214970381/416518255500000000000 : ℚ)⟩,
  ⟨(876853711/2000000000 : ℚ), (5548173729/10000000000 : ℚ), (-5474501391/23278103480 : ℚ), (258633679319974457933/1163905174000000000000 : ℚ)⟩,
  ⟨(5548173729/10000000000 : ℚ), (7169339749/10000000000 : ℚ), (-37200918627/162116602000 : ℚ), (355108436850494191823/1621166020000000000000 : ℚ)⟩,
  ⟨(7169339749/10000000000 : ℚ), (1892932203/2000000000 : ℚ), (-51248860951/229532126600 : ℚ), (492584689008572403059/2295321266000000000000 : ℚ)⟩,
  ⟨(1892932203/2000000000 : ℚ), (6409687769/5000000000 : ℚ), (-3637055498/16773572615 : ℚ), (699477706668347889307/3354714523000000000000 : ℚ)⟩,
  ⟨(6409687769/5000000000 : ℚ), (35910583/20000000 : ℚ), (-5402729461/25679579810 : ℚ), (514226255253363153649/2567957981000000000000 : ℚ)⟩,
  ⟨(35910583/20000000 : ℚ), (526644543/200000000 : ℚ), (-85527055003/418846782500 : ℚ), (31685990888779553257/167538713000000000000 : ℚ)⟩,
  ⟨(526644543/200000000 : ℚ), (41239488051/10000000000 : ℚ), (-3793518717/19111872950 : ℚ), (66547644380552275457/382237459000000000000 : ℚ)⟩,
  ⟨(41239488051/10000000000 : ℚ), (17838430407/2500000000 : ℚ), (-38845418191/200761557180 : ℚ), (128388011564555104319/836506488250000000000 : ℚ)⟩,
  ⟨(17838430407/2500000000 : ℚ), (29198866603/2000000000 : ℚ), (-141361089963/746406113870 : ℚ), (1158950084877687615353/9330076423375000000000 : ℚ)⟩,
  ⟨(29198866603/2000000000 : ℚ), (32/1 : ℚ), (-222942770937/1196401639100 : ℚ), (954343110272522388637/11964016391000000000000 : ℚ)⟩ ]
def data : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (229838287883/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 32
  tangents := [
    ⟨(92126204367/500000000000 : ℚ), (3885013005837/10000000000 : ℚ), (-14371120818861/200000000000 : ℚ), 11⟩,
    ⟨(23189085163/125000000000 : ℚ), (51395838751/1250000000 : ℚ), (-7768438892749/1000000000000 : ℚ), 8⟩,
    ⟨(187984794877/1000000000000 : ℚ), (27198866603/2000000000 : ℚ), (-1320377580599/500000000000 : ℚ), 6⟩,
    ⟨(191573747513/1000000000000 : ℚ), (15338430407/2500000000 : ℚ), (-19174129087/15625000000 : ℚ), 5⟩,
    ⟨(196141617777/1000000000000 : ℚ), (31239488051/10000000000 : ℚ), (-644462988703/1000000000000 : ℚ), 5⟩,
    ⟨(8060514599/40000000000 : ℚ), (326644543/200000000 : ℚ), (-348568528777/1000000000000 : ℚ), 4⟩,
    ⟨(207481075089/1000000000000 : ℚ), (15910583/20000000 : ℚ), (-177514418771/1000000000000 : ℚ), 4⟩,
    ⟨(213816893153/1000000000000 : ℚ), (1409687769/5000000000 : ℚ), (-69459829551/1000000000000 : ℚ), 4⟩,
    ⟨(22027683723/100000000000 : ℚ), (-107067797/2000000000 : ℚ), (3281280409/1000000000000 : ℚ), 4⟩,
    ⟨(113306327647/500000000000 : ℚ), (-2830660251/10000000000 : ℚ), (681626767/12500000000 : ℚ), 3⟩,
    ⟨(1817038011/7812500000 : ℚ), (-4451826271/10000000000 : ℚ), (91731059987/1000000000000 : ℚ), 3⟩,
    ⟨(118976056303/500000000000 : ℚ), (-1123146289/2000000000 : ℚ), (59551783471/500000000000 : ℚ), 3⟩,
    ⟨(24251998287/100000000000 : ℚ), (-1612191989/2500000000 : ℚ), (69555710211/500000000000 : ℚ), 3⟩,
    ⟨(123054467753/500000000000 : ℚ), (-7025754603/10000000000 : ℚ), (30641246307/200000000000 : ℚ), 3⟩,
    ⟨(248581049079/1000000000000 : ℚ), (-3695296619/5000000000 : ℚ), (10139364407/62500000000 : ℚ), 3⟩,
    ⟨(249841321649/1000000000000 : ℚ), (-756760297/1000000000 : ℚ), (83320525329/500000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7589488017/10000000000 : ℚ), (4179700077/25000000000 : ℚ), 3⟩]
  degrees := degrees
  cells := cells
theorem check0 : ControlCertificate.parameters data := by decide +kernel
#print axioms check0
theorem check1 : 0 < data.tangents.length := by decide +kernel
#print axioms check1
theorem row0 : ControlCertificate.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : ControlCertificate.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : ControlCertificate.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : ControlCertificate.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : ControlCertificate.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : ControlCertificate.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : ControlCertificate.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : ControlCertificate.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : ControlCertificate.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : ControlCertificate.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : ControlCertificate.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : ControlCertificate.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : ControlCertificate.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : ControlCertificate.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : ControlCertificate.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : ControlCertificate.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : ControlCertificate.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check2 : data.tangents.all (ControlCertificate.rowCheck data) = true := by
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
theorem check5 : ((ControlCertificate.totalExpr data).safe (AnalyticBounds.FixedPointInterval.point 0) && decide (TangentExpressions.boundHi ((ControlCertificate.totalExpr data).bound (AnalyticBounds.FixedPointInterval.point 0)) < -data.margin)) = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : ControlCertificate.Checks data :=
  ⟨check0, check1, check2, check3, check4, check5, check6⟩
theorem sound : ControlCertificate.Sound data := ControlCertificate.sound data checked
#print axioms sound
end RamseyAnalytic.ControlBank.K_52_9_4Certificate
