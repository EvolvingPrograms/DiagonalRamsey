import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate22
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (9723604256479/247482602826175 : ℚ), (1383753322181/1250000000 : ℚ), (-43578354650989/1000000000000 : ℚ)⟩,
  ⟨(9723604256479/247482602826175 : ℚ), (1037418959779/26201326574900 : ℚ), (1170722464401/10000000000 : ℚ), (-4683937625073/1000000000000 : ℚ)⟩,
  ⟨(1037418959779/26201326574900 : ℚ), (107291998789/2676146507200 : ℚ), (192341333577/5000000000 : ℚ), (-196460093217/125000000000 : ℚ)⟩,
  ⟨(107291998789/2676146507200 : ℚ), (354175312459/8688729039600 : ℚ), (85295473289/5000000000 : ℚ), (-22292023607/31250000000 : ℚ)⟩,
  ⟨(354175312459/8688729039600 : ℚ), (90118353643/2167339874350 : ℚ), (41851828091/5000000000 : ℚ), (-71833888593/200000000000 : ℚ)⟩,
  ⟨(90118353643/2167339874350 : ℚ), (52279244329/1229717306500 : ℚ), (8071371739/2000000000 : ℚ), (-178932735679/1000000000000 : ℚ)⟩,
  ⟨(52279244329/1229717306500 : ℚ), (66379403271/1525055767600 : ℚ), (3152502513/2000000000 : ℚ), (-74374247021/1000000000000 : ℚ)⟩,
  ⟨(66379403271/1525055767600 : ℚ), (44965767709/1008672954100 : ℚ), (511954889/10000000000 : ℚ), (-51167/6400000 : ℚ)⟩,
  ⟨(44965767709/1008672954100 : ℚ), (6380256627/139818751720 : ℚ), (-2393693663/2500000000 : ℚ), (36970923959/1000000000000 : ℚ)⟩,
  ⟨(6380256627/139818751720 : ℚ), (932718061/19996151468 : ℚ), (-8282856119/5000000000 : ℚ), (34436103547/500000000000 : ℚ)⟩,
  ⟨(932718061/19996151468 : ℚ), (8632137659/181432186150 : ℚ), (-4312950021/2000000000 : ℚ), (92190158619/1000000000000 : ℚ)⟩,
  ⟨(8632137659/181432186150 : ℚ), (1268250433/26206145970 : ℚ), (-6298348457/2500000000 : ℚ), (109454433937/1000000000000 : ℚ)⟩,
  ⟨(1268250433/26206145970 : ℚ), (4483337939/91374129850 : ℚ), (-1112560337/400000000 : ℚ), (122136938267/1000000000000 : ℚ)⟩,
  ⟨(4483337939/91374129850 : ℚ), (5753814551/116088936600 : ℚ), (-14820745511/5000000000 : ℚ), (26220722829/200000000000 : ℚ)⟩,
  ⟨(5753814551/116088936600 : ℚ), (2816267383/56471584000 : ℚ), (-7700595097/2500000000 : ℚ), (17107178587/125000000000 : ℚ)⟩,
  ⟨(2816267383/56471584000 : ℚ), (174671587/3494338750 : ℚ), (-7841774057/2500000000 : ℚ), (139673696079/1000000000000 : ℚ)⟩,
  ⟨(174671587/3494338750 : ℚ), (1/20 : ℚ), (-31436983003/10000000000 : ℚ), (140023039253/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8563016997/40000000000 : ℚ), (-1/5 : ℚ), (91419062119/500000000000 : ℚ)⟩,
  ⟨(8563016997/40000000000 : ℚ), (2158225943/10000000000 : ℚ), (-349343174/1747169375 : ℚ), (12777190175838507553/69886775000000000000 : ℚ)⟩,
  ⟨(2158225943/10000000000 : ℚ), (2299404903/10000000000 : ℚ), (-2816267383/14117896000 : ℚ), (25797128480204615009/141178960000000000000 : ℚ)⟩,
  ⟨(2299404903/10000000000 : ℚ), (5179254489/20000000000 : ℚ), (-5753814551/29022234150 : ℚ), (17649810932448185079/96740780500000000000 : ℚ)⟩,
  ⟨(5179254489/20000000000 : ℚ), (487439663/1600000000 : ℚ), (-8966675878/45687064925 : ℚ), (332470965838869567249/1827482597000000000000 : ℚ)⟩,
  ⟨(487439663/1600000000 : ℚ), (3701651543/10000000000 : ℚ), (-2536500866/13103072985 : ℚ), (474622734170669103149/2620614597000000000000 : ℚ)⟩,
  ⟨(3701651543/10000000000 : ℚ), (3687049979/8000000000 : ℚ), (-17264275318/90716093075 : ℚ), (652796470138619290147/3628643723000000000000 : ℚ)⟩,
  ⟨(3687049979/8000000000 : ℚ), (11717143881/20000000000 : ℚ), (-932718061/4999037867 : ℚ), (222683589325997191387/1249759466750000000000 : ℚ)⟩,
  ⟨(11717143881/20000000000 : ℚ), (7606306337/10000000000 : ℚ), (-6380256627/34954687930 : ℚ), (614532575083423964477/3495468793000000000000 : ℚ)⟩,
  ⟨(7606306337/10000000000 : ℚ), (40511954889/40000000000 : ℚ), (-44965767709/252168238525 : ℚ), (248715618049636665793/1440961363000000000000 : ℚ)⟩,
  ⟨(40511954889/40000000000 : ℚ), (11152502513/8000000000 : ℚ), (-66379403271/381263941900 : ℚ), (2567233565153507916919/15250557676000000000000 : ℚ)⟩,
  ⟨(11152502513/8000000000 : ℚ), (16071371739/8000000000 : ℚ), (-52279244329/307429326625 : ℚ), (50015725789706745113/307429326625000000000 : ℚ)⟩,
  ⟨(16071371739/8000000000 : ℚ), (61851828091/20000000000 : ℚ), (-180236707286/1083669937175 : ℚ), (292482372250463761439/1884643369000000000000 : ℚ)⟩,
  ⟨(61851828091/20000000000 : ℚ), (105295473289/20000000000 : ℚ), (-354175312459/2172182259900 : ℚ), (6302760694155521353699/43443645198000000000000 : ℚ)⟩,
  ⟨(105295473289/20000000000 : ℚ), (212341333577/20000000000 : ℚ), (-107291998789/669036626800 : ℚ), (1752286414323690571757/13380732536000000000000 : ℚ)⟩,
  ⟨(212341333577/20000000000 : ℚ), (1210722464401/40000000000 : ℚ), (-1037418959779/6550331643725 : ℚ), (14386322944980451901351/131006632874500000000000 : ℚ)⟩,
  ⟨(1210722464401/40000000000 : ℚ), (32/1 : ℚ), (-38894417025916/247482602826175 : ℚ), (144524287183297342157777/1979860822609400000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (262499/1000000 : ℚ)
  x := (203545250209/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(39252055841/1000000000000 : ℚ), (1383753322181/1250000000 : ℚ), (-43578354650989/1000000000000 : ℚ), 10⟩,
    ⟨(4932259519/125000000000 : ℚ), (1170722464401/10000000000 : ℚ), (-4683937625073/1000000000000 : ℚ), 7⟩,
    ⟨(39862199529/1000000000000 : ℚ), (192341333577/5000000000 : ℚ), (-196460093217/125000000000 : ℚ), 5⟩,
    ⟨(20224447869/500000000000 : ℚ), (85295473289/5000000000 : ℚ), (-22292023607/31250000000 : ℚ), 4⟩,
    ⟨(10298904593/250000000000 : ℚ), (41851828091/5000000000 : ℚ), (-71833888593/200000000000 : ℚ), 4⟩,
    ⟨(42073671299/1000000000000 : ℚ), (8071371739/2000000000 : ℚ), (-178932735679/1000000000000 : ℚ), 3⟩,
    ⟨(43049311437/1000000000000 : ℚ), (3152502513/2000000000 : ℚ), (-74374247021/1000000000000 : ℚ), 3⟩,
    ⟨(44085045483/1000000000000 : ℚ), (511954889/10000000000 : ℚ), (-51167/6400000 : ℚ), 3⟩,
    ⟨(1128526769/25000000000 : ℚ), (-2393693663/2500000000 : ℚ), (36970923959/1000000000000 : ℚ), 3⟩,
    ⟨(23088402403/500000000000 : ℚ), (-8282856119/5000000000 : ℚ), (34436103547/500000000000 : ℚ), 2⟩,
    ⟨(9430488989/200000000000 : ℚ), (-4312950021/2000000000 : ℚ), (92190158619/1000000000000 : ℚ), 2⟩,
    ⟨(48030497871/1000000000000 : ℚ), (-6298348457/2500000000 : ℚ), (109454433937/1000000000000 : ℚ), 2⟩,
    ⟨(9755444101/200000000000 : ℚ), (-1112560337/400000000 : ℚ), (122136938267/1000000000000 : ℚ), 2⟩,
    ⟨(24681958357/500000000000 : ℚ), (-14820745511/5000000000 : ℚ), (26220722829/200000000000 : ℚ), 2⟩,
    ⟨(49768040091/1000000000000 : ℚ), (-7700595097/2500000000 : ℚ), (17107178587/125000000000 : ℚ), 2⟩,
    ⟨(24987030201/500000000000 : ℚ), (-7841774057/2500000000 : ℚ), (139673696079/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31436983003/10000000000 : ℚ), (140023039253/1000000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control22.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control22.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate22
