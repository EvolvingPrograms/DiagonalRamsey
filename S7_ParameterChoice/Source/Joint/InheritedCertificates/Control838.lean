import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate838
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2075301350037/45355974371050 : ℚ), (498588805613/2500000000 : ℚ), (-9139221297871/1000000000000 : ℚ)⟩,
  ⟨(2075301350037/45355974371050 : ℚ), (665300434429/14392516840200 : ℚ), (18011624761/1000000000 : ℚ), (-838015897723/1000000000000 : ℚ)⟩,
  ⟨(665300434429/14392516840200 : ℚ), (184623220849/3933600207700 : ℚ), (4523884901/1250000000 : ℚ), (-86357731647/500000000000 : ℚ)⟩,
  ⟨(184623220849/3933600207700 : ℚ), (15397669867/322306542380 : ℚ), (-3144922869/10000000000 : ℚ), (2381551511/200000000000 : ℚ)⟩,
  ⟨(15397669867/322306542380 : ℚ), (7822994523/160928098220 : ℚ), (-4815062497/2500000000 : ℚ), (8889610689/100000000000 : ℚ)⟩,
  ⟨(7822994523/160928098220 : ℚ), (21080250017/427410651200 : ℚ), (-27306654899/10000000000 : ℚ), (25602215901/200000000000 : ℚ)⟩,
  ⟨(21080250017/427410651200 : ℚ), (149430178/3001032525 : ℚ), (-31580761411/10000000000 : ℚ), (74545664761/500000000000 : ℚ)⟩,
  ⟨(149430178/3001032525 : ℚ), (116043151/2321834710 : ℚ), (-33501422227/10000000000 : ℚ), (79327430457/500000000000 : ℚ)⟩,
  ⟨(116043151/2321834710 : ℚ), (1/20 : ℚ), (-16866802849/5000000000 : ℚ), (19976911553/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3133197151/20000000000 : ℚ), (-1/5 : ℚ), (95573631967/500000000000 : ℚ)⟩,
  ⟨(3133197151/20000000000 : ℚ), (6498577773/40000000000 : ℚ), (-232086302/1160917355 : ℚ), (11094547679002394931/58045867750000000000 : ℚ)⟩,
  ⟨(6498577773/40000000000 : ℚ), (8419238589/40000000000 : ℚ), (-597720712/3001032525 : ℚ), (764315681585184783/4001376700000000000 : ℚ)⟩,
  ⟨(8419238589/40000000000 : ℚ), (12693345101/40000000000 : ℚ), (-21080250017/106852662800 : ℚ), (814711876801612353277/4274106512000000000000 : ℚ)⟩,
  ⟨(12693345101/40000000000 : ℚ), (5184937503/10000000000 : ℚ), (-7822994523/40232024555 : ℚ), (152652882480980285817/804640491100000000000 : ℚ)⟩,
  ⟨(5184937503/10000000000 : ℚ), (36855077131/40000000000 : ℚ), (-15397669867/80576635595 : ℚ), (302930896118236619193/1611532711900000000000 : ℚ)⟩,
  ⟨(36855077131/40000000000 : ℚ), (9523884901/5000000000 : ℚ), (-184623220849/983400051925 : ℚ), (3636353310239717372977/19668001038500000000000 : ℚ)⟩,
  ⟨(9523884901/5000000000 : ℚ), (22011624761/4000000000 : ℚ), (-665300434429/3598129210050 : ℚ), (6457963989119587404011/35981292100500000000000 : ℚ)⟩,
  ⟨(22011624761/4000000000 : ℚ), (32/1 : ℚ), (-4150602700074/22677987185525 : ℚ), (21919220009583746897251/129588498203000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (10246875813/15625000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(9139072131/200000000000 : ℚ), (498588805613/2500000000 : ℚ), (-9139221297871/1000000000000 : ℚ), 11⟩,
    ⟨(46019853221/1000000000000 : ℚ), (18011624761/1000000000 : ℚ), (-838015897723/1000000000000 : ℚ), 8⟩,
    ⟨(46619437303/1000000000000 : ℚ), (4523884901/1250000000 : ℚ), (-86357731647/500000000000 : ℚ), 7⟩,
    ⟨(47402831659/1000000000000 : ℚ), (-3144922869/10000000000 : ℚ), (2381551511/200000000000 : ℚ), 6⟩,
    ⟨(48250771599/1000000000000 : ℚ), (-4815062497/2500000000 : ℚ), (8889610689/100000000000 : ℚ), 6⟩,
    ⟨(24517082977/500000000000 : ℚ), (-27306654899/10000000000 : ℚ), (25602215901/200000000000 : ℚ), 6⟩,
    ⟨(12408437509/250000000000 : ℚ), (-31580761411/10000000000 : ℚ), (74545664761/500000000000 : ℚ), 5⟩,
    ⟨(49958242603/1000000000000 : ℚ), (-33501422227/10000000000 : ℚ), (79327430457/500000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-16866802849/5000000000 : ℚ), (19976911553/125000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control838.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control838.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate838
