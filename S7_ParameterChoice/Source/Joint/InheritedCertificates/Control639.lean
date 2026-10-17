import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate639
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (16177207309406/88833522812325 : ℚ), (794728718057/2000000000 : ℚ), (-14511373354341/200000000000 : ℚ)⟩,
  ⟨(16177207309406/88833522812325 : ℚ), (5177461364249/28133166239300 : ℚ), (13134458681/312500000 : ℚ), (-7848037534081/1000000000000 : ℚ)⟩,
  ⟨(5177461364249/28133166239300 : ℚ), (35684526501/190633675465 : ℚ), (138971015399/10000000000 : ℚ), (-333822021229/125000000000 : ℚ)⟩,
  ⟨(35684526501/190633675465 : ℚ), (588409074161/3073610281200 : ℚ), (62717545213/10000000000 : ℚ), (-38849847181/31250000000 : ℚ)⟩,
  ⟨(588409074161/3073610281200 : ℚ), (29885563159/151996345350 : ℚ), (31981442401/10000000000 : ℚ), (-654786035631/1000000000000 : ℚ)⟩,
  ⟨(29885563159/151996345350 : ℚ), (10165636937/50192321500 : ℚ), (8390903933/5000000000 : ℚ), (-355930404041/1000000000000 : ℚ)⟩,
  ⟨(10165636937/50192321500 : ℚ), (453161401/2168733400 : ℚ), (8249113211/10000000000 : ℚ), (-11444661007/62500000000 : ℚ)⟩,
  ⟨(453161401/2168733400 : ℚ), (14711411663/68225774820 : ℚ), (3022465717/10000000000 : ℚ), (-73902678471/1000000000000 : ℚ)⟩,
  ⟨(14711411663/68225774820 : ℚ), (25925956787/116623318000 : ℚ), (-24301439/625000000 : ℚ), (-86405039/250000000000 : ℚ)⟩,
  ⟨(25925956787/116623318000 : ℚ), (18829118069/82322163000 : ℚ), (-340161173/1250000000 : ℚ), (25753146709/500000000000 : ℚ)⟩,
  ⟨(18829118069/82322163000 : ℚ), (27721072781/118142998700 : ℚ), (-1091933161/2500000000 : ℚ), (22291132389/250000000000 : ℚ)⟩,
  ⟨(27721072781/118142998700 : ℚ), (10134518941/42258291550 : ℚ), (-5549162631/10000000000 : ℚ), (116885602337/1000000000000 : ℚ)⟩,
  ⟨(10134518941/42258291550 : ℚ), (14281572077/58512919000 : ℚ), (-3197164231/5000000000 : ℚ), (137154640219/1000000000000 : ℚ)⟩,
  ⟨(14281572077/58512919000 : ℚ), (1143005888/4623168525 : ℚ), (-1744864413/2500000000 : ℚ), (18929526537/125000000000 : ℚ)⟩,
  ⟨(1143005888/4623168525 : ℚ), (4470265007/17939974500 : ℚ), (-3674655567/5000000000 : ℚ), (802901297/5000000000 : ℚ)⟩,
  ⟨(4470265007/17939974500 : ℚ), (184759483/739281200 : ℚ), (-7528710879/10000000000 : ℚ), (165050524407/1000000000000 : ℚ)⟩,
  ⟨(184759483/739281200 : ℚ), (1/4 : ℚ), (-1510177863/2000000000 : ℚ), (20700600357/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (489822137/2000000000 : ℚ), (-1/4 : ℚ), (226832569981/1000000000000 : ℚ)⟩,
  ⟨(489822137/2000000000 : ℚ), (2471289121/10000000000 : ℚ), (-184759483/739281200 : ℚ), (239540228254549561/1056116000000000000 : ℚ)⟩,
  ⟨(2471289121/10000000000 : ℚ), (1325344433/5000000000 : ℚ), (-4470265007/17939974500 : ℚ), (2904095662179868933/12814267500000000000 : ℚ)⟩,
  ⟨(1325344433/5000000000 : ℚ), (755135587/2500000000 : ℚ), (-1143005888/4623168525 : ℚ), (5226824495519098429/23115842625000000000 : ℚ)⟩,
  ⟨(755135587/2500000000 : ℚ), (1802835769/5000000000 : ℚ), (-14281572077/58512919000 : ℚ), (32936960373004834259/146282297500000000000 : ℚ)⟩,
  ⟨(1802835769/5000000000 : ℚ), (4450837369/10000000000 : ℚ), (-10134518941/42258291550 : ℚ), (37800381693993671901/169033166200000000000 : ℚ)⟩,
  ⟨(4450837369/10000000000 : ℚ), (1408066839/2500000000 : ℚ), (-27721072781/118142998700 : ℚ), (32684267786491579101/147678748375000000000 : ℚ)⟩,
  ⟨(1408066839/2500000000 : ℚ), (909838827/1250000000 : ℚ), (-18829118069/82322163000 : ℚ), (4984799900043665329/22867267500000000000 : ℚ)⟩,
  ⟨(909838827/1250000000 : ℚ), (600698561/625000000 : ℚ), (-25925956787/116623318000 : ℚ), (7774246414324417501/36444786875000000000 : ℚ)⟩,
  ⟨(600698561/625000000 : ℚ), (13022465717/10000000000 : ℚ), (-14711411663/68225774820 : ℚ), (176447723788147972961/852822185250000000000 : ℚ)⟩,
  ⟨(13022465717/10000000000 : ℚ), (18249113211/10000000000 : ℚ), (-453161401/2168733400 : ℚ), (4298526737295003203/21687334000000000000 : ℚ)⟩,
  ⟨(18249113211/10000000000 : ℚ), (13390903933/5000000000 : ℚ), (-10165636937/50192321500 : ℚ), (93604402569739034627/501923215000000000000 : ℚ)⟩,
  ⟨(13390903933/5000000000 : ℚ), (41981442401/10000000000 : ℚ), (-29885563159/151996345350 : ℚ), (518776408719474586201/3039926907000000000000 : ℚ)⟩,
  ⟨(41981442401/10000000000 : ℚ), (72717545213/10000000000 : ℚ), (-588409074161/3073610281200 : ℚ), (4576690744099447606189/30736102812000000000000 : ℚ)⟩,
  ⟨(72717545213/10000000000 : ℚ), (148971015399/10000000000 : ℚ), (-35684526501/190633675465 : ℚ), (1124713191216662365901/9531683773250000000000 : ℚ)⟩,
  ⟨(148971015399/10000000000 : ℚ), (32/1 : ℚ), (-5177461364249/28133166239300 : ℚ), (159792345722384572339/2250653299144000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (439704573593/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(181866261317/1000000000000 : ℚ), (794728718057/2000000000 : ℚ), (-14511373354341/200000000000 : ℚ), 11⟩,
    ⟨(91586136193/500000000000 : ℚ), (13134458681/312500000 : ℚ), (-7848037534081/1000000000000 : ℚ), 8⟩,
    ⟨(46433526313/250000000000 : ℚ), (138971015399/10000000000 : ℚ), (-333822021229/125000000000 : ℚ), 6⟩,
    ⟨(94726655057/500000000000 : ℚ), (62717545213/10000000000 : ℚ), (-38849847181/31250000000 : ℚ), 5⟩,
    ⟨(97093480007/500000000000 : ℚ), (31981442401/10000000000 : ℚ), (-654786035631/1000000000000 : ℚ), 5⟩,
    ⟨(199753143443/1000000000000 : ℚ), (8390903933/5000000000 : ℚ), (-355930404041/1000000000000 : ℚ), 4⟩,
    ⟨(51484488773/250000000000 : ℚ), (8249113211/10000000000 : ℚ), (-11444661007/62500000000 : ℚ), 4⟩,
    ⟨(106251858059/500000000000 : ℚ), (3022465717/10000000000 : ℚ), (-73902678471/1000000000000 : ℚ), 4⟩,
    ⟨(219198108007/1000000000000 : ℚ), (-24301439/625000000 : ℚ), (-86405039/250000000000 : ℚ), 3⟩,
    ⟨(225763869033/1000000000000 : ℚ), (-340161173/1250000000 : ℚ), (25753146709/500000000000 : ℚ), 3⟩,
    ⟨(115974340341/500000000000 : ℚ), (-1091933161/2500000000 : ℚ), (22291132389/250000000000 : ℚ), 3⟩,
    ⟨(23751486411/100000000000 : ℚ), (-5549162631/10000000000 : ℚ), (116885602337/1000000000000 : ℚ), 3⟩,
    ⟨(242248514011/1000000000000 : ℚ), (-3197164231/5000000000 : ℚ), (137154640219/1000000000000 : ℚ), 3⟩,
    ⟨(245967718873/1000000000000 : ℚ), (-1744864413/2500000000 : ℚ), (18929526537/125000000000 : ℚ), 3⟩,
    ⟨(124264775869/500000000000 : ℚ), (-3674655567/5000000000 : ℚ), (802901297/5000000000 : ℚ), 3⟩,
    ⟨(31229445351/125000000000 : ℚ), (-7528710879/10000000000 : ℚ), (165050524407/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-1510177863/2000000000 : ℚ), (20700600357/125000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control639.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control639.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate639
