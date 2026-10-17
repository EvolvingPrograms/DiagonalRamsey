import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate732
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (67603372739741/422248607682200 : ℚ), (4723491301521/10000000000 : ℚ), (-15151902017369/200000000000 : ℚ)⟩,
  ⟨(67603372739741/422248607682200 : ℚ), (338060005268/2096677044875 : ℚ), (501005224699/10000000000 : ℚ), (-254879292097/31250000000 : ℚ)⟩,
  ⟨(338060005268/2096677044875 : ℚ), (497026790267/3047549416200 : ℚ), (165536897519/10000000000 : ℚ), (-85849289463/31250000000 : ℚ)⟩,
  ⟨(497026790267/3047549416200 : ℚ), (122907126541/742243054920 : ℚ), (74110415033/10000000000 : ℚ), (-251219378403/200000000000 : ℚ)⟩,
  ⟨(122907126541/742243054920 : ℚ), (62399052277/370026485020 : ℚ), (36998262287/10000000000 : ℚ), (-64156125931/100000000000 : ℚ)⟩,
  ⟨(62399052277/370026485020 : ℚ), (45073934201/261891256600 : ℚ), (4624234509/2500000000 : ℚ), (-13182639917/40000000000 : ℚ)⟩,
  ⟨(45073934201/261891256600 : ℚ), (12648988951/71917792700 : ℚ), (2005321943/2500000000 : ℚ), (-149270261121/1000000000000 : ℚ)⟩,
  ⟨(12648988951/71917792700 : ℚ), (19150633051/106508125425 : ℚ), (1548686429/10000000000 : ℚ), (-17714680281/500000000000 : ℚ)⟩,
  ⟨(19150633051/106508125425 : ℚ), (53953741797/293661304600 : ℚ), (-677909647/2500000000 : ℚ), (20586585821/500000000000 : ℚ)⟩,
  ⟨(53953741797/293661304600 : ℚ), (391643857/2088767397 : ℚ), (-2824125817/5000000000 : ℚ), (95126913439/1000000000000 : ℚ)⟩,
  ⟨(391643857/2088767397 : ℚ), (14413933681/75475244700 : ℚ), (-7737019031/10000000000 : ℚ), (134291299139/1000000000000 : ℚ)⟩,
  ⟨(14413933681/75475244700 : ℚ), (10543311181/54341063500 : ℚ), (-369860957/400000000 : ℚ), (163119166501/1000000000000 : ℚ)⟩,
  ⟨(10543311181/54341063500 : ℚ), (14868330843/75658325300 : ℚ), (-2066669039/2000000000 : ℚ), (184205788863/1000000000000 : ℚ)⟩,
  ⟨(14868330843/75658325300 : ℚ), (9527371181/48027026100 : ℚ), (-43320033/39062500 : ℚ), (99537059853/500000000000 : ℚ)⟩,
  ⟨(9527371181/48027026100 : ℚ), (233027273/1167953075 : ℚ), (-11570198709/10000000000 : ℚ), (208601490887/1000000000000 : ℚ)⟩,
  ⟨(233027273/1167953075 : ℚ), (578023039/2890814000 : ℚ), (-2950947331/2500000000 : ℚ), (213262036347/1000000000000 : ℚ)⟩,
  ⟨(578023039/2890814000 : ℚ), (1/5 : ℚ), (-1479087183/1250000000 : ℚ), (106920029693/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (131970939/625000000 : ℚ), (-3/10 : ℚ), (138593055053/500000000000 : ℚ)⟩,
  ⟨(131970939/625000000 : ℚ), (799052669/3750000000 : ℚ), (-1734069117/5781628000 : ℚ), (500780763226870559/1806758750000000000 : ℚ)⟩,
  ⟨(799052669/3750000000 : ℚ), (1143267097/5000000000 : ℚ), (-699081819/2335906150 : ℚ), (12942419076336682873/46718123000000000000 : ℚ)⟩,
  ⟨(1143267097/5000000000 : ℚ), (5091239/19531250 : ℚ), (-9527371181/32018017400 : ℚ), (22143680408286434363/80045043500000000000 : ℚ)⟩,
  ⟨(5091239/19531250 : ℚ), (933330961/3000000000 : ℚ), (-44604992529/151316650600 : ℚ), (104376191265107680977/378291626500000000000 : ℚ)⟩,
  ⟨(933330961/3000000000 : ℚ), (230139043/600000000 : ℚ), (-31629933543/108682127000 : ℚ), (14930137848014263271/54341063500000000000 : ℚ)⟩,
  ⟨(230139043/600000000 : ℚ), (7262980969/15000000000 : ℚ), (-14413933681/50316829800 : ℚ), (103022406324750180011/377376223500000000000 : ℚ)⟩,
  ⟨(7262980969/15000000000 : ℚ), (4675874183/7500000000 : ℚ), (-391643857/1392511598 : ℚ), (564953475343993114483/2088767397000000000000 : ℚ)⟩,
  ⟨(4675874183/7500000000 : ℚ), (3072090353/3750000000 : ℚ), (-161861225391/587322609200 : ℚ), (48994546982522548681/183538315375000000000 : ℚ)⟩,
  ⟨(3072090353/3750000000 : ℚ), (16548686429/15000000000 : ℚ), (-19150633051/71005416950 : ℚ), (558365346986384239981/2130162508500000000000 : ℚ)⟩,
  ⟨(16548686429/15000000000 : ℚ), (5755321943/3750000000 : ℚ), (-37946966853/143835585400 : ℚ), (36768827542013986201/143835585400000000000 : ℚ)⟩,
  ⟨(5755321943/3750000000 : ℚ), (2791411503/1250000000 : ℚ), (-135221802603/523782513200 : ℚ), (323367123838762871843/1309456283000000000000 : ℚ)⟩,
  ⟨(2791411503/1250000000 : ℚ), (51998262287/15000000000 : ℚ), (-187197156831/740052970040 : ℚ), (870695709684830072137/3700264850200000000000 : ℚ)⟩,
  ⟨(51998262287/15000000000 : ℚ), (89110415033/15000000000 : ℚ), (-122907126541/494828703280 : ℚ), (325802622506930029243/1484486109840000000000 : ℚ)⟩,
  ⟨(89110415033/15000000000 : ℚ), (180536897519/15000000000 : ℚ), (-497026790267/2031699610800 : ℚ), (6010090063702737967381/30475494162000000000000 : ℚ)⟩,
  ⟨(180536897519/15000000000 : ℚ), (32/1 : ℚ), (-507090007902/2096677044875 : ℚ), (858217368713273780353/5241692612187500000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (482504620193/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(31992337823/200000000000 : ℚ), (4723491301521/10000000000 : ℚ), (-15151902017369/200000000000 : ℚ), 12⟩,
    ⟨(160729157307/1000000000000 : ℚ), (501005224699/10000000000 : ℚ), (-254879292097/31250000000 : ℚ), 8⟩,
    ⟨(81117300159/500000000000 : ℚ), (165536897519/10000000000 : ℚ), (-85849289463/31250000000 : ℚ), 7⟩,
    ⟨(164420164817/1000000000000 : ℚ), (74110415033/10000000000 : ℚ), (-251219378403/200000000000 : ℚ), 6⟩,
    ⟨(41800465197/250000000000 : ℚ), (36998262287/10000000000 : ℚ), (-64156125931/100000000000 : ℚ), 5⟩,
    ⟨(170472789213/1000000000000 : ℚ), (4624234509/2500000000 : ℚ), (-13182639917/40000000000 : ℚ), 5⟩,
    ⟨(174107250147/1000000000000 : ℚ), (2005321943/2500000000 : ℚ), (-149270261121/1000000000000 : ℚ), 5⟩,
    ⟨(11122848331/62500000000 : ℚ), (1548686429/10000000000 : ℚ), (-17714680281/500000000000 : ℚ), 4⟩,
    ⟨(181899485463/1000000000000 : ℚ), (-677909647/2500000000 : ℚ), (20586585821/500000000000 : ℚ), 4⟩,
    ⟨(46439452153/250000000000 : ℚ), (-2824125817/5000000000 : ℚ), (95126913439/1000000000000 : ℚ), 4⟩,
    ⟨(94696134773/500000000000 : ℚ), (-7737019031/10000000000 : ℚ), (134291299139/1000000000000 : ℚ), 4⟩,
    ⟨(192663197971/1000000000000 : ℚ), (-369860957/400000000 : ℚ), (163119166501/1000000000000 : ℚ), 4⟩,
    ⟨(97722446971/500000000000 : ℚ), (-2066669039/2000000000 : ℚ), (184205788863/1000000000000 : ℚ), 4⟩,
    ⟨(197630458441/1000000000000 : ℚ), (-43320033/39062500 : ℚ), (99537059853/500000000000 : ℚ), 4⟩,
    ⟨(49783975363/250000000000 : ℚ), (-11570198709/10000000000 : ℚ), (208601490887/1000000000000 : ℚ), 4⟩,
    ⟨(49975842411/250000000000 : ℚ), (-2950947331/2500000000 : ℚ), (213262036347/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-1479087183/1250000000 : ℚ), (106920029693/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control732.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control732.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate732
