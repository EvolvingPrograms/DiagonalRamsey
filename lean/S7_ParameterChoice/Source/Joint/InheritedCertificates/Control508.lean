import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate508
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (33016987129867/188147627045700 : ℚ), (168284271871/400000000 : ℚ), (-37026632170531/500000000000 : ℚ)⟩,
  ⟨(33016987129867/188147627045700 : ℚ), (195688620089/1101855316400 : ℚ), (444154255861/10000000000 : ℚ), (-501205630083/62500000000 : ℚ)⟩,
  ⟨(195688620089/1101855316400 : ℚ), (208110669919/1149392616900 : ℚ), (146653320433/10000000000 : ℚ), (-109427893557/40000000000 : ℚ)⟩,
  ⟨(208110669919/1149392616900 : ℚ), (600676551101/3234214096500 : ℚ), (264783349/40000000 : ℚ), (-319730662373/250000000000 : ℚ)⟩,
  ⟨(600676551101/3234214096500 : ℚ), (76310694427/398672450800 : ℚ), (6770739257/2000000000 : ℚ), (-678246098391/1000000000000 : ℚ)⟩,
  ⟨(76310694427/398672450800 : ℚ), (1177743221/5951137514 : ℚ), (17906798253/10000000000 : ℚ), (-373003320683/1000000000000 : ℚ)⟩,
  ⟨(1177743221/5951137514 : ℚ), (111780815483/545413825700 : ℚ), (4490045991/5000000000 : ℚ), (-196341837533/1000000000000 : ℚ)⟩,
  ⟨(111780815483/545413825700 : ℚ), (18851209386/88805812675 : ℚ), (141038149/400000000 : ℚ), (-1691220441/20000000000 : ℚ)⟩,
  ⟨(18851209386/88805812675 : ℚ), (10649298961/48493472500 : ℚ), (-13139391/5000000000 : ℚ), (-4578092253/500000000000 : ℚ)⟩,
  ⟨(10649298961/48493472500 : ℚ), (38736876557/170911459100 : ℚ), (-2450952407/10000000000 : ℚ), (44090310299/1000000000000 : ℚ)⟩,
  ⟨(38736876557/170911459100 : ℚ), (7139338456/30622387075 : ℚ), (-2080033499/5000000000 : ℚ), (10353398357/125000000000 : ℚ)⟩,
  ⟨(7139338456/30622387075 : ℚ), (10452167447/43764034600 : ℚ), (-5384962481/10000000000 : ℚ), (2784613517/25000000000 : ℚ)⟩,
  ⟨(10452167447/43764034600 : ℚ), (737027607/3026840615 : ℚ), (-6260243173/10000000000 : ℚ), (66144437787/500000000000 : ℚ)⟩,
  ⟨(737027607/3026840615 : ℚ), (1180270452/4779112225 : ℚ), (-214550353/312500000 : ℚ), (73514713857/500000000000 : ℚ)⟩,
  ⟨(1180270452/4779112225 : ℚ), (2308504169/9267420950 : ℚ), (-3623970137/5000000000 : ℚ), (15647159133/100000000000 : ℚ)⟩,
  ⟨(2308504169/9267420950 : ℚ), (114502637/458176060 : ℚ), (-7433288693/10000000000 : ℚ), (40272149917/250000000000 : ℚ)⟩,
  ⟨(114502637/458176060 : ℚ), (1/4 : ℚ), (-932024687/1250000000 : ℚ), (161661112853/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (317975313/1250000000 : ℚ), (-1/4 : ℚ), (225256175453/1000000000000 : ℚ)⟩,
  ⟨(317975313/1250000000 : ℚ), (2566711307/10000000000 : ℚ), (-114502637/458176060 : ℚ), (5159823060686160199/22908803000000000000 : ℚ)⟩,
  ⟨(2566711307/10000000000 : ℚ), (1376029863/5000000000 : ℚ), (-2308504169/9267420950 : ℚ), (20854022386522801329/92674209500000000000 : ℚ)⟩,
  ⟨(1376029863/5000000000 : ℚ), (97949647/312500000 : ℚ), (-1180270452/4779112225 : ℚ), (21452255453282172489/95582244500000000000 : ℚ)⟩,
  ⟨(97949647/312500000 : ℚ), (3739756827/10000000000 : ℚ), (-737027607/3026840615 : ℚ), (67604774399663693691/302684061500000000000 : ℚ)⟩,
  ⟨(3739756827/10000000000 : ℚ), (4615037519/10000000000 : ℚ), (-10452167447/43764034600 : ℚ), (96983513845021719273/437640346000000000000 : ℚ)⟩,
  ⟨(4615037519/10000000000 : ℚ), (2919966501/5000000000 : ℚ), (-7139338456/30622387075 : ℚ), (33528460012009983887/153111935375000000000 : ℚ)⟩,
  ⟨(2919966501/5000000000 : ℚ), (7549047593/10000000000 : ℚ), (-38736876557/170911459100 : ℚ), (36778191738669745001/170911459100000000000 : ℚ)⟩,
  ⟨(7549047593/10000000000 : ℚ), (4986860609/5000000000 : ℚ), (-10649298961/48493472500 : ℚ), (795101462411599091/3788552539062500000 : ℚ)⟩,
  ⟨(4986860609/5000000000 : ℚ), (541038149/400000000 : ℚ), (-18851209386/88805812675 : ℚ), (14390838638202657441/71044650140000000000 : ℚ)⟩,
  ⟨(541038149/400000000 : ℚ), (9490045991/5000000000 : ℚ), (-111780815483/545413825700 : ℚ), (42029385286075838293/218165530280000000000 : ℚ)⟩,
  ⟨(9490045991/5000000000 : ℚ), (27906798253/10000000000 : ℚ), (-1177743221/5951137514 : ℚ), (533455095832682944619/2975568757000000000000 : ℚ)⟩,
  ⟨(27906798253/10000000000 : ℚ), (8770739257/2000000000 : ℚ), (-76310694427/398672450800 : ℚ), (642525673788321037067/3986724508000000000000 : ℚ)⟩,
  ⟨(8770739257/2000000000 : ℚ), (304783349/40000000 : ℚ), (-600676551101/3234214096500 : ℚ), (440595611438155467247/3234214096500000000000 : ℚ)⟩,
  ⟨(304783349/40000000 : ℚ), (156653320433/10000000000 : ℚ), (-208110669919/1149392616900 : ℚ), (578662113006840663301/5746963084500000000000 : ℚ)⟩,
  ⟨(156653320433/10000000000 : ℚ), (32/1 : ℚ), (-195688620089/1101855316400 : ℚ), (511845538335278869837/11018553164000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (380746990501/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(17522030373/100000000000 : ℚ), (168284271871/400000000 : ℚ), (-37026632170531/500000000000 : ℚ), 10⟩,
    ⟨(176653706813/1000000000000 : ℚ), (444154255861/10000000000 : ℚ), (-501205630083/62500000000 : ℚ), 7⟩,
    ⟨(89732714051/500000000000 : ℚ), (146653320433/10000000000 : ℚ), (-109427893557/40000000000 : ℚ), 6⟩,
    ⟨(91773707363/500000000000 : ℚ), (264783349/40000000 : ℚ), (-319730662373/250000000000 : ℚ), 5⟩,
    ⟨(188742798227/1000000000000 : ℚ), (6770739257/2000000000 : ℚ), (-678246098391/1000000000000 : ℚ), 4⟩,
    ⟨(194851922931/1000000000000 : ℚ), (17906798253/10000000000 : ℚ), (-373003320683/1000000000000 : ℚ), 4⟩,
    ⟨(100820009301/500000000000 : ℚ), (4490045991/5000000000 : ℚ), (-196341837533/1000000000000 : ℚ), 3⟩,
    ⟨(20884622253/100000000000 : ℚ), (141038149/400000000 : ℚ), (-1691220441/20000000000 : ℚ), 3⟩,
    ⟨(216193604339/1000000000000 : ℚ), (-13139391/5000000000 : ℚ), (-4578092253/500000000000 : ℚ), 3⟩,
    ⟨(111699904133/500000000000 : ℚ), (-2450952407/10000000000 : ℚ), (44090310299/1000000000000 : ℚ), 3⟩,
    ⟨(230187903937/1000000000000 : ℚ), (-2080033499/5000000000 : ℚ), (10353398357/125000000000 : ℚ), 3⟩,
    ⟨(236297028641/1000000000000 : ℚ), (-5384962481/10000000000 : ℚ), (2784613517/25000000000 : ℚ), 3⟩,
    ⟨(241492412143/1000000000000 : ℚ), (-6260243173/10000000000 : ℚ), (66144437787/500000000000 : ℚ), 3⟩,
    ⟨(122787199383/500000000000 : ℚ), (-214550353/312500000 : ℚ), (73514713857/500000000000 : ℚ), 3⟩,
    ⟨(31048265007/125000000000 : ℚ), (-3623970137/5000000000 : ℚ), (15647159133/100000000000 : ℚ), 3⟩,
    ⟨(249819523139/1000000000000 : ℚ), (-7433288693/10000000000 : ℚ), (40272149917/250000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-932024687/1250000000 : ℚ), (161661112853/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control508.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control508.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate508
