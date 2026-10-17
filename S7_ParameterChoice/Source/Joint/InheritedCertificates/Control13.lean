import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate13
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (38997743981219/997976847334900 : ℚ), (8927827039/8000000 : ℚ), (-21847699022583/500000000000 : ℚ)⟩,
  ⟨(38997743981219/997976847334900 : ℚ), (3120521788623/79227327061700 : ℚ), (1180015325401/10000000000 : ℚ), (-4697654063947/1000000000000 : ℚ)⟩,
  ⟨(3120521788623/79227327061700 : ℚ), (215153364053/5393034377675 : ℚ), (3029234803/78125000 : ℚ), (-394283068831/250000000000 : ℚ)⟩,
  ⟨(215153364053/5393034377675 : ℚ), (88778866936/2187821567225 : ℚ), (172020679677/10000000000 : ℚ), (-89564852389/125000000000 : ℚ)⟩,
  ⟨(88778866936/2187821567225 : ℚ), (90359020513/2181927151650 : ℚ), (21126954247/2500000000 : ℚ), (-45175418921/125000000000 : ℚ)⟩,
  ⟨(90359020513/2181927151650 : ℚ), (104842453397/2474794087100 : ℚ), (8173854791/2000000000 : ℚ), (-90342655171/500000000000 : ℚ)⟩,
  ⟨(104842453397/2474794087100 : ℚ), (16641282497/383466730975 : ℚ), (4030333271/2500000000 : ℚ), (-15168571389/200000000000 : ℚ)⟩,
  ⟨(16641282497/383466730975 : ℚ), (45096577643/1014063394800 : ℚ), (156532769/2000000000 : ℚ), (-9277726957/1000000000000 : ℚ)⟩,
  ⟨(45096577643/1014063394800 : ℚ), (228555551/5018198480 : ℚ), (-9357970103/10000000000 : ℚ), (17909425343/500000000000 : ℚ)⟩,
  ⟨(228555551/5018198480 : ℚ), (23390526229/502179246000 : ℚ), (-655337919/400000000 : ℚ), (33908313913/500000000000 : ℚ)⟩,
  ⟨(23390526229/502179246000 : ℚ), (8659292269/182187721950 : ℚ), (-4281048087/2000000000 : ℚ), (18241430811/200000000000 : ℚ)⟩,
  ⟨(8659292269/182187721950 : ℚ), (636101817/13152606830 : ℚ), (-12524497437/5000000000 : ℚ), (108525738593/1000000000000 : ℚ)⟩,
  ⟨(636101817/13152606830 : ℚ), (8993940227/183373515300 : ℚ), (-345993953/125000000 : ℚ), (121247774933/1000000000000 : ℚ)⟩,
  ⟨(8993940227/183373515300 : ℚ), (5770772749/116451509500 : ℚ), (-29513251393/10000000000 : ℚ), (3256042879/25000000000 : ℚ)⟩,
  ⟨(5770772749/116451509500 : ℚ), (2824357467/56636736400 : ℚ), (-3834720811/1250000000 : ℚ), (136012487909/1000000000000 : ℚ)⟩,
  ⟨(2824357467/56636736400 : ℚ), (175167751/3504282700 : ℚ), (-7811033463/2500000000 : ℚ), (2169325709/15625000000 : ℚ)⟩,
  ⟨(175167751/3504282700 : ℚ), (1/20 : ℚ), (-15657109753/5000000000 : ℚ), (69593590439/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (4342890247/20000000000 : ℚ), (-1/5 : ℚ), (45654020837/250000000000 : ℚ)⟩,
  ⟨(4342890247/20000000000 : ℚ), (2188966537/10000000000 : ℚ), (-175167751/876070675 : ℚ), (63989809349391111/350428270000000000 : ℚ)⟩,
  ⟨(2188966537/10000000000 : ℚ), (1165279189/5000000000 : ℚ), (-2824357467/14159184100 : ℚ), (5168117703841851799/28318368200000000000 : ℚ)⟩,
  ⟨(1165279189/5000000000 : ℚ), (10486748607/40000000000 : ℚ), (-5770772749/29112877375 : ℚ), (212185086389399650843/1164515095000000000000 : ℚ)⟩,
  ⟨(10486748607/40000000000 : ℚ), (154006047/500000000 : ℚ), (-8993940227/45843378825 : ℚ), (111048667207612844423/611245051000000000000 : ℚ)⟩,
  ⟨(154006047/500000000 : ℚ), (7475502563/20000000000 : ℚ), (-1272203634/6576303415 : ℚ), (237843252331157778439/1315260683000000000000 : ℚ)⟩,
  ⟨(7475502563/20000000000 : ℚ), (3718951913/8000000000 : ℚ), (-17318584538/91093860975 : ℚ), (130874277589339941223/728750887800000000000 : ℚ)⟩,
  ⟨(3718951913/8000000000 : ℚ), (944662081/1600000000 : ℚ), (-23390526229/125544811500 : ℚ), (178592921971707711137/1004358492000000000000 : ℚ)⟩,
  ⟨(944662081/1600000000 : ℚ), (30642029897/40000000000 : ℚ), (-228555551/1254549620 : ℚ), (44004335237728149099/250909924000000000000 : ℚ)⟩,
  ⟨(30642029897/40000000000 : ℚ), (8156532769/8000000000 : ℚ), (-45096577643/253515848700 : ℚ), (1745076533633982481099/10140633948000000000000 : ℚ)⟩,
  ⟨(8156532769/8000000000 : ℚ), (14030333271/10000000000 : ℚ), (-66565129988/383466730975 : ℚ), (2572395335016155908137/15338669239000000000000 : ℚ)⟩,
  ⟨(14030333271/10000000000 : ℚ), (16173854791/8000000000 : ℚ), (-104842453397/618698521775 : ℚ), (4006943709274212587253/24747940871000000000000 : ℚ)⟩,
  ⟨(16173854791/8000000000 : ℚ), (31126954247/10000000000 : ℚ), (-180718041026/1090963575825 : ℚ), (420605817347012270659/2727408939562500000000 : ℚ)⟩,
  ⟨(31126954247/10000000000 : ℚ), (212020679677/40000000000 : ℚ), (-355115467744/2187821567225 : ℚ), (314680245096644123163/2187821567225000000000 : ℚ)⟩,
  ⟨(212020679677/40000000000 : ℚ), (3341734803/312500000 : ℚ), (-860613456212/5393034377675 : ℚ), (1394971248817794257927/10786068755350000000000 : ℚ)⟩,
  ⟨(3341734803/312500000 : ℚ), (1220015325401/40000000000 : ℚ), (-3120521788623/19806831765425 : ℚ), (21314663974317132641881/198068317654250000000000 : ℚ)⟩,
  ⟨(1220015325401/40000000000 : ℚ), (32/1 : ℚ), (-38997743981219/249494211833725 : ℚ), (174086346768427426598829/2494942118337250000000000 : ℚ)⟩ ]
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (1835113723/10000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(12199391/312500000 : ℚ), (8927827039/8000000 : ℚ), (-21847699022583/500000000000 : ℚ), 10⟩,
    ⟨(19624086813/500000000000 : ℚ), (1180015325401/10000000000 : ℚ), (-4697654063947/1000000000000 : ℚ), 7⟩,
    ⟨(4957542949/125000000000 : ℚ), (3029234803/78125000 : ℚ), (-394283068831/250000000000 : ℚ), 5⟩,
    ⟨(8051744327/200000000000 : ℚ), (172020679677/10000000000 : ℚ), (-89564852389/125000000000 : ℚ), 4⟩,
    ⟨(1640812497/40000000000 : ℚ), (21126954247/2500000000 : ℚ), (-45175418921/125000000000 : ℚ), 4⟩,
    ⟨(20957924227/500000000000 : ℚ), (8173854791/2000000000 : ℚ), (-90342655171/500000000000 : ℚ), 3⟩,
    ⟨(21455457387/500000000000 : ℚ), (4030333271/2500000000 : ℚ), (-15168571389/200000000000 : ℚ), 3⟩,
    ⟨(8793454309/200000000000 : ℚ), (156532769/2000000000 : ℚ), (-9277726957/1000000000000 : ℚ), 3⟩,
    ⟨(45044323569/1000000000000 : ℚ), (-9357970103/10000000000 : ℚ), (17909425343/500000000000 : ℚ), 2⟩,
    ⟨(2305034017/50000000000 : ℚ), (-655337919/400000000 : ℚ), (33908313913/500000000000 : ℚ), 2⟩,
    ⟨(2354787333/50000000000 : ℚ), (-4281048087/2000000000 : ℚ), (18241430811/200000000000 : ℚ), 2⟩,
    ⟨(47991282689/1000000000000 : ℚ), (-12524497437/5000000000 : ℚ), (108525738593/1000000000000 : ℚ), 2⟩,
    ⟨(24376436739/500000000000 : ℚ), (-345993953/125000000 : ℚ), (121247774933/1000000000000 : ℚ), 2⟩,
    ⟨(24675625761/500000000000 : ℚ), (-29513251393/10000000000 : ℚ), (3256042879/25000000000 : ℚ), 2⟩,
    ⟨(49763421487/1000000000000 : ℚ), (-3834720811/1250000000 : ℚ), (136012487909/1000000000000 : ℚ), 2⟩,
    ⟨(24986771957/500000000000 : ℚ), (-7811033463/2500000000 : ℚ), (2169325709/15625000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-15657109753/5000000000 : ℚ), (69593590439/500000000000 : ℚ), 2⟩]
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control13.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control13.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate13
