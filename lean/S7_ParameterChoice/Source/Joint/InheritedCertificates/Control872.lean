import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate872
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1344475006763/11118433159020 : ℚ), (38323051483/625000000 : ℚ), (-7443927397899/1000000000000 : ℚ)⟩,
  ⟨(1344475006763/11118433159020 : ℚ), (269413965701/2170325542150 : ℚ), (57247165777/10000000000 : ℚ), (-180388091021/250000000000 : ℚ)⟩,
  ⟨(269413965701/2170325542150 : ℚ), (1031621103/7997597200 : ℚ), (6920327467/5000000000 : ℚ), (-91362216341/500000000000 : ℚ)⟩,
  ⟨(1031621103/7997597200 : ℚ), (3120015568/23156892375 : ℚ), (1122069497/5000000000 : ℚ), (-33139372747/1000000000000 : ℚ)⟩,
  ⟨(3120015568/23156892375 : ℚ), (4525183259/32212616200 : ℚ), (-2387239481/10000000000 : ℚ), (29260938613/1000000000000 : ℚ)⟩,
  ⟨(4525183259/32212616200 : ℚ), (17017815859/117089502100 : ℚ), (-928424523/2000000000 : ℚ), (30468610713/500000000000 : ℚ)⟩,
  ⟨(17017815859/117089502100 : ℚ), (1922050541/12936211150 : ℚ), (-1453254409/2500000000 : ℚ), (15591007457/200000000000 : ℚ)⟩,
  ⟨(1922050541/12936211150 : ℚ), (103417213/690107800 : ℚ), (-3165233041/5000000000 : ℚ), (85643239449/1000000000000 : ℚ)⟩,
  ⟨(103417213/690107800 : ℚ), (3/20 : ℚ), (-799071973/1250000000 : ℚ), (43286997183/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (200928027/1000000000 : ℚ), (-3/25 : ℚ), (55342678803/500000000000 : ℚ)⟩,
  ⟨(200928027/1000000000 : ℚ), (834766959/4000000000 : ℚ), (-103417213/862634750 : ℚ), (190922305104689139/1725269500000000000 : ℚ)⟩,
  ⟨(834766959/4000000000 : ℚ), (546745591/2000000000 : ℚ), (-3844101082/32340527875 : ℚ), (28575837722264972403/258724223000000000000 : ℚ)⟩,
  ⟨(546745591/2000000000 : ℚ), (671575477/1600000000 : ℚ), (-17017815859/146361877625 : ℚ), (128494828176308368661/1170895021000000000000 : ℚ)⟩,
  ⟨(671575477/1600000000 : ℚ), (5612760519/8000000000 : ℚ), (-4525183259/40265770250 : ℚ), (34824483789278244727/322126162000000000000 : ℚ)⟩,
  ⟨(5612760519/8000000000 : ℚ), (5122069497/4000000000 : ℚ), (-12480062272/115784461875 : ℚ), (32383765681683983401/308758565000000000000 : ℚ)⟩,
  ⟨(5122069497/4000000000 : ℚ), (10920327467/4000000000 : ℚ), (-1031621103/9996996500 : ℚ), (3958858210681977649/39987986000000000000 : ℚ)⟩,
  ⟨(10920327467/4000000000 : ℚ), (65247165777/8000000000 : ℚ), (-538827931402/5425813855375 : ℚ), (1918462425029924133271/21703255421500000000000 : ℚ)⟩,
  ⟨(65247165777/8000000000 : ℚ), (32/1 : ℚ), (-1344475006763/13898041448775 : ℚ), (12496443902150806772457/185307219317000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (91551496217/125000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(60254885113/500000000000 : ℚ), (38323051483/625000000 : ℚ), (-7443927397899/1000000000000 : ℚ), 11⟩,
    ⟨(24546560879/200000000000 : ℚ), (57247165777/10000000000 : ℚ), (-180388091021/250000000000 : ℚ), 8⟩,
    ⟨(63420217967/500000000000 : ℚ), (6920327467/5000000000 : ℚ), (-91362216341/500000000000 : ℚ), 6⟩,
    ⟨(132207315177/1000000000000 : ℚ), (1122069497/5000000000 : ℚ), (-33139372747/1000000000000 : ℚ), 6⟩,
    ⟨(8626023963/62500000000 : ℚ), (-2387239481/10000000000 : ℚ), (29260938613/1000000000000 : ℚ), 5⟩,
    ⟨(2867665253/20000000000 : ℚ), (-928424523/2000000000 : ℚ), (30468610713/500000000000 : ℚ), 5⟩,
    ⟨(147490894189/1000000000000 : ℚ), (-1453254409/2500000000 : ℚ), (15591007457/200000000000 : ℚ), 5⟩,
    ⟨(149713928359/1000000000000 : ℚ), (-3165233041/5000000000 : ℚ), (85643239449/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-799071973/1250000000 : ℚ), (43286997183/500000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control872.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control872.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate872
