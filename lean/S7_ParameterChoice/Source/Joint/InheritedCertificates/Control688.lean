import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate688
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (54960400324439/230471393067650 : ℚ), (5157005686729/10000000000 : ℚ), (-24641563898903/200000000000 : ℚ)⟩,
  ⟨(54960400324439/230471393067650 : ℚ), (8794444599761/36610483170400 : ℚ), (17111807043/312500000 : ℚ), (-13287018845637/1000000000000 : ℚ)⟩,
  ⟨(8794444599761/36610483170400 : ℚ), (2423926036131/9971860561700 : ℚ), (22684124209/1250000000 : ℚ), (-1123143561469/250000000000 : ℚ)⟩,
  ⟨(2423926036131/9971860561700 : ℚ), (49926792657/202190783635 : ℚ), (16350877611/2000000000 : ℚ), (-413729641949/200000000000 : ℚ)⟩,
  ⟨(49926792657/202190783635 : ℚ), (253237948637/1006409089300 : ℚ), (1291132229/312500000 : ℚ), (-214022471321/200000000000 : ℚ)⟩,
  ⟨(253237948637/1006409089300 : ℚ), (7305499164/28427767465 : ℚ), (10594024771/5000000000 : ℚ), (-563636459331/1000000000000 : ℚ)⟩,
  ⟨(7305499164/28427767465 : ℚ), (46019409409/175111057050 : ℚ), (2454235639/2500000000 : ℚ), (-271416492771/1000000000000 : ℚ)⟩,
  ⟨(46019409409/175111057050 : ℚ), (61737048257/229632600750 : ℚ), (1406250137/5000000000 : ℚ), (-17467771027/200000000000 : ℚ)⟩,
  ⟨(61737048257/229632600750 : ℚ), (86632266153/315138801200 : ℚ), (-1780151741/10000000000 : ℚ), (36135241379/1000000000000 : ℚ)⟩,
  ⟨(86632266153/315138801200 : ℚ), (62614059691/223048408700 : ℚ), (-4931539753/10000000000 : ℚ), (30691876883/250000000000 : ℚ)⟩,
  ⟨(62614059691/223048408700 : ℚ), (6554802299/22912464100 : ℚ), (-44762649/62500000 : ℚ), (185381567223/1000000000000 : ℚ)⟩,
  ⟨(6554802299/22912464100 : ℚ), (16710543827/57468496400 : ℚ), (-8765896327/10000000000 : ℚ), (57816295829/250000000000 : ℚ)⟩,
  ⟨(16710543827/57468496400 : ℚ), (978333376/3320536525 : ℚ), (-1983053251/2000000000 : ℚ), (26468627097/100000000000 : ℚ)⟩,
  ⟨(978333376/3320536525 : ℚ), (15003889547/50434311700 : ℚ), (-10712195021/10000000000 : ℚ), (144083135997/500000000000 : ℚ)⟩,
  ⟨(15003889547/50434311700 : ℚ), (3663406481/12241714400 : ℚ), (-5608269069/5000000000 : ℚ), (303170161541/1000000000000 : ℚ)⟩,
  ⟨(3663406481/12241714400 : ℚ), (28378277/94617775 : ℚ), (-5730686213/5000000000 : ℚ), (310496974503/1000000000000 : ℚ)⟩,
  ⟨(28378277/94617775 : ℚ), (3/10 : ℚ), (-5745825057/5000000000 : ℚ), (311405079367/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (584724981/2500000000 : ℚ), (-9/20 : ℚ), (416655575947/1000000000000 : ℚ)⟩,
  ⟨(584724981/2500000000 : ℚ), (1769313787/7500000000 : ℚ), (-85134831/189235550 : ℚ), (12614575430779709/30277688000000000 : ℚ)⟩,
  ⟨(1769313787/7500000000 : ℚ), (630576977/2500000000 : ℚ), (-10990219443/24483428800 : ℚ), (25486792013867493263/61208572000000000000 : ℚ)⟩,
  ⟨(630576977/2500000000 : ℚ), (4287804979/15000000000 : ℚ), (-45011668641/100868623400 : ℚ), (209668428135716419811/504343117000000000000 : ℚ)⟩,
  ⟨(4287804979/15000000000 : ℚ), (1016946749/3000000000 : ℚ), (-1467500064/3320536525 : ℚ), (1101085522802103593/2656429220000000000 : ℚ)⟩,
  ⟨(1016946749/3000000000 : ℚ), (6234103673/15000000000 : ℚ), (-50131631481/114936992800 : ℚ), (6773711034232486777/16419570400000000000 : ℚ)⟩,
  ⟨(6234103673/15000000000 : ℚ), (16329117/31250000 : ℚ), (-19664406897/45824928200 : ℚ), (93851869191062433783/229124641000000000000 : ℚ)⟩,
  ⟨(16329117/31250000 : ℚ), (10068460247/15000000000 : ℚ), (-187842179073/446096817400 : ℚ), (904258142852897246961/2230484087000000000000 : ℚ)⟩,
  ⟨(10068460247/15000000000 : ℚ), (13219848259/15000000000 : ℚ), (-259896798459/630277602400 : ℚ), (50365663174738745047/126055520480000000000 : ℚ)⟩,
  ⟨(13219848259/15000000000 : ℚ), (8906250137/7500000000 : ℚ), (-61737048257/153088400500 : ℚ), (1798265408963976597811/4592652015000000000000 : ℚ)⟩,
  ⟨(8906250137/7500000000 : ℚ), (6204235639/3750000000 : ℚ), (-46019409409/116740704700 : ℚ), (1333561500529727947097/3502221141000000000000 : ℚ)⟩,
  ⟨(6204235639/3750000000 : ℚ), (18094024771/7500000000 : ℚ), (-10958248746/28427767465 : ℚ), (2082850073385912164577/5685553493000000000000 : ℚ)⟩,
  ⟨(18094024771/7500000000 : ℚ), (1759882229/468750000 : ℚ), (-759713845911/2012818178600 : ℚ), (3491698873874325401671/10064090893000000000000 : ℚ)⟩,
  ⟨(1759882229/468750000 : ℚ), (6450292537/1000000000 : ℚ), (-149780377971/404381567270 : ℚ), (2592080980568354307617/8087631345400000000000 : ℚ)⟩,
  ⟨(6450292537/1000000000 : ℚ), (24559124209/1875000000 : ℚ), (-7271778108393/19943721123400 : ℚ), (1412138266428098683877/4985930280850000000000 : ℚ)⟩,
  ⟨(24559124209/1875000000 : ℚ), (32/1 : ℚ), (-26383333799283/73220966340800 : ℚ), (10389714999179978707461/45763103963000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (356209467109/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(238251205147/1000000000000 : ℚ), (5157005686729/10000000000 : ℚ), (-24641563898903/200000000000 : ℚ), 11⟩,
    ⟨(47886965481/200000000000 : ℚ), (17111807043/312500000 : ℚ), (-13287018845637/1000000000000 : ℚ), 8⟩,
    ⟨(12087829299/50000000000 : ℚ), (22684124209/1250000000 : ℚ), (-1123143561469/250000000000 : ℚ), 7⟩,
    ⟨(122563628497/500000000000 : ℚ), (16350877611/2000000000 : ℚ), (-413729641949/200000000000 : ℚ), 6⟩,
    ⟨(249417307449/1000000000000 : ℚ), (1291132229/312500000 : ℚ), (-214022471321/200000000000 : ℚ), 5⟩,
    ⟨(254461873111/1000000000000 : ℚ), (10594024771/5000000000 : ℚ), (-563636459331/1000000000000 : ℚ), 5⟩,
    ⟨(260067094153/1000000000000 : ℚ), (2454235639/2500000000 : ℚ), (-271416492771/1000000000000 : ℚ), 4⟩,
    ⟨(16626097817/62500000000 : ℚ), (1406250137/5000000000 : ℚ), (-17467771027/200000000000 : ℚ), 4⟩,
    ⟨(272084612609/1000000000000 : ℚ), (-1780151741/10000000000 : ℚ), (36135241379/1000000000000 : ℚ), 4⟩,
    ⟨(34754385441/125000000000 : ℚ), (-4931539753/10000000000 : ℚ), (30691876883/250000000000 : ℚ), 4⟩,
    ⟨(283640304569/1000000000000 : ℚ), (-44762649/62500000 : ℚ), (185381567223/1000000000000 : ℚ), 4⟩,
    ⟨(36085608779/125000000000 : ℚ), (-8765896327/10000000000 : ℚ), (57816295829/250000000000 : ℚ), 3⟩,
    ⟨(292974920687/1000000000000 : ℚ), (-1983053251/2000000000 : ℚ), (26468627097/100000000000 : ℚ), 3⟩,
    ⟨(2963455917/10000000000 : ℚ), (-10712195021/10000000000 : ℚ), (144083135997/500000000000 : ℚ), 3⟩,
    ⟨(74666837569/250000000000 : ℚ), (-5608269069/5000000000 : ℚ), (303170161541/1000000000000 : ℚ), 3⟩,
    ⟨(149925486267/500000000000 : ℚ), (-5730686213/5000000000 : ℚ), (310496974503/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5745825057/5000000000 : ℚ), (311405079367/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control688.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control688.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate688
