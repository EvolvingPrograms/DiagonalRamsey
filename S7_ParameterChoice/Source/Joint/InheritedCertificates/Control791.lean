import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate791
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (85021669347219/415078726648900 : ℚ), (928778008911/2000000000 : ℚ), (-95272422098727/1000000000000 : ℚ)⟩,
  ⟨(85021669347219/415078726648900 : ℚ), (425148235003/2062672541475 : ℚ), (246551389033/5000000000 : ℚ), (-2562688187877/250000000000 : ℚ)⟩,
  ⟨(425148235003/2062672541475 : ℚ), (624971826001/3001570958200 : ℚ), (16307517143/1000000000 : ℚ), (-172419049573/50000000000 : ℚ)⟩,
  ⟨(624971826001/3001570958200 : ℚ), (110346216291/522860893700 : ℚ), (18257010671/2500000000 : ℚ), (-1573465513457/1000000000000 : ℚ)⟩,
  ⟨(110346216291/522860893700 : ℚ), (65307812723/304478541450 : ℚ), (291422241/80000000 : ℚ), (-40052099971/50000000000 : ℚ)⟩,
  ⟨(65307812723/304478541450 : ℚ), (37691474687/172560223000 : ℚ), (9079533819/5000000000 : ℚ), (-204597561541/500000000000 : ℚ)⟩,
  ⟨(37691474687/172560223000 : ℚ), (2850594247/12800439162 : ℚ), (3902727129/5000000000 : ℚ), (-2288078437/12500000000 : ℚ)⟩,
  ⟨(2850594247/12800439162 : ℚ), (47840671501/210625340400 : ℚ), (1405234677/10000000000 : ℚ), (-4051656261/100000000000 : ℚ)⟩,
  ⟨(47840671501/210625340400 : ℚ), (448064189/1934831566 : ℚ), (-2807272131/10000000000 : ℚ), (6895597549/125000000000 : ℚ)⟩,
  ⟨(448064189/1934831566 : ℚ), (12162484493/51569085075 : ℚ), (-142737987/250000000 : ℚ), (61187204371/500000000000 : ℚ)⟩,
  ⟨(12162484493/51569085075 : ℚ), (8928872922/37237270775 : ℚ), (-7772282883/10000000000 : ℚ), (85512173357/500000000000 : ℚ)⟩,
  ⟨(8928872922/37237270775 : ℚ), (13032963761/53582647950 : ℚ), (-4630886857/5000000000 : ℚ), (103369919201/500000000000 : ℚ)⟩,
  ⟨(13032963761/53582647950 : ℚ), (9173717397/37282510300 : ℚ), (-10333426673/10000000000 : ℚ), (58201441481/250000000000 : ℚ)⟩,
  ⟨(9173717397/37282510300 : ℚ), (2348555719/9463856760 : ℚ), (-11079076879/10000000000 : ℚ), (125576600359/500000000000 : ℚ)⟩,
  ⟨(2348555719/9463856760 : ℚ), (1913460761/7670597400 : ℚ), (-11552269717/10000000000 : ℚ), (262895979313/1000000000000 : ℚ)⟩,
  ⟨(1913460761/7670597400 : ℚ), (101682209/406817900 : ℚ), (-11782387639/10000000000 : ℚ), (67159090399/250000000000 : ℚ)⟩,
  ⟨(101682209/406817900 : ℚ), (1/4 : ℚ), (-2952716223/2500000000 : ℚ), (269348137059/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (265761259/1250000000 : ℚ), (-3/8 : ℚ), (349076514759/1000000000000 : ℚ)⟩,
  ⟨(265761259/1250000000 : ℚ), (3217612361/15000000000 : ℚ), (-305046627/813635800 : ℚ), (1420034737453439133/4068179000000000000 : ℚ)⟩,
  ⟨(3217612361/15000000000 : ℚ), (3447730283/15000000000 : ℚ), (-1913460761/5113731600 : ℚ), (1070511550596777649/3068238960000000000 : ℚ)⟩,
  ⟨(3447730283/15000000000 : ℚ), (3920923121/15000000000 : ℚ), (-2348555719/6309237840 : ℚ), (164886427918453452679/473192838000000000000 : ℚ)⟩,
  ⟨(3920923121/15000000000 : ℚ), (4666573327/15000000000 : ℚ), (-27521152191/74565020600 : ℚ), (129605658573885259991/372825103000000000000 : ℚ)⟩,
  ⟨(4666573327/15000000000 : ℚ), (2869113143/7500000000 : ℚ), (-13032963761/35721765300 : ℚ), (2854811923403049037/8243484300000000000 : ℚ)⟩,
  ⟨(2869113143/7500000000 : ℚ), (2409239039/5000000000 : ℚ), (-13393309383/37237270775 : ℚ), (51288066692369680283/148949083100000000000 : ℚ)⟩,
  ⟨(2409239039/5000000000 : ℚ), (77420671/125000000 : ℚ), (-12162484493/34379390050 : ℚ), (117401792140805862411/343793900500000000000 : ℚ)⟩,
  ⟨(77420671/125000000 : ℚ), (4064242623/5000000000 : ℚ), (-1344192567/3869663132 : ℚ), (163261757716504444493/483707891500000000000 : ℚ)⟩,
  ⟨(4064242623/5000000000 : ℚ), (5468411559/5000000000 : ℚ), (-47840671501/140416893600 : ℚ), (77722143907053246193/234028156000000000000 : ℚ)⟩,
  ⟨(5468411559/5000000000 : ℚ), (3800909043/2500000000 : ℚ), (-2850594247/8533626108 : ℚ), (11549547123198448303/35556775450000000000 : ℚ)⟩,
  ⟨(3800909043/2500000000 : ℚ), (5526511273/2500000000 : ℚ), (-113074424061/345120446000 : ℚ), (271853070813387103223/862801115000000000000 : ℚ)⟩,
  ⟨(5526511273/2500000000 : ℚ), (137140747/40000000 : ℚ), (-65307812723/202985694300 : ℚ), (61308989128479204719/202985694300000000000 : ℚ)⟩,
  ⟨(137140747/40000000 : ℚ), (22007010671/3750000000 : ℚ), (-331038648873/1045721787400 : ℚ), (297305118391896039967/1045721787400000000000 : ℚ)⟩,
  ⟨(22007010671/3750000000 : ℚ), (17807517143/1500000000 : ℚ), (-1874915478003/6003141916400 : ℚ), (778636268629562418171/3001570958200000000000 : ℚ)⟩,
  ⟨(17807517143/1500000000 : ℚ), (32/1 : ℚ), (-425148235003/1375115027650 : ℚ), (70454415308190259327/317334237150000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (114325257667/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(204672356231/1000000000000 : ℚ), (928778008911/2000000000 : ℚ), (-95272422098727/1000000000000 : ℚ), 12⟩,
    ⟨(41108242437/200000000000 : ℚ), (246551389033/5000000000 : ℚ), (-2562688187877/250000000000 : ℚ), 9⟩,
    ⟨(41449106889/200000000000 : ℚ), (16307517143/1000000000 : ℚ), (-172419049573/50000000000 : ℚ), 7⟩,
    ⟨(13107489179/62500000000 : ℚ), (18257010671/2500000000 : ℚ), (-1573465513457/1000000000000 : ℚ), 6⟩,
    ⟨(21286900377/100000000000 : ℚ), (291422241/80000000 : ℚ), (-40052099971/50000000000 : ℚ), 6⟩,
    ⟨(216572044063/1000000000000 : ℚ), (9079533819/5000000000 : ℚ), (-204597561541/500000000000 : ℚ), 5⟩,
    ⟨(220686641979/1000000000000 : ℚ), (3902727129/5000000000 : ℚ), (-2288078437/12500000000 : ℚ), 5⟩,
    ⟨(56263668957/250000000000 : ℚ), (1405234677/10000000000 : ℚ), (-4051656261/100000000000 : ℚ), 5⟩,
    ⟨(5737707113/25000000000 : ℚ), (-2807272131/10000000000 : ℚ), (6895597549/125000000000 : ℚ), 4⟩,
    ⟨(233876318369/1000000000000 : ℚ), (-142737987/250000000 : ℚ), (61187204371/500000000000 : ℚ), 4⟩,
    ⟨(118995458143/500000000000 : ℚ), (-7772282883/10000000000 : ℚ), (85512173357/500000000000 : ℚ), 4⟩,
    ⟨(120846978289/500000000000 : ℚ), (-4630886857/5000000000 : ℚ), (103369919201/500000000000 : ℚ), 4⟩,
    ⟨(61210783371/250000000000 : ℚ), (-10333426673/10000000000 : ℚ), (58201441481/250000000000 : ℚ), 4⟩,
    ⟨(247317425903/1000000000000 : ℚ), (-11079076879/10000000000 : ℚ), (125576600359/500000000000 : ℚ), 4⟩,
    ⟨(62255437041/250000000000 : ℚ), (-11552269717/10000000000 : ℚ), (262895979313/1000000000000 : ℚ), 4⟩,
    ⟨(249890604117/1000000000000 : ℚ), (-11782387639/10000000000 : ℚ), (67159090399/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2952716223/2500000000 : ℚ), (269348137059/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control791.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control791.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate791
