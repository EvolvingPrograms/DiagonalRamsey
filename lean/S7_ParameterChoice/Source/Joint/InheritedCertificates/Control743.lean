import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate743
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (982826851187/8167135948036 : ℚ), (142745042863/312500000 : ℚ), (-27532931340237/500000000000 : ℚ)⟩,
  ⟨(982826851187/8167135948036 : ℚ), (786376443421/6489248297340 : ℚ), (242136698799/5000000000 : ℚ), (-1481130030281/250000000000 : ℚ)⟩,
  ⟨(786376443421/6489248297340 : ℚ), (54199360224/442226401435 : ℚ), (159810982731/10000000000 : ℚ), (-1992637904019/1000000000000 : ℚ)⟩,
  ⟨(54199360224/442226401435 : ℚ), (223427113923/1795785680200 : ℚ), (17841425611/2500000000 : ℚ), (-908650699539/1000000000000 : ℚ)⟩,
  ⟨(223427113923/1795785680200 : ℚ), (113482265699/895807830150 : ℚ), (886249721/250000000 : ℚ), (-461796471693/1000000000000 : ℚ)⟩,
  ⟨(113482265699/895807830150 : ℚ), (65627477583/507696110500 : ℚ), (17533832237/10000000000 : ℚ), (-46966388059/200000000000 : ℚ)⟩,
  ⟨(65627477583/507696110500 : ℚ), (82965839741/628198205200 : ℚ), (7379910027/10000000000 : ℚ), (-103576985129/1000000000000 : ℚ)⟩,
  ⟨(82965839741/628198205200 : ℚ), (55906917603/414167406100 : ℚ), (43917119/400000000 : ℚ), (-5152786347/250000000000 : ℚ)⟩,
  ⟨(55906917603/414167406100 : ℚ), (7888962971/57206568200 : ℚ), (-1521873043/5000000000 : ℚ), (7059154443/200000000000 : ℚ)⟩,
  ⟨(7888962971/57206568200 : ℚ), (28686616653/203874135500 : ℚ), (-23062791/39062500 : ℚ), (7474058707/100000000000 : ℚ)⟩,
  ⟨(28686616653/203874135500 : ℚ), (5288929716/36910318625 : ℚ), (-7942815851/10000000000 : ℚ), (103427203723/1000000000000 : ℚ)⟩,
  ⟨(5288929716/36910318625 : ℚ), (3875510964/26625687425 : ℚ), (-2354807149/2500000000 : ℚ), (124582922587/1000000000000 : ℚ)⟩,
  ⟨(3875510964/26625687425 : ℚ), (5473459663/37130201900 : ℚ), (-10484256093/10000000000 : ℚ), (140084966443/1000000000000 : ℚ)⟩,
  ⟨(5473459663/37130201900 : ℚ), (2340821831/15732158700 : ℚ), (-11226860131/10000000000 : ℚ), (151031885769/1000000000000 : ℚ)⟩,
  ⟨(2340821831/15732158700 : ℚ), (859396673/5743039350 : ℚ), (-2924706223/2500000000 : ℚ), (79027175631/500000000000 : ℚ)⟩,
  ⟨(859396673/5743039350 : ℚ), (14215261/94791120 : ℚ), (-5964273233/5000000000 : ℚ), (80745968977/500000000000 : ℚ)⟩,
  ⟨(14215261/94791120 : ℚ), (3/20 : ℚ), (-5978491901/5000000000 : ℚ), (20239799473/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1521508099/7500000000 : ℚ), (-9/40 : ℚ), (103781819377/500000000000 : ℚ)⟩,
  ⟨(1521508099/7500000000 : ℚ), (1535726767/7500000000 : ℚ), (-14215261/63194080 : ℚ), (491853825828710147/2369778000000000000 : ℚ)⟩,
  ⟨(1535726767/7500000000 : ℚ), (825293777/3750000000 : ℚ), (-859396673/3828692900 : ℚ), (11914142492169497281/57430393500000000000 : ℚ)⟩,
  ⟨(825293777/3750000000 : ℚ), (3773139869/15000000000 : ℚ), (-2340821831/10488105800 : ℚ), (16296412066776737771/78660793500000000000 : ℚ)⟩,
  ⟨(3773139869/15000000000 : ℚ), (1505247969/5000000000 : ℚ), (-16420378989/74260403800 : ℚ), (38365286497617835879/185651009500000000000 : ℚ)⟩,
  ⟨(1505247969/5000000000 : ℚ), (1395192851/3750000000 : ℚ), (-5813266446/26625687425 : ℚ), (219197601266896068563/1065027497000000000000 : ℚ)⟩,
  ⟨(1395192851/3750000000 : ℚ), (7057184149/15000000000 : ℚ), (-7933394574/36910318625 : ℚ), (302001045584069736371/1476412745000000000000 : ℚ)⟩,
  ⟨(7057184149/15000000000 : ℚ), (11843653/19531250 : ℚ), (-86059849959/407748271000 : ℚ), (206654026897040548981/1019370677500000000000 : ℚ)⟩,
  ⟨(11843653/19531250 : ℚ), (5978126957/7500000000 : ℚ), (-23666888913/114413136400 : ℚ), (28628486100827611031/143016420500000000000 : ℚ)⟩,
  ⟨(5978126957/7500000000 : ℚ), (643917119/600000000 : ℚ), (-167720752809/828334812200 : ℚ), (814620886656374263257/4141674061000000000000 : ℚ)⟩,
  ⟨(643917119/600000000 : ℚ), (7459970009/5000000000 : ℚ), (-248897519223/1256396410400 : ℚ), (1206099267137432078299/6281982052000000000000 : ℚ)⟩,
  ⟨(7459970009/5000000000 : ℚ), (32533832237/15000000000 : ℚ), (-196882432749/1015392221000 : ℚ), (235720179683350754299/1269240276250000000000 : ℚ)⟩,
  ⟨(32533832237/15000000000 : ℚ), (1261249721/375000000 : ℚ), (-113482265699/597205220100 : ℚ), (3176740170540285059441/17916156603000000000000 : ℚ)⟩,
  ⟨(1261249721/375000000 : ℚ), (21591425611/3750000000 : ℚ), (-670281341769/3591571360400 : ℚ), (1489510246818509056767/8978928401000000000000 : ℚ)⟩,
  ⟨(21591425611/3750000000 : ℚ), (58270327577/5000000000 : ℚ), (-81299040336/442226401435 : ℚ), (1893350078788226723061/12635040041000000000000 : ℚ)⟩,
  ⟨(58270327577/5000000000 : ℚ), (32/1 : ℚ), (-786376443421/4326165531560 : ℚ), (6800014676857673860547/54077069144500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (547161234021/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(120233989647/1000000000000 : ℚ), (142745042863/312500000 : ℚ), (-27532931340237/500000000000 : ℚ), 12⟩,
    ⟨(120804554829/1000000000000 : ℚ), (242136698799/5000000000 : ℚ), (-1481130030281/250000000000 : ℚ), 8⟩,
    ⟨(121923758693/1000000000000 : ℚ), (159810982731/10000000000 : ℚ), (-1992637904019/1000000000000 : ℚ), 7⟩,
    ⟨(61774295431/500000000000 : ℚ), (17841425611/2500000000 : ℚ), (-908650699539/1000000000000 : ℚ), 6⟩,
    ⟨(125616609947/1000000000000 : ℚ), (886249721/250000000 : ℚ), (-461796471693/1000000000000 : ℚ), 6⟩,
    ⟨(25609668627/200000000000 : ℚ), (17533832237/10000000000 : ℚ), (-46966388059/200000000000 : ℚ), 5⟩,
    ⟨(65375170141/500000000000 : ℚ), (7379910027/10000000000 : ℚ), (-103576985129/1000000000000 : ℚ), 5⟩,
    ⟨(26723753031/200000000000 : ℚ), (43917119/400000000 : ℚ), (-5152786347/250000000000 : ℚ), 4⟩,
    ⟨(2133490403/15625000000 : ℚ), (-1521873043/5000000000 : ℚ), (7059154443/200000000000 : ℚ), 4⟩,
    ⟨(27882362133/200000000000 : ℚ), (-23062791/39062500 : ℚ), (7474058707/100000000000 : ℚ), 4⟩,
    ⟨(35528451953/250000000000 : ℚ), (-7942815851/10000000000 : ℚ), (103427203723/1000000000000 : ℚ), 4⟩,
    ⟨(144545541/1000000000 : ℚ), (-2354807149/2500000000 : ℚ), (124582922587/1000000000000 : ℚ), 4⟩,
    ⟨(29322712017/200000000000 : ℚ), (-10484256093/10000000000 : ℚ), (140084966443/1000000000000 : ℚ), 4⟩,
    ⟨(29647678451/200000000000 : ℚ), (-11226860131/10000000000 : ℚ), (151031885769/1000000000000 : ℚ), 4⟩,
    ⟨(149357596119/1000000000000 : ℚ), (-2924706223/2500000000 : ℚ), (79027175631/500000000000 : ℚ), 4⟩,
    ⟨(149928161301/1000000000000 : ℚ), (-5964273233/5000000000 : ℚ), (80745968977/500000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-5978491901/5000000000 : ℚ), (20239799473/125000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control743.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control743.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate743
