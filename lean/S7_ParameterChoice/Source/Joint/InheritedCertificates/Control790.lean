import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate790
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1549629941089/8047421613145 : ℚ), (900183116619/2500000000 : ℚ), (-3474271916999/50000000000 : ℚ)⟩,
  ⟨(1549629941089/8047421613145 : ℚ), (61992261369/319230234790 : ℚ), (190881910609/5000000000 : ℚ), (-375012034821/50000000000 : ℚ)⟩,
  ⟨(61992261369/319230234790 : ℚ), (273412161611/1388848357220 : ℚ), (63189816693/5000000000 : ℚ), (-25408597869/10000000000 : ℚ)⟩,
  ⟨(273412161611/1388848357220 : ℚ), (804756455/4014578179 : ℚ), (2277488621/400000000 : ℚ), (-234759795769/200000000000 : ℚ)⟩,
  ⟨(804756455/4014578179 : ℚ), (71475827238/348931206775 : ℚ), (1802198017/625000000 : ℚ), (-122093892069/200000000000 : ℚ)⟩,
  ⟨(71475827238/348931206775 : ℚ), (41281056359/196721591000 : ℚ), (14877920001/10000000000 : ℚ), (-324566151393/1000000000000 : ℚ)⟩,
  ⟨(41281056359/196721591000 : ℚ), (52086323809/241952522000 : ℚ), (7009056361/10000000000 : ℚ), (-159441925957/1000000000000 : ℚ)⟩,
  ⟨(52086323809/241952522000 : ℚ), (35007819989/158461692100 : ℚ), (2170005921/10000000000 : ℚ), (-55269278339/1000000000000 : ℚ)⟩,
  ⟨(35007819989/158461692100 : ℚ), (2462158772/10867040085 : ℚ), (-999227921/10000000000 : ℚ), (14746361639/1000000000000 : ℚ)⟩,
  ⟨(2462158772/10867040085 : ℚ), (1427430413/6152660860 : ℚ), (-1586317969/5000000000 : ℚ), (63989537079/1000000000000 : ℚ)⟩,
  ⟨(1427430413/6152660860 : ℚ), (26221120297/110634718000 : ℚ), (-4710801153/10000000000 : ℚ), (24918824351/250000000000 : ℚ)⟩,
  ⟨(26221120297/110634718000 : ℚ), (957344411/3965947690 : ℚ), (-5817148333/10000000000 : ℚ), (125896417701/1000000000000 : ℚ)⟩,
  ⟨(957344411/3965947690 : ℚ), (1925705863/7860397600 : ℚ), (-6610337871/10000000000 : ℚ), (145043305921/1000000000000 : ℚ)⟩,
  ⟨(1925705863/7860397600 : ℚ), (862730549/3483521520 : ℚ), (-7160565703/10000000000 : ℚ), (79261623481/500000000000 : ℚ)⟩,
  ⟨(862730549/3483521520 : ℚ), (843401351/3383003360 : ℚ), (-1501783571/2000000000 : ℚ), (41787638113/250000000000 : ℚ)⟩,
  ⟨(843401351/3383003360 : ℚ), (522857339/2092011800 : ℚ), (-7678068023/10000000000 : ℚ), (171367559207/1000000000000 : ℚ)⟩,
  ⟨(522857339/2092011800 : ℚ), (1/4 : ℚ), (-7698988141/10000000000 : ℚ), (85945208273/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2301011859/10000000000 : ℚ), (-1/4 : ℚ), (229415713021/1000000000000 : ℚ)⟩,
  ⟨(2301011859/10000000000 : ℚ), (2321931977/10000000000 : ℚ), (-522857339/2092011800 : ℚ), (4799068734815655629/20920118000000000000 : ℚ)⟩,
  ⟨(2321931977/10000000000 : ℚ), (498216429/2000000000 : ℚ), (-843401351/3383003360 : ℚ), (38778454261273501411/169150168000000000000 : ℚ)⟩,
  ⟨(498216429/2000000000 : ℚ), (2839434297/10000000000 : ℚ), (-862730549/3483521520 : ℚ), (13286430220040425459/58058692000000000000 : ℚ)⟩,
  ⟨(2839434297/10000000000 : ℚ), (3389662129/10000000000 : ℚ), (-1925705863/7860397600 : ℚ), (17928472772979304223/78603976000000000000 : ℚ)⟩,
  ⟨(3389662129/10000000000 : ℚ), (4182851667/10000000000 : ℚ), (-957344411/3965947690 : ℚ), (89974157350500437439/396594769000000000000 : ℚ)⟩,
  ⟨(4182851667/10000000000 : ℚ), (5289198847/10000000000 : ℚ), (-26221120297/110634718000 : ℚ), (248964203440517418279/1106347180000000000000 : ℚ)⟩,
  ⟨(5289198847/10000000000 : ℚ), (3413682031/5000000000 : ℚ), (-1427430413/6152660860 : ℚ), (68413231525384189427/307633043000000000000 : ℚ)⟩,
  ⟨(3413682031/5000000000 : ℚ), (9000772079/10000000000 : ℚ), (-2462158772/10867040085 : ℚ), (475276459189434399623/2173408017000000000000 : ℚ)⟩,
  ⟨(9000772079/10000000000 : ℚ), (12170005921/10000000000 : ℚ), (-35007819989/158461692100 : ℚ), (6769294857599879613/31692338420000000000 : ℚ)⟩,
  ⟨(12170005921/10000000000 : ℚ), (17009056361/10000000000 : ℚ), (-52086323809/241952522000 : ℚ), (500165456326243063509/2419525220000000000000 : ℚ)⟩,
  ⟨(17009056361/10000000000 : ℚ), (24877920001/10000000000 : ℚ), (-41281056359/196721591000 : ℚ), (35317738253472370339/178837810000000000000 : ℚ)⟩,
  ⟨(24877920001/10000000000 : ℚ), (2427198017/625000000 : ℚ), (-71475827238/348931206775 : ℚ), (48728854580640936933/263344307000000000000 : ℚ)⟩,
  ⟨(2427198017/625000000 : ℚ), (2677488621/400000000 : ℚ), (-804756455/4014578179 : ℚ), (2870246214227135167/17083311400000000000 : ℚ)⟩,
  ⟨(2677488621/400000000 : ℚ), (68189816693/5000000000 : ℚ), (-273412161611/1388848357220 : ℚ), (999580477078860190333/6944241786100000000000 : ℚ)⟩,
  ⟨(68189816693/5000000000 : ℚ), (32/1 : ℚ), (-61992261369/319230234790 : ℚ), (85822303716936700731/798075586975000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (520468510299/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(192358544579/1000000000000 : ℚ), (900183116619/2500000000 : ℚ), (-3474271916999/50000000000 : ℚ), 11⟩,
    ⟨(193463435933/1000000000000 : ℚ), (190881910609/5000000000 : ℚ), (-375012034821/50000000000 : ℚ), 8⟩,
    ⟨(12226922393/62500000000 : ℚ), (63189816693/5000000000 : ℚ), (-25408597869/10000000000 : ℚ), 7⟩,
    ⟨(198777222659/1000000000000 : ℚ), (2277488621/400000000 : ℚ), (-234759795769/200000000000 : ℚ), 6⟩,
    ⟨(101390956093/500000000000 : ℚ), (1802198017/625000000 : ℚ), (-122093892069/200000000000 : ℚ), 5⟩,
    ⟨(41498185779/200000000000 : ℚ), (14877920001/10000000000 : ℚ), (-324566151393/1000000000000 : ℚ), 5⟩,
    ⟨(212723307917/1000000000000 : ℚ), (7009056361/10000000000 : ℚ), (-159441925957/1000000000000 : ℚ), 5⟩,
    ⟨(218277971859/1000000000000 : ℚ), (2170005921/10000000000 : ℚ), (-55269278339/1000000000000 : ℚ), 4⟩,
    ⟨(223941458101/1000000000000 : ℚ), (-999227921/10000000000 : ℚ), (14746361639/1000000000000 : ℚ), 4⟩,
    ⟨(229496122043/1000000000000 : ℚ), (-1586317969/5000000000 : ℚ), (63989537079/1000000000000 : ℚ), 4⟩,
    ⟨(29341062633/125000000000 : ℚ), (-4710801153/10000000000 : ℚ), (24918824351/250000000000 : ℚ), 4⟩,
    ⟨(119718758887/500000000000 : ℚ), (-5817148333/10000000000 : ℚ), (125896417701/1000000000000 : ℚ), 4⟩,
    ⟨(243442207301/1000000000000 : ℚ), (-6610337871/10000000000 : ℚ), (145043305921/1000000000000 : ℚ), 4⟩,
    ⟨(30823583959/125000000000 : ℚ), (-7160565703/10000000000 : ℚ), (79261623481/500000000000 : ℚ), 4⟩,
    ⟨(124377997013/500000000000 : ℚ), (-1501783571/2000000000 : ℚ), (41787638113/250000000000 : ℚ), 4⟩,
    ⟨(249860885381/1000000000000 : ℚ), (-7678068023/10000000000 : ℚ), (171367559207/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7698988141/10000000000 : ℚ), (85945208273/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control790.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control790.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate790
