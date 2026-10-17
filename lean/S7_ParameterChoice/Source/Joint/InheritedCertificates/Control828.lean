import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate828
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (3893921263139/30953555614500 : ℚ), (40948869007/400000000 : ℚ), (-12918546423687/1000000000000 : ℚ)⟩,
  ⟨(3893921263139/30953555614500 : ℚ), (234065044012/1821890716725 : ℚ), (4755752837/500000000 : ℚ), (-123678263427/100000000000 : ℚ)⟩,
  ⟨(234065044012/1821890716725 : ℚ), (43303473061/326777773950 : ℚ), (22239428071/10000000000 : ℚ), (-150261229111/500000000000 : ℚ)⟩,
  ⟨(43303473061/326777773950 : ℚ), (108303321417/788829196900 : ℚ), (1316380817/5000000000 : ℚ), (-2543851241/62500000000 : ℚ)⟩,
  ⟨(108303321417/788829196900 : ℚ), (13731966413/96651376925 : ℚ), (-1051106067/2000000000 : ℚ), (67601701561/1000000000000 : ℚ)⟩,
  ⟨(13731966413/96651376925 : ℚ), (29492597677/201834244000 : ℚ), (-2280396353/2500000000 : ℚ), (122529567213/1000000000000 : ℚ)⟩,
  ⟨(29492597677/201834244000 : ℚ), (1665368551/11190658225 : ℚ), (-2784981963/2500000000 : ℚ), (15202216489/100000000000 : ℚ)⟩,
  ⟨(1665368551/11190658225 : ℚ), (1613034319/10762124600 : ℚ), (-1203518051/1000000000 : ℚ), (82672556649/500000000000 : ℚ)⟩,
  ⟨(1613034319/10762124600 : ℚ), (3/20 : ℚ), (-3035700439/2500000000 : ℚ), (166958147617/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (714299561/3750000000 : ℚ), (-9/40 : ℚ), (209816121277/1000000000000 : ℚ)⟩,
  ⟨(714299561/3750000000 : ℚ), (296481949/1500000000 : ℚ), (-4839102957/21524249200 : ℚ), (11288501350076003309/53810623000000000000 : ℚ)⟩,
  ⟨(296481949/1500000000 : ℚ), (321672679/1250000000 : ℚ), (-4996105653/22381316450 : ℚ), (46881447317912129501/223813164500000000000 : ℚ)⟩,
  ⟨(321672679/1250000000 : ℚ), (1469603647/3750000000 : ℚ), (-88477793031/403668488000 : ℚ), (105169085520830532949/504585610000000000000 : ℚ)⟩,
  ⟨(1469603647/3750000000 : ℚ), (649631311/1000000000 : ℚ), (-41195899239/193302753850 : ℚ), (796594822142852321777/3866055077000000000000 : ℚ)⟩,
  ⟨(649631311/1000000000 : ℚ), (8816380817/7500000000 : ℚ), (-324909964251/1577658393800 : ℚ), (794310194840536189457/3944145984500000000000 : ℚ)⟩,
  ⟨(8816380817/7500000000 : ℚ), (37239428071/15000000000 : ℚ), (-43303473061/217851849300 : ℚ), (315277985540962673081/1633888869750000000000 : ℚ)⟩,
  ⟨(37239428071/15000000000 : ℚ), (5505752837/750000000 : ℚ), (-117032522006/607296905575 : ℚ), (1296503040959975507689/7287562866900000000000 : ℚ)⟩,
  ⟨(5505752837/750000000 : ℚ), (32/1 : ℚ), (-3893921263139/20635703743000 : ℚ), (4595116030240086941771/30953555614500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (304919389419/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(25090907081/200000000000 : ℚ), (40948869007/400000000 : ℚ), (-12918546423687/1000000000000 : ℚ), 10⟩,
    ⟨(63652411503/500000000000 : ℚ), (4755752837/500000000 : ℚ), (-123678263427/100000000000 : ℚ), 7⟩,
    ⟨(65361854347/500000000000 : ℚ), (22239428071/10000000000 : ℚ), (-150261229111/500000000000 : ℚ), 6⟩,
    ⟨(27038139623/200000000000 : ℚ), (1316380817/5000000000 : ℚ), (-2543851241/62500000000 : ℚ), 5⟩,
    ⟨(140025732623/1000000000000 : ℚ), (-1051106067/2000000000 : ℚ), (67601701561/1000000000000 : ℚ), 5⟩,
    ⟨(36123180511/250000000000 : ℚ), (-2280396353/2500000000 : ℚ), (122529567213/1000000000000 : ℚ), 5⟩,
    ⟨(36977901933/250000000000 : ℚ), (-2784981963/2500000000 : ℚ), (15202216489/100000000000 : ℚ), 5⟩,
    ⟨(149761895333/1000000000000 : ℚ), (-1203518051/1000000000 : ℚ), (82672556649/500000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3035700439/2500000000 : ℚ), (166958147617/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control828.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control828.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate828
