import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate784
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (11571149423257/63707606703025 : ℚ), (1424853457487/5000000000 : ℚ), (-25949537117777/500000000000 : ℚ)⟩,
  ⟨(11571149423257/63707606703025 : ℚ), (284866377447/1551816577300 : ℚ), (301402646853/10000000000 : ℚ), (-2807238271263/500000000000 : ℚ)⟩,
  ⟨(284866377447/1551816577300 : ℚ), (40836028237/218670687300 : ℚ), (24916622951/2500000000 : ℚ), (-382242727143/200000000000 : ℚ)⟩,
  ⟨(40836028237/218670687300 : ℚ), (140261253923/734249867500 : ℚ), (44998819979/10000000000 : ℚ), (-89031292979/100000000000 : ℚ)⟩,
  ⟨(140261253923/734249867500 : ℚ), (213655428109/1088722450600 : ℚ), (11485661977/5000000000 : ℚ), (-469529168021/1000000000000 : ℚ)⟩,
  ⟨(213655428109/1088722450600 : ℚ), (123489152177/610730500600 : ℚ), (1510512431/1250000000 : ℚ), (-31984217489/125000000000 : ℚ)⟩,
  ⟨(123489152177/610730500600 : ℚ), (77987920117/373751393100 : ℚ), (2988397221/5000000000 : ℚ), (-26476917547/200000000000 : ℚ)⟩,
  ⟨(77987920117/373751393100 : ℚ), (52484962959/243678896200 : ℚ), (2239280511/10000000000 : ℚ), (-27198333809/500000000000 : ℚ)⟩,
  ⟨(52484962959/243678896200 : ℚ), (36966762163/166434835600 : ℚ), (-197508451/10000000000 : ℚ), (-1911704659/1000000000000 : ℚ)⟩,
  ⟨(36966762163/166434835600 : ℚ), (26827223443/117367513700 : ℚ), (-1861856807/10000000000 : ℚ), (1095470547/31250000000 : ℚ)⟩,
  ⟨(26827223443/117367513700 : ℚ), (19736475439/84152753200 : ℚ), (-379441493/1250000000 : ℚ), (61882280947/1000000000000 : ℚ)⟩,
  ⟨(19736475439/84152753200 : ℚ), (7212745887/30084270800 : ℚ), (-969264869/2500000000 : ℚ), (40809378193/500000000000 : ℚ)⟩,
  ⟨(7212745887/30084270800 : ℚ), (10162450089/41643623200 : ℚ), (-1119686223/2500000000 : ℚ), (600276551/6250000000 : ℚ)⟩,
  ⟨(10162450089/41643623200 : ℚ), (6506468879/26319088500 : ℚ), (-1223795281/2500000000 : ℚ), (106206698249/1000000000000 : ℚ)⟩,
  ⟨(6506468879/26319088500 : ℚ), (1590448487/6382902850 : ℚ), (-5158372009/10000000000 : ℚ), (14089145891/125000000000 : ℚ)⟩,
  ⟨(1590448487/6382902850 : ℚ), (131471213/526059200 : ℚ), (-2643015033/5000000000 : ℚ), (57947032051/500000000000 : ℚ)⟩,
  ⟨(131471213/526059200 : ℚ), (1/4 : ℚ), (-2650905921/5000000000 : ℚ), (116288477741/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (849094079/3500000000 : ℚ), (-7/40 : ℚ), (158743181691/1000000000000 : ℚ)⟩,
  ⟨(849094079/3500000000 : ℚ), (856984967/3500000000 : ℚ), (-920298491/5260592000 : ℚ), (417504546365489163/2630296000000000000 : ℚ)⟩,
  ⟨(856984967/3500000000 : ℚ), (263089713/1000000000 : ℚ), (-11133139409/63829028500 : ℚ), (2024677281768234953/12765805700000000000 : ℚ)⟩,
  ⟨(263089713/1000000000 : ℚ), (526204719/1750000000 : ℚ), (-45545282153/263190885000 : ℚ), (13882524472569340123/87730295000000000000 : ℚ)⟩,
  ⟨(526204719/1750000000 : ℚ), (630313777/1750000000 : ℚ), (-71137150623/416436232000 : ℚ), (16404608501427409433/104109058000000000000 : ℚ)⟩,
  ⟨(630313777/1750000000 : ℚ), (780735131/1750000000 : ℚ), (-50489221209/300842708000 : ℚ), (11769846028645789519/75210677000000000000 : ℚ)⟩,
  ⟨(780735131/1750000000 : ℚ), (495558507/875000000 : ℚ), (-138155328073/841527532000 : ℚ), (32580067393950902347/210381883000000000000 : ℚ)⟩,
  ⟨(495558507/875000000 : ℚ), (5138143193/7000000000 : ℚ), (-187790564101/1173675137000 : ℚ), (178985364939290551547/1173675137000000000000 : ℚ)⟩,
  ⟨(5138143193/7000000000 : ℚ), (971784507/1000000000 : ℚ), (-258767335141/1664348356000 : ℚ), (248284344701336269883/1664348356000000000000 : ℚ)⟩,
  ⟨(971784507/1000000000 : ℚ), (9239280511/7000000000 : ℚ), (-367394740713/2436788962000 : ℚ), (352370096166520359533/2436788962000000000000 : ℚ)⟩,
  ⟨(9239280511/7000000000 : ℚ), (6488397221/3500000000 : ℚ), (-545915440819/3737513931000 : ℚ), (517243967408171353429/3737513931000000000000 : ℚ)⟩,
  ⟨(6488397221/3500000000 : ℚ), (2385512431/875000000 : ℚ), (-864424065239/6107305006000 : ℚ), (99247536028321762353/763413125750000000000 : ℚ)⟩,
  ⟨(2385512431/875000000 : ℚ), (14985661977/3500000000 : ℚ), (-1495587996763/10887224506000 : ℚ), (32291664650634347509/272180612650000000000 : ℚ)⟩,
  ⟨(14985661977/3500000000 : ℚ), (51998819979/7000000000 : ℚ), (-981828777461/7342498675000 : ℚ), (756298185452441499367/7342498675000000000000 : ℚ)⟩,
  ⟨(51998819979/7000000000 : ℚ), (26666622951/1750000000 : ℚ), (-285852197659/2186706873000 : ℚ), (58857292753521433451/728902291000000000000 : ℚ)⟩,
  ⟨(26666622951/1750000000 : ℚ), (32/1 : ℚ), (-1994064642129/15518165773000 : ℚ), (727167088542192561693/15518165773000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (570205697937/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(90693283989/500000000000 : ℚ), (1424853457487/5000000000 : ℚ), (-25949537117777/500000000000 : ℚ), 11⟩,
    ⟨(7308070959/40000000000 : ℚ), (301402646853/10000000000 : ℚ), (-2807238271263/500000000000 : ℚ), 8⟩,
    ⟨(9264082167/50000000000 : ℚ), (24916622951/2500000000 : ℚ), (-382242727143/200000000000 : ℚ), 7⟩,
    ⟨(189027033141/1000000000000 : ℚ), (44998819979/10000000000 : ℚ), (-89031292979/100000000000 : ℚ), 6⟩,
    ⟨(48448502537/250000000000 : ℚ), (11485661977/5000000000 : ℚ), (-469529168021/1000000000000 : ℚ), 5⟩,
    ⟨(199399382107/1000000000000 : ℚ), (1510512431/1250000000 : ℚ), (-31984217489/125000000000 : ℚ), 5⟩,
    ⟨(102813868859/500000000000 : ℚ), (2988397221/5000000000 : ℚ), (-26476917547/200000000000 : ℚ), 4⟩,
    ⟨(6632491399/31250000000 : ℚ), (2239280511/10000000000 : ℚ), (-27198333809/500000000000 : ℚ), 4⟩,
    ⟨(109490624151/500000000000 : ℚ), (-197508451/10000000000 : ℚ), (-1911704659/1000000000000 : ℚ), 4⟩,
    ⟨(28199154419/125000000000 : ℚ), (-1861856807/10000000000 : ℚ), (1095470547/31250000000 : ℚ), 4⟩,
    ⟨(57955397741/250000000000 : ℚ), (-379441493/1250000000 : ℚ), (61882280947/1000000000000 : ℚ), 4⟩,
    ⟨(237426962923/1000000000000 : ℚ), (-969264869/2500000000 : ℚ), (40809378193/500000000000 : ℚ), 4⟩,
    ⟨(24219393993/100000000000 : ℚ), (-1119686223/2500000000 : ℚ), (600276551/6250000000 : ℚ), 4⟩,
    ⟨(24593932973/100000000000 : ℚ), (-1223795281/2500000000 : ℚ), (106206698249/1000000000000 : ℚ), 4⟩,
    ⟨(31064899887/125000000000 : ℚ), (-5158372009/10000000000 : ℚ), (14089145891/125000000000 : ℚ), 3⟩,
    ⟨(249834405093/1000000000000 : ℚ), (-2643015033/5000000000 : ℚ), (57947032051/500000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2650905921/5000000000 : ℚ), (116288477741/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control784.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control784.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate784
