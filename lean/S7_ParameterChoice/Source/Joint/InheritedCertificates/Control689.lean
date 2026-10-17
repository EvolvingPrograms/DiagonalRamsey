import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate689
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1586695242233/12998477236315 : ℚ), (2908022307/5000000 : ℚ), (-35555478297617/500000000000 : ℚ)⟩,
  ⟨(1586695242233/12998477236315 : ℚ), (5078173512243/41332690267300 : ℚ), (308326859737/5000000000 : ℚ), (-3821573452957/500000000000 : ℚ)⟩,
  ⟨(5078173512243/41332690267300 : ℚ), (70000874533/563798288640 : ℚ), (203326816801/10000000000 : ℚ), (-2564973393671/1000000000000 : ℚ)⟩,
  ⟨(70000874533/563798288640 : ℚ), (288569486481/2291897861500 : ℚ), (90567159073/10000000000 : ℚ), (-1164955903011/1000000000000 : ℚ)⟩,
  ⟨(288569486481/2291897861500 : ℚ), (293143907283/2289459397100 : ℚ), (44729201843/10000000000 : ℚ), (-587816930049/1000000000000 : ℚ)⟩,
  ⟨(293143907283/2289459397100 : ℚ), (84765285277/649672200500 : ℚ), (85291437/39062500 : ℚ), (-147336511383/500000000000 : ℚ)⟩,
  ⟨(84765285277/649672200500 : ℚ), (26790290289/201257067500 : ℚ), (4420581931/5000000000 : ℚ), (-31285613053/250000000000 : ℚ)⟩,
  ⟨(26790290289/201257067500 : ℚ), (72210292903/531499123300 : ℚ), (395440581/5000000000 : ℚ), (-1123830691/62500000000 : ℚ)⟩,
  ⟨(72210292903/531499123300 : ℚ), (50945083461/367547009500 : ℚ), (-4524110071/10000000000 : ℚ), (54229001847/1000000000000 : ℚ)⟩,
  ⟨(50945083461/367547009500 : ℚ), (18523399483/131139807200 : ℚ), (-4099790083/5000000000 : ℚ), (26293521327/250000000000 : ℚ)⟩,
  ⟨(18523399483/131139807200 : ℚ), (13658734289/95061928850 : ℚ), (-1082237631/1000000000 : ℚ), (71110442137/500000000000 : ℚ)⟩,
  ⟨(13658734289/95061928850 : ℚ), (20013938041/137256183900 : ℚ), (-12723614887/10000000000 : ℚ), (42384588213/250000000000 : ℚ)⟩,
  ⟨(20013938041/137256183900 : ℚ), (14130792911/95760791500 : ℚ), (-7048088363/5000000000 : ℚ), (189552290893/1000000000000 : ℚ)⟩,
  ⟨(14130792911/95760791500 : ℚ), (9063712997/60886444900 : ℚ), (-15053784641/10000000000 : ℚ), (50920770951/250000000000 : ℚ)⟩,
  ⟨(9063712997/60886444900 : ℚ), (2218205209/14821398500 : ℚ), (-1566264909/1000000000 : ℚ), (212746796801/1000000000000 : ℚ)⟩,
  ⟨(2218205209/14821398500 : ℚ), (550350057/3669828500 : ℚ), (-797953853/500000000 : ℚ), (217183207219/1000000000000 : ℚ)⟩,
  ⟨(550350057/3669828500 : ℚ), (3/20 : ℚ), (-3199155069/2000000000 : ℚ), (54433389319/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (800844931/4000000000 : ℚ), (-3/10 : ℚ), (277796927101/1000000000000 : ℚ)⟩,
  ⟨(800844931/4000000000 : ℚ), (202046147/1000000000 : ℚ), (-550350057/1834914250 : ℚ), (2038834681219705399/7339657000000000000 : ℚ)⟩,
  ⟨(202046147/1000000000 : ℚ), (433735091/2000000000 : ℚ), (-2218205209/7410699250 : ℚ), (1646127397267374087/5928559400000000000 : ℚ)⟩,
  ⟨(433735091/2000000000 : ℚ), (4946215359/20000000000 : ℚ), (-9063712997/30443222450 : ℚ), (168846465026272604919/608864449000000000000 : ℚ)⟩,
  ⟨(4946215359/20000000000 : ℚ), (2951911637/10000000000 : ℚ), (-14130792911/47880395750 : ℚ), (264942478133555228709/957607915000000000000 : ℚ)⟩,
  ⟨(2951911637/10000000000 : ℚ), (7276385113/20000000000 : ℚ), (-20013938041/68628091950 : ℚ), (378330994185608798461/1372561839000000000000 : ℚ)⟩,
  ⟨(7276385113/20000000000 : ℚ), (917762369/2000000000 : ℚ), (-13658734289/47530964425 : ℚ), (260552639204532425459/950619288500000000000 : ℚ)⟩,
  ⟨(917762369/2000000000 : ℚ), (5900209917/10000000000 : ℚ), (-18523399483/65569903600 : ℚ), (178254491674786635999/655699036000000000000 : ℚ)⟩,
  ⟨(5900209917/10000000000 : ℚ), (15475889929/20000000000 : ℚ), (-50945083461/183773504750 : ℚ), (493868789318251314867/1837735047500000000000 : ℚ)⟩,
  ⟨(15475889929/20000000000 : ℚ), (10395440581/10000000000 : ℚ), (-72210292903/265749561650 : ℚ), (702872607049411840619/2657495616500000000000 : ℚ)⟩,
  ⟨(10395440581/10000000000 : ℚ), (14420581931/10000000000 : ℚ), (-26790290289/100628533750 : ℚ), (260402561308068126509/1006285337500000000000 : ℚ)⟩,
  ⟨(14420581931/10000000000 : ℚ), (163416437/78125000 : ℚ), (-84765285277/324836100250 : ℚ), (815856879718885867357/3248361002500000000000 : ℚ)⟩,
  ⟨(163416437/78125000 : ℚ), (64729201843/20000000000 : ℚ), (-293143907283/1144729698550 : ℚ), (551714120081542058799/2289459397100000000000 : ℚ)⟩,
  ⟨(64729201843/20000000000 : ℚ), (110567159073/20000000000 : ℚ), (-288569486481/1145948930750 : ℚ), (1301677221707881720587/5729744653750000000000 : ℚ)⟩,
  ⟨(110567159073/20000000000 : ℚ), (223326816801/20000000000 : ℚ), (-70000874533/281899144320 : ℚ), (1952993975254415594931/9396638144000000000000 : ℚ)⟩,
  ⟨(223326816801/20000000000 : ℚ), (318326859737/10000000000 : ℚ), (-5078173512243/20666345133650 : ℚ), (3695990870384763020603/20666345133650000000000 : ℚ)⟩,
  ⟨(318326859737/10000000000 : ℚ), (32/1 : ℚ), (-3173390484466/12998477236315 : ℚ), (166827169359933188547729/1299847723631500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (232609794337/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(24393732633/200000000000 : ℚ), (2908022307/5000000 : ℚ), (-35555478297617/500000000000 : ℚ), 11⟩,
    ⟨(4900239101/40000000000 : ℚ), (308326859737/5000000000 : ℚ), (-3821573452957/500000000000 : ℚ), 8⟩,
    ⟨(24711991511/200000000000 : ℚ), (203326816801/10000000000 : ℚ), (-2564973393671/1000000000000 : ℚ), 7⟩,
    ⟨(25018019879/200000000000 : ℚ), (90567159073/10000000000 : ℚ), (-1164955903011/1000000000000 : ℚ), 6⟩,
    ⟨(2540752011/20000000000 : ℚ), (44729201843/10000000000 : ℚ), (-587816930049/1000000000000 : ℚ), 5⟩,
    ⟨(25865523929/200000000000 : ℚ), (85291437/39062500 : ℚ), (-147336511383/500000000000 : ℚ), 5⟩,
    ⟨(131872152529/1000000000000 : ℚ), (4420581931/5000000000 : ℚ), (-31285613053/250000000000 : ℚ), 5⟩,
    ⟨(134573414231/1000000000000 : ℚ), (395440581/5000000000 : ℚ), (-1123830691/62500000000 : ℚ), 4⟩,
    ⟨(68663798389/500000000000 : ℚ), (-4524110071/10000000000 : ℚ), (54229001847/1000000000000 : ℚ), 4⟩,
    ⟨(1750360731/12500000000 : ℚ), (-4099790083/5000000000 : ℚ), (26293521327/250000000000 : ℚ), 4⟩,
    ⟨(35643347841/250000000000 : ℚ), (-1082237631/1000000000 : ℚ), (71110442137/500000000000 : ℚ), 4⟩,
    ⟨(72431705229/500000000000 : ℚ), (-12723614887/10000000000 : ℚ), (42384588213/250000000000 : ℚ), 4⟩,
    ⟨(73405455807/500000000000 : ℚ), (-7048088363/5000000000 : ℚ), (189552290893/1000000000000 : ℚ), 4⟩,
    ⟨(148341053453/1000000000000 : ℚ), (-15053784641/10000000000 : ℚ), (50920770951/250000000000 : ℚ), 4⟩,
    ⟨(37348758371/250000000000 : ℚ), (-1566264909/1000000000 : ℚ), (212746796801/1000000000000 : ℚ), 4⟩,
    ⟨(37483086961/250000000000 : ℚ), (-797953853/500000000 : ℚ), (217183207219/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3199155069/2000000000 : ℚ), (54433389319/250000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control689.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control689.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate689
