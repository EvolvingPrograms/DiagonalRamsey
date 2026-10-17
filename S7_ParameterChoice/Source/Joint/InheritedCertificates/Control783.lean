import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate783
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131700544383/200000000000 : ℚ), (20253148540373/10000000000 : ℚ), (-1334711154516511/1000000000000 : ℚ), 13⟩,
    ⟨(32959182969/50000000000 : ℚ), (22277181521/100000000 : ℚ), (-147505681057399/1000000000000 : ℚ), 10⟩,
    ⟨(66053897651/100000000000 : ℚ), (157581732467/2000000000 : ℚ), (-820785474313/15625000000 : ℚ), 8⟩,
    ⟨(662555620861/1000000000000 : ℚ), (392258032869/10000000000 : ℚ), (-13182441902543/500000000000 : ℚ), 7⟩,
    ⟨(665214171043/1000000000000 : ℚ), (230035247683/10000000000 : ℚ), (-3899677489459/250000000000 : ℚ), 7⟩,
    ⟨(668489023767/1000000000000 : ℚ), (148308030839/10000000000 : ℚ), (-5075236961211/500000000000 : ℚ), 6⟩,
    ⟨(67234864041/100000000000 : ℚ), (50789036183/5000000000 : ℚ), (-877323788997/125000000000 : ℚ), 6⟩,
    ⟨(338377925377/500000000000 : ℚ), (72464692497/10000000000 : ℚ), (-1011066905229/200000000000 : ℚ), 5⟩,
    ⟨(136333642191/200000000000 : ℚ), (10633456921/2000000000 : ℚ), (-468126488927/125000000000 : ℚ), 5⟩,
    ⟨(687038412297/1000000000000 : ℚ), (19882090699/5000000000 : ℚ), (-2828020335683/1000000000000 : ℚ), 5⟩,
    ⟨(346407368403/500000000000 : ℚ), (1204392631/400000000 : ℚ), (-2162115186321/1000000000000 : ℚ), 5⟩,
    ⟨(698941555321/1000000000000 : ℚ), (22950737341/10000000000 : ℚ), (-208006767453/125000000000 : ℚ), 4⟩,
    ⟨(176339965807/250000000000 : ℚ), (350304911/200000000 : ℚ), (-641244703907/500000000000 : ℚ), 4⟩,
    ⟨(142401569743/200000000000 : ℚ), (3326851331/2500000000 : ℚ), (-984351073163/1000000000000 : ℚ), 4⟩,
    ⟨(44926343003/62500000000 : ℚ), (999690053/1000000000 : ℚ), (-186890010801/250000000000 : ℚ), 4⟩,
    ⟨(725735162153/1000000000000 : ℚ), (1839242703/2500000000 : ℚ), (-556918582117/1000000000000 : ℚ), 4⟩,
    ⟨(183170572143/250000000000 : ℚ), (2613933723/5000000000 : ℚ), (-401688367421/1000000000000 : ℚ), 4⟩,
    ⟨(739595962677/1000000000000 : ℚ), (698902421/2000000000 : ℚ), (-137054218483/500000000000 : ℚ), 4⟩,
    ⟨(746409602009/1000000000000 : ℚ), (414477847/2000000000 : ℚ), (-168458432707/1000000000000 : ℚ), 3⟩,
    ⟨(753057587497/1000000000000 : ℚ), (28074481/312500000 : ℚ), (-40224813359/500000000000 : ℚ), 3⟩,
    ⟨(189868973851/250000000000 : ℚ), (-37660123/5000000000 : ℚ), (-5327487/781250000 : ℚ), 3⟩,
    ⟨(765602713919/1000000000000 : ℚ), (-885385383/10000000000 : ℚ), (54946072009/1000000000000 : ℚ), 3⟩,
    ⟨(192844759607/250000000000 : ℚ), (-780101227/5000000000 : ℚ), (106801347851/1000000000000 : ℚ), 3⟩,
    ⟨(77674923977/100000000000 : ℚ), (-2121919241/10000000000 : ℚ), (150279215291/1000000000000 : ℚ), 3⟩,
    ⟨(78166159997/100000000000 : ℚ), (-2587896127/10000000000 : ℚ), (46646660683/250000000000 : ℚ), 3⟩,
    ⟨(393034405157/500000000000 : ℚ), (-1485881891/5000000000 : ℚ), (216675576299/1000000000000 : ℚ), 3⟩,
    ⟨(789928426957/1000000000000 : ℚ), (-1642100747/5000000000 : ℚ), (60323737343/250000000000 : ℚ), 3⟩,
    ⟨(793203279681/1000000000000 : ℚ), (-1766757867/5000000000 : ℚ), (261029435313/1000000000000 : ℚ), 3⟩,
    ⟨(99482728733/125000000000 : ℚ), (-3726072797/10000000000 : ℚ), (276328532723/1000000000000 : ℚ), 3⟩,
    ⟨(398939237107/500000000000 : ℚ), (-3866621789/10000000000 : ℚ), (143764192367/500000000000 : ℚ), 3⟩,
    ⟨(49952111959/62500000000 : ℚ), (-98963303/250000000 : ℚ), (73716979483/250000000000 : ℚ), 3⟩,
    ⟨(799914728809/1000000000000 : ℚ), (-250247567/625000000 : ℚ), (59700059453/200000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-2004807639/5000000000 : ℚ), (298952609621/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (148567086271/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control783.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control783.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate783
