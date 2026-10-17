import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate496
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(251845149061/500000000000 : ℚ), (74549544359589/10000000000 : ℚ), (-3756594815630353/1000000000000 : ℚ), 14⟩,
    ⟨(503926726141/1000000000000 : ℚ), (8250215065331/10000000000 : ℚ), (-208436746314009/500000000000 : ℚ), 11⟩,
    ⟨(252199506301/500000000000 : ℚ), (2949967758241/10000000000 : ℚ), (-935599279271/6250000000 : ℚ), 9⟩,
    ⟨(505106019727/1000000000000 : ℚ), (745701559267/5000000000 : ℚ), (-4755365817073/62500000000 : ℚ), 8⟩,
    ⟨(506046044273/1000000000000 : ℚ), (446075751751/5000000000 : ℚ), (-2862112561813/62500000000 : ℚ), 8⟩,
    ⟨(12680420541/25000000000 : ℚ), (294723248147/5000000000 : ℚ), (-15230083384837/500000000000 : ℚ), 7⟩,
    ⟨(12715388283/25000000000 : ℚ), (41579005571/1000000000 : ℚ), (-2164121861407/100000000000 : ℚ), 7⟩,
    ⟨(255119401851/500000000000 : ℚ), (153581635347/5000000000 : ℚ), (-1006769394567/62500000000 : ℚ), 6⟩,
    ⟨(256041364089/500000000000 : ℚ), (58704015783/2500000000 : ℚ), (-12410757185927/1000000000000 : ℚ), 6⟩,
    ⟨(257071431287/500000000000 : ℚ), (184284275671/10000000000 : ℚ), (-9818289045189/1000000000000 : ℚ), 6⟩,
    ⟨(258207121923/500000000000 : ℚ), (147648013423/10000000000 : ℚ), (-7930775745181/1000000000000 : ℚ), 5⟩,
    ⟨(129722850009/250000000000 : ℚ), (120276184353/10000000000 : ℚ), (-26056273477/4000000000 : ℚ), 5⟩,
    ⟨(521568363459/1000000000000 : ℚ), (1986293727/200000000 : ℚ), (-5423742304043/1000000000000 : ℚ), 5⟩,
    ⟨(131109671269/250000000000 : ℚ), (10365905097/1250000000 : ℚ), (-4566791735771/1000000000000 : ℚ), 5⟩,
    ⟨(52749545003/100000000000 : ℚ), (69889254019/10000000000 : ℚ), (-194056480419/50000000000 : ℚ), 4⟩,
    ⟨(265365647153/500000000000 : ℚ), (59358852319/10000000000 : ℚ), (-3324025967367/1000000000000 : ℚ), 4⟩,
    ⟨(534138422473/1000000000000 : ℚ), (10148395149/2000000000 : ℚ), (-2865292966671/1000000000000 : ℚ), 4⟩,
    ⟨(26885431323/50000000000 : ℚ), (8721967501/2000000000 : ℚ), (-2483113304763/1000000000000 : ℚ), 4⟩,
    ⟨(541433305333/1000000000000 : ℚ), (18823374351/5000000000 : ℚ), (-2161402038889/1000000000000 : ℚ), 4⟩,
    ⟨(272651743007/500000000000 : ℚ), (4077023087/1250000000 : ℚ), (-377617977011/200000000000 : ℚ), 4⟩,
    ⟨(549309844899/1000000000000 : ℚ), (14169077171/5000000000 : ℚ), (-1653977707381/1000000000000 : ℚ), 4⟩,
    ⟨(6918034129/12500000000 : ℚ), (12336883459/5000000000 : ℚ), (-1451954887261/1000000000000 : ℚ), 3⟩,
    ⟨(8713940403/15625000000 : ℚ), (21514495561/10000000000 : ℚ), (-638227613687/500000000000 : ℚ), 3⟩,
    ⟨(112409594801/200000000000 : ℚ), (3754914549/2000000000 : ℚ), (-1123071334131/1000000000000 : ℚ), 3⟩,
    ⟨(141624900371/250000000000 : ℚ), (3277103203/2000000000 : ℚ), (-247069210031/250000000000 : ℚ), 3⟩,
    ⟨(571036343869/1000000000000 : ℚ), (1786516081/1250000000 : ℚ), (-217305832049/250000000000 : ℚ), 3⟩,
    ⟨(575647271749/1000000000000 : ℚ), (1556192279/1250000000 : ℚ), (-763589850309/1000000000000 : ℚ), 3⟩,
    ⟨(145080319249/250000000000 : ℚ), (10820976557/10000000000 : ℚ), (-669470031193/1000000000000 : ℚ), 3⟩,
    ⟨(585047099521/1000000000000 : ℚ), (9376096247/10000000000 : ℚ), (-36580400001/62500000000 : ℚ), 3⟩,
    ⟨(117962670881/200000000000 : ℚ), (8089680907/10000000000 : ℚ), (-254862347537/500000000000 : ℚ), 3⟩,
    ⟨(594608559321/1000000000000 : ℚ), (3470323589/5000000000 : ℚ), (-44168299423/100000000000 : ℚ), 3⟩,
    ⟨(599421162201/1000000000000 : ℚ), (5911265641/10000000000 : ℚ), (-380231966297/1000000000000 : ℚ), 3⟩,
    ⟨(604239569063/1000000000000 : ℚ), (4986547471/10000000000 : ℚ), (-8114588773/25000000000 : ℚ), 3⟩,
    ⟨(609052171943/1000000000000 : ℚ), (830751557/2000000000 : ℚ), (-274066084507/1000000000000 : ℚ), 3⟩,
    ⟨(613847376859/1000000000000 : ℚ), (3402026699/10000000000 : ℚ), (-228104401671/1000000000000 : ℚ), 3⟩,
    ⟨(309306815871/500000000000 : ℚ), (1361018171/5000000000 : ℚ), (-46550951659/250000000000 : ℚ), 3⟩,
    ⟨(155834863567/250000000000 : ℚ), (131610461/625000000 : ℚ), (-147937078453/1000000000000 : ℚ), 3⟩,
    ⟨(314006729757/500000000000 : ℚ), (1546292479/10000000000 : ℚ), (-112933872669/1000000000000 : ℚ), 3⟩,
    ⟨(126524877479/200000000000 : ℚ), (32425223/312500000 : ℚ), (-80872028119/1000000000000 : ℚ), 3⟩,
    ⟨(637161129779/1000000000000 : ℚ), (71811283/1250000000 : ℚ), (-51470398247/1000000000000 : ℚ), 2⟩,
    ⟨(320806378629/500000000000 : ℚ), (30477767/2000000000 : ℚ), (-24482909873/1000000000000 : ℚ), 2⟩,
    ⟨(10093258523/15625000000 : ℚ), (-58169523/2500000000 : ℚ), (306385417/1000000000000 : ℚ), 2⟩,
    ⟨(40638625059/62500000000 : ℚ), (-584199529/10000000000 : ℚ), (23087448751/1000000000000 : ℚ), 2⟩,
    ⟨(163587721591/250000000000 : ℚ), (-113154977/1250000000 : ℚ), (22013865627/500000000000 : ℚ), 2⟩,
    ⟨(658357245249/1000000000000 : ℚ), (-37452977/312500000 : ℚ), (63275106737/1000000000000 : ℚ), 2⟩,
    ⟨(662227425931/1000000000000 : ℚ), (-1466342031/10000000000 : ℚ), (80960353771/1000000000000 : ℚ), 2⟩,
    ⟨(166488026201/250000000000 : ℚ), (-855438371/5000000000 : ℚ), (97199265851/1000000000000 : ℚ), 2⟩,
    ⟨(669522308791/1000000000000 : ℚ), (-483487763/2500000000 : ℚ), (112094449693/1000000000000 : ℚ), 2⟩,
    ⟨(672929436957/1000000000000 : ℚ), (-1068600577/5000000000 : ℚ), (31434216053/250000000000 : ℚ), 2⟩,
    ⟨(338082640617/500000000000 : ℚ), (-290259129/1250000000 : ℚ), (27641428063/200000000000 : ℚ), 2⟩,
    ⟨(679222046187/1000000000000 : ℚ), (-1244922063/5000000000 : ℚ), (149576716039/1000000000000 : ℚ), 2⟩,
    ⟨(170523091951/250000000000 : ℚ), (-1320820981/5000000000 : ℚ), (159908815819/1000000000000 : ℚ), 2⟩,
    ⟨(684769331227/1000000000000 : ℚ), (-2778460187/10000000000 : ℚ), (21157411953/125000000000 : ℚ), 2⟩,
    ⟨(687246487417/1000000000000 : ℚ), (-1450586197/5000000000 : ℚ), (177677374633/1000000000000 : ℚ), 2⟩,
    ⟨(689517868689/1000000000000 : ℚ), (-3010544033/10000000000 : ℚ), (92603133801/500000000000 : ℚ), 2⟩,
    ⟨(138315600617/200000000000 : ℚ), (-310724267/1000000000 : ℚ), (95941865957/500000000000 : ℚ), 2⟩,
    ⟨(346710963781/500000000000 : ℚ), (-398980851/1250000000 : ℚ), (197742540459/1000000000000 : ℚ), 2⟩,
    ⟨(695045199943/1000000000000 : ℚ), (-1632426711/5000000000 : ℚ), (202810886231/1000000000000 : ℚ), 2⟩,
    ⟨(87055488703/125000000000 : ℚ), (-1663342191/5000000000 : ℚ), (103556365077/500000000000 : ℚ), 2⟩,
    ⟨(69761468699/100000000000 : ℚ), (-1688845923/5000000000 : ℚ), (210668093247/1000000000000 : ℚ), 2⟩,
    ⟨(43659669471/62500000000 : ℚ), (-1709081371/5000000000 : ℚ), (213493301269/1000000000000 : ℚ), 2⟩,
    ⟨(699261718661/1000000000000 : ℚ), (-3448322393/10000000000 : ℚ), (215601182621/1000000000000 : ℚ), 2⟩,
    ⟨(699734005123/1000000000000 : ℚ), (-3468337363/10000000000 : ℚ), (108500612541/500000000000 : ℚ), 2⟩,
    ⟨(349985216571/500000000000 : ℚ), (-1739158773/5000000000 : ℚ), (108849845191/500000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-217472737/625000000 : ℚ), (27223365717/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (42137590997/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control496.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control496.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate496
