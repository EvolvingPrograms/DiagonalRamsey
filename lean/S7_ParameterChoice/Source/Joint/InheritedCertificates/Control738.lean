import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate738
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8862212390071/100032447534150 : ℚ), (110077885333/500000000 : ℚ), (-2443013170297/125000000000 : ℚ)⟩,
  ⟨(8862212390071/100032447534150 : ℚ), (1420724935353/15811308243700 : ℚ), (200908755977/10000000000 : ℚ), (-909840291117/500000000000 : ℚ)⟩,
  ⟨(1420724935353/15811308243700 : ℚ), (394441626321/4298557456600 : ℚ), (2139783677/500000000 : ℚ), (-398955646881/1000000000000 : ℚ)⟩,
  ⟨(394441626321/4298557456600 : ℚ), (164582210359/1750602590900 : ℚ), (-94950513/5000000000 : ℚ), (-56425257/12500000000 : ℚ)⟩,
  ⟨(164582210359/1750602590900 : ℚ), (83609176577/868506350000 : ℚ), (-3539185387/2000000000 : ℚ), (160068189799/1000000000000 : ℚ)⟩,
  ⟨(83609176577/868506350000 : ℚ), (44991109493/458280112500 : ℚ), (-5276198087/2000000000 : ℚ), (30459670797/125000000000 : ℚ)⟩,
  ⟨(44991109493/458280112500 : ℚ), (20366068719/204801120700 : ℚ), (-774094789/250000000 : ℚ), (288668475869/1000000000000 : ℚ)⟩,
  ⟨(20366068719/204801120700 : ℚ), (2468184009/24695729800 : ℚ), (-33011802767/10000000000 : ℚ), (77258636147/250000000000 : ℚ)⟩,
  ⟨(2468184009/24695729800 : ℚ), (1/10 : ℚ), (-6651752013/2000000000 : ℚ), (311502728597/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1348247987/8000000000 : ℚ), (-2/5 : ℚ), (378915127947/1000000000000 : ℚ)⟩,
  ⟨(1348247987/8000000000 : ℚ), (6988197233/40000000000 : ℚ), (-2468184009/6173932450 : ℚ), (93566492782341650321/246957298000000000000 : ℚ)⟩,
  ⟨(6988197233/40000000000 : ℚ), (225905211/1000000000 : ℚ), (-20366068719/51200280175 : ℚ), (775228315735568852243/2048011207000000000000 : ℚ)⟩,
  ⟨(225905211/1000000000 : ℚ), (2723801913/8000000000 : ℚ), (-44991109493/114570028125 : ℚ), (5490346854889204043/14548575000000000000 : ℚ)⟩,
  ⟨(2723801913/8000000000 : ℚ), (4460814613/8000000000 : ℚ), (-83609176577/217126587500 : ℚ), (651005515202452367001/1737012700000000000000 : ℚ)⟩,
  ⟨(4460814613/8000000000 : ℚ), (19905049487/20000000000 : ℚ), (-164582210359/437650647725 : ℚ), (3236505761437179691313/8753012954500000000000 : ℚ)⟩,
  ⟨(19905049487/20000000000 : ℚ), (4139783677/2000000000 : ℚ), (-394441626321/1074639364150 : ℚ), (7754361207965098208847/21492787283000000000000 : ℚ)⟩,
  ⟨(4139783677/2000000000 : ℚ), (240908755977/40000000000 : ℚ), (-1420724935353/3952827060925 : ℚ), (54549770853622377730623/158113082437000000000000 : ℚ)⟩,
  ⟨(240908755977/40000000000 : ℚ), (32/1 : ℚ), (-17724424780142/50016223767075 : ℚ), (6556532049658732931697/20840093236281250000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (28369798543/62500000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(11053862907/125000000000 : ℚ), (110077885333/500000000 : ℚ), (-2443013170297/125000000000 : ℚ), 10⟩,
    ⟨(89303005561/1000000000000 : ℚ), (200908755977/10000000000 : ℚ), (-909840291117/500000000000 : ℚ), 7⟩,
    ⟨(45457220251/500000000000 : ℚ), (2139783677/500000000 : ℚ), (-398955646881/1000000000000 : ℚ), 6⟩,
    ⟨(18603976343/200000000000 : ℚ), (-94950513/5000000000 : ℚ), (-56425257/12500000000 : ℚ), 5⟩,
    ⟨(95298794863/1000000000000 : ℚ), (-3539185387/2000000000 : ℚ), (160068189799/1000000000000 : ℚ), 5⟩,
    ⟨(97404236077/1000000000000 : ℚ), (-5276198087/2000000000 : ℚ), (30459670797/125000000000 : ℚ), 4⟩,
    ⟨(99015671017/1000000000000 : ℚ), (-774094789/250000000 : ℚ), (288668475869/1000000000000 : ℚ), 4⟩,
    ⟨(99887773323/1000000000000 : ℚ), (-33011802767/10000000000 : ℚ), (77258636147/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-6651752013/2000000000 : ℚ), (311502728597/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control738.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control738.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate738
