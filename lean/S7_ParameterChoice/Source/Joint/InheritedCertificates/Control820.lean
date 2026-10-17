import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate820
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (11743337195819/74859278025550 : ℚ), (104672277403/312500000 : ℚ), (-52648162561869/1000000000000 : ℚ)⟩,
  ⟨(11743337195819/74859278025550 : ℚ), (3758340355713/23772421185500 : ℚ), (177570877937/5000000000 : ℚ), (-5674813778593/1000000000000 : ℚ)⟩,
  ⟨(3758340355713/23772421185500 : ℚ), (345349287431/2157067842100 : ℚ), (117417544019/10000000000 : ℚ), (-11977958893/6250000000 : ℚ)⟩,
  ⟨(345349287431/2157067842100 : ℚ), (426989533507/2622760639700 : ℚ), (13176377189/2500000000 : ℚ), (-880425560587/1000000000000 : ℚ)⟩,
  ⟨(426989533507/2622760639700 : ℚ), (21677199851/130512213070 : ℚ), (26477902359/10000000000 : ℚ), (-11335900677/25000000000 : ℚ)⟩,
  ⟨(21677199851/130512213070 : ℚ), (62631158837/368744062950 : ℚ), (3356670263/2500000000 : ℚ), (-23666402857/100000000000 : ℚ)⟩,
  ⟨(62631158837/368744062950 : ℚ), (6590694114/37893400925 : ℚ), (6051799793/10000000000 : ℚ), (-6962606931/62500000000 : ℚ)⟩,
  ⟨(6590694114/37893400925 : ℚ), (6652010037/37335567875 : ℚ), (752295841/5000000000 : ℚ), (-4039172691/125000000000 : ℚ)⟩,
  ⟨(6652010037/37335567875 : ℚ), (1338638374/7338650575 : ℚ), (-370563437/2500000000 : ℚ), (1306418673/62500000000 : ℚ)⟩,
  ⟨(1338638374/7338650575 : ℚ), (3401106329/18237752900 : ℚ), (-3537075909/10000000000 : ℚ), (1459614331/25000000000 : ℚ)⟩,
  ⟨(3401106329/18237752900 : ℚ), (20029459921/105282779500 : ℚ), (-4996096141/10000000000 : ℚ), (20896832/244140625 : ℚ)⟩,
  ⟨(20029459921/105282779500 : ℚ), (1221048693/6309136075 : ℚ), (-189028873/312500000 : ℚ), (105622883793/1000000000000 : ℚ)⟩,
  ⟨(1221048693/6309136075 : ℚ), (10332916793/52655187300 : ℚ), (-1361204053/2000000000 : ℚ), (120275468109/1000000000000 : ℚ)⟩,
  ⟨(10332916793/52655187300 : ℚ), (6621863343/33402667400 : ℚ), (-3666286069/5000000000 : ℚ), (65304192451/500000000000 : ℚ)⟩,
  ⟨(6621863343/33402667400 : ℚ), (809869523/4059932125 : ℚ), (-1916649703/2500000000 : ℚ), (27446049649/200000000000 : ℚ)⟩,
  ⟨(809869523/4059932125 : ℚ), (4017869/20094596 : ℚ), (-7828996097/10000000000 : ℚ), (140469726337/1000000000000 : ℚ)⟩,
  ⟨(4017869/20094596 : ℚ), (1/5 : ℚ), (-7849090693/10000000000 : ℚ), (140871513237/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2150909307/10000000000 : ℚ), (-1/5 : ℚ), (183889699377/1000000000000 : ℚ)⟩,
  ⟨(2150909307/10000000000 : ℚ), (2171003903/10000000000 : ℚ), (-4017869/20094596 : ℚ), (230935208065427847/1255912250000000000 : ℚ)⟩,
  ⟨(2171003903/10000000000 : ℚ), (583350297/2500000000 : ℚ), (-809869523/4059932125 : ℚ), (29844821763236788121/162397285000000000000 : ℚ)⟩,
  ⟨(583350297/2500000000 : ℚ), (1333713931/5000000000 : ℚ), (-6621863343/33402667400 : ℚ), (30645013592400769307/167013337000000000000 : ℚ)⟩,
  ⟨(1333713931/5000000000 : ℚ), (638795947/2000000000 : ℚ), (-10332916793/52655187300 : ℚ), (24083599962257227003/131637968250000000000 : ℚ)⟩,
  ⟨(638795947/2000000000 : ℚ), (123471127/312500000 : ℚ), (-1221048693/6309136075 : ℚ), (45953390914921102707/252365443000000000000 : ℚ)⟩,
  ⟨(123471127/312500000 : ℚ), (5003903859/10000000000 : ℚ), (-20029459921/105282779500 : ℚ), (190340627514035857379/1052827795000000000000 : ℚ)⟩,
  ⟨(5003903859/10000000000 : ℚ), (6462924091/10000000000 : ℚ), (-3401106329/18237752900 : ℚ), (32629126228977395899/182377529000000000000 : ℚ)⟩,
  ⟨(6462924091/10000000000 : ℚ), (2129436563/2500000000 : ℚ), (-1338638374/7338650575 : ℚ), (3234039504062556041/18346626437500000000 : ℚ)⟩,
  ⟨(2129436563/2500000000 : ℚ), (5752295841/5000000000 : ℚ), (-6652010037/37335567875 : ℚ), (277863253651536897/1609291718750000000 : ℚ)⟩,
  ⟨(5752295841/5000000000 : ℚ), (16051799793/10000000000 : ℚ), (-6590694114/37893400925 : ℚ), (31789302733850414307/189467004625000000000 : ℚ)⟩,
  ⟨(16051799793/10000000000 : ℚ), (5856670263/2500000000 : ℚ), (-62631158837/368744062950 : ℚ), (198185209167127823903/1229146876500000000000 : ℚ)⟩,
  ⟨(5856670263/2500000000 : ℚ), (36477902359/10000000000 : ℚ), (-21677199851/130512213070 : ℚ), (198949385782514849153/1305122130700000000000 : ℚ)⟩,
  ⟨(36477902359/10000000000 : ℚ), (15676377189/2500000000 : ℚ), (-426989533507/2622760639700 : ℚ), (3683140867109631612253/26227606397000000000000 : ℚ)⟩,
  ⟨(15676377189/2500000000 : ℚ), (127417544019/10000000000 : ℚ), (-345349287431/2157067842100 : ℚ), (2663926125832102252709/21570678421000000000000 : ℚ)⟩,
  ⟨(127417544019/10000000000 : ℚ), (32/1 : ℚ), (-3758340355713/23772421185500 : ℚ), (23286363717243171388147/237724211855000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (595702526919/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(156719164959/1000000000000 : ℚ), (104672277403/312500000 : ℚ), (-52648162561869/1000000000000 : ℚ), 12⟩,
    ⟨(6301951479/40000000000 : ℚ), (177570877937/5000000000 : ℚ), (-5674813778593/1000000000000 : ℚ), 9⟩,
    ⟨(79588074549/500000000000 : ℚ), (117417544019/10000000000 : ℚ), (-11977958893/6250000000 : ℚ), 7⟩,
    ⟨(32307742543/200000000000 : ℚ), (13176377189/2500000000 : ℚ), (-880425560587/1000000000000 : ℚ), 6⟩,
    ⟨(164545685831/1000000000000 : ℚ), (26477902359/10000000000 : ℚ), (-11335900677/25000000000 : ℚ), 6⟩,
    ⟨(33616302431/200000000000 : ℚ), (3356670263/2500000000 : ℚ), (-23666402857/100000000000 : ℚ), 5⟩,
    ⟨(21501288983/125000000000 : ℚ), (6051799793/10000000000 : ℚ), (-6962606931/62500000000 : ℚ), 5⟩,
    ⟨(17618110339/100000000000 : ℚ), (752295841/5000000000 : ℚ), (-4039172691/125000000000 : ℚ), 5⟩,
    ⟨(11277100347/62500000000 : ℚ), (-370563437/2500000000 : ℚ), (1306418673/62500000000 : ℚ), 4⟩,
    ⟨(184604397077/1000000000000 : ℚ), (-3537075909/10000000000 : ℚ), (1459614331/25000000000 : ℚ), 4⟩,
    ⟨(94266598393/500000000000 : ℚ), (-4996096141/10000000000 : ℚ), (20896832/244140625 : ℚ), 4⟩,
    ⟨(19206902311/100000000000 : ℚ), (-189028873/312500000 : ℚ), (105622883793/1000000000000 : ℚ), 4⟩,
    ⟨(97537998113/500000000000 : ℚ), (-1361204053/2000000000 : ℚ), (120275468109/1000000000000 : ℚ), 4⟩,
    ⟨(197438559843/1000000000000 : ℚ), (-3666286069/5000000000 : ℚ), (65304192451/500000000000 : ℚ), 4⟩,
    ⟨(99532960983/500000000000 : ℚ), (-1916649703/2500000000 : ℚ), (27446049649/200000000000 : ℚ), 4⟩,
    ⟨(199895543983/1000000000000 : ℚ), (-7828996097/10000000000 : ℚ), (140469726337/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7849090693/10000000000 : ℚ), (140871513237/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control820.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control820.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate820
