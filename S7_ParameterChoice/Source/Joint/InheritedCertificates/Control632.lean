import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate632
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (34902502158147/225762151623100 : ℚ), (2525182922923/5000000000 : ℚ), (-78242197631609/1000000000000 : ℚ)⟩,
  ⟨(34902502158147/225762151623100 : ℚ), (1396308919927/8957155873775 : ℚ), (66890351673/1250000000 : ℚ), (-1687438663063/200000000000 : ℚ)⟩,
  ⟨(1396308919927/8957155873775 : ℚ), (2483590357/15719151385 : ℚ), (176836578433/10000000000 : ℚ), (-2851957635607/1000000000000 : ℚ)⟩,
  ⟨(2483590357/15719151385 : ℚ), (317394487633/1973351248300 : ℚ), (39688919923/5000000000 : ℚ), (-1312131614267/1000000000000 : ℚ)⟩,
  ⟨(317394487633/1973351248300 : ℚ), (161219947373/981220164600 : ℚ), (249442593/62500000 : ℚ), (-677342639001/1000000000000 : ℚ)⟩,
  ⟨(161219947373/981220164600 : ℚ), (6660095083/39582080350 : ℚ), (5071602897/2500000000 : ℚ), (-70980548851/200000000000 : ℚ)⟩,
  ⟨(6660095083/39582080350 : ℚ), (11787961417/68315148750 : ℚ), (920342909/1000000000 : ℚ), (-168420081931/1000000000000 : ℚ)⟩,
  ⟨(11787961417/68315148750 : ℚ), (79427743487/448700555500 : ℚ), (474382843/2000000000 : ℚ), (-50540467761/1000000000000 : ℚ)⟩,
  ⟨(79427743487/448700555500 : ℚ), (28011998461/154351371950 : ℚ), (-105754567/500000000 : ℚ), (14443637863/500000000000 : ℚ)⟩,
  ⟨(28011998461/154351371950 : ℚ), (10180274666/54799022075 : ℚ), (-5202118779/10000000000 : ℚ), (10613909081/125000000000 : ℚ)⟩,
  ⟨(10180274666/54799022075 : ℚ), (187532479/988417480 : ℚ), (-3697039831/5000000000 : ℚ), (7852023207/62500000000 : ℚ)⟩,
  ⟨(187532479/988417480 : ℚ), (10981436929/56840991800 : ℚ), (-897554763/1000000000 : ℚ), (9727347997/62500000000 : ℚ)⟩,
  ⟨(10981436929/56840991800 : ℚ), (7745718403/39511125800 : ℚ), (-5056183733/5000000000 : ℚ), (17760044181/100000000000 : ℚ)⟩,
  ⟨(7745718403/39511125800 : ℚ), (1985511901/10020202320 : ℚ), (-5451294991/5000000000 : ℚ), (24136484827/125000000000 : ℚ)⟩,
  ⟨(1985511901/10020202320 : ℚ), (60702607/304348355 : ℚ), (-5701800049/5000000000 : ℚ), (203019438121/1000000000000 : ℚ)⟩,
  ⟨(60702607/304348355 : ℚ), (200758479/1004068600 : ℚ), (-5823539391/5000000000 : ℚ), (207875646681/1000000000000 : ℚ)⟩,
  ⟨(200758479/1004068600 : ℚ), (1/5 : ℚ), (-291930021/250000000 : ℚ), (104238961059/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (27689993/125000000 : ℚ), (-3/10 : ℚ), (137466952659/500000000000 : ℚ)⟩,
  ⟨(27689993/125000000 : ℚ), (558820203/2500000000 : ℚ), (-602275437/2008137200 : ℚ), (690085364825842647/2510171500000000000 : ℚ)⟩,
  ⟨(558820203/2500000000 : ℚ), (1798199951/7500000000 : ℚ), (-182107821/608696710 : ℚ), (16723943402349018471/60869671000000000000 : ℚ)⟩,
  ⟨(1798199951/7500000000 : ℚ), (2048705009/7500000000 : ℚ), (-1985511901/6680134880 : ℚ), (68709133137069100273/250505058000000000000 : ℚ)⟩,
  ⟨(2048705009/7500000000 : ℚ), (2443816267/7500000000 : ℚ), (-23237155209/79022251600 : ℚ), (54015079625305110091/197555629000000000000 : ℚ)⟩,
  ⟨(2443816267/7500000000 : ℚ), (200815079/500000000 : ℚ), (-32944310787/113681983600 : ℚ), (77311540485117659833/284204959000000000000 : ℚ)⟩,
  ⟨(200815079/500000000 : ℚ), (3802960169/7500000000 : ℚ), (-562597437/1976834960 : ℚ), (6670323536619928099/24710437000000000000 : ℚ)⟩,
  ⟨(3802960169/7500000000 : ℚ), (3265960407/5000000000 : ℚ), (-15270411999/54799022075 : ℚ), (18284458627145550529/68498777593750000000 : ℚ)⟩,
  ⟨(3265960407/5000000000 : ℚ), (644245433/750000000 : ℚ), (-84035995383/308702743900 : ℚ), (405519947956105895117/1543513719500000000000 : ℚ)⟩,
  ⟨(644245433/750000000 : ℚ), (3474382843/3000000000 : ℚ), (-238283230461/897401111000 : ℚ), (23060731731025671107/89740111100000000000 : ℚ)⟩,
  ⟨(3474382843/3000000000 : ℚ), (2420342909/1500000000 : ℚ), (-11787961417/45543432500 : ℚ), (68101063510392359267/273260595000000000000 : ℚ)⟩,
  ⟨(2420342909/1500000000 : ℚ), (2940534299/1250000000 : ℚ), (-19980285249/79164160700 : ℚ), (189065933837167825823/791641607000000000000 : ℚ)⟩,
  ⟨(2940534299/1250000000 : ℚ), (114397531/31250000 : ℚ), (-161219947373/654146776400 : ℚ), (367749354641758219099/1635366941000000000000 : ℚ)⟩,
  ⟨(114397531/31250000 : ℚ), (47188919923/7500000000 : ℚ), (-952183462899/3946702496600 : ℚ), (4062040532353716229557/19733512483000000000000 : ℚ)⟩,
  ⟨(47188919923/7500000000 : ℚ), (191836578433/15000000000 : ℚ), (-7450771071/31438302770 : ℚ), (562798762778839538481/3143830277000000000000 : ℚ)⟩,
  ⟨(191836578433/15000000000 : ℚ), (32/1 : ℚ), (-4188926759781/17914311747550 : ℚ), (49635339035705763037307/358286234951000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (13292214657/31250000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(154437499399/1000000000000 : ℚ), (2525182922923/5000000000 : ℚ), (-78242197631609/1000000000000 : ℚ), 11⟩,
    ⟨(15531085717/100000000000 : ℚ), (66890351673/1250000000 : ℚ), (-1687438663063/200000000000 : ℚ), 8⟩,
    ⟨(78512005031/500000000000 : ℚ), (176836578433/10000000000 : ℚ), (-2851957635607/1000000000000 : ℚ), 6⟩,
    ⟨(159511122571/1000000000000 : ℚ), (39688919923/5000000000 : ℚ), (-1312131614267/1000000000000 : ℚ), 6⟩,
    ⟨(81338308179/500000000000 : ℚ), (249442593/62500000 : ℚ), (-677342639001/1000000000000 : ℚ), 5⟩,
    ⟨(16639884327/100000000000 : ℚ), (5071602897/2500000000 : ℚ), (-70980548851/200000000000 : ℚ), 4⟩,
    ⟨(170534760217/1000000000000 : ℚ), (920342909/1000000000 : ℚ), (-168420081931/1000000000000 : ℚ), 4⟩,
    ⟨(174925426229/1000000000000 : ℚ), (474382843/2000000000 : ℚ), (-50540467761/1000000000000 : ℚ), 4⟩,
    ⟨(179402110473/1000000000000 : ℚ), (-105754567/500000000 : ℚ), (14443637863/500000000000 : ℚ), 4⟩,
    ⟨(36758555297/200000000000 : ℚ), (-5202118779/10000000000 : ℚ), (10613909081/125000000000 : ℚ), 4⟩,
    ⟨(23491086679/125000000000 : ℚ), (-3697039831/5000000000 : ℚ), (7852023207/62500000000 : ℚ), 3⟩,
    ⟨(38330184069/200000000000 : ℚ), (-897554763/1000000000 : ℚ), (9727347997/62500000000 : ℚ), 3⟩,
    ⟨(194816414131/1000000000000 : ℚ), (-5056183733/5000000000 : ℚ), (17760044181/100000000000 : ℚ), 3⟩,
    ⟨(2466294083/12500000000 : ℚ), (-5451294991/5000000000 : ℚ), (24136484827/125000000000 : ℚ), 3⟩,
    ⟨(49754169883/250000000000 : ℚ), (-5701800049/5000000000 : ℚ), (203019438121/1000000000000 : ℚ), 3⟩,
    ⟨(199890037303/1000000000000 : ℚ), (-5823539391/5000000000 : ℚ), (207875646681/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-291930021/250000000 : ℚ), (104238961059/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control632.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control632.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate632
