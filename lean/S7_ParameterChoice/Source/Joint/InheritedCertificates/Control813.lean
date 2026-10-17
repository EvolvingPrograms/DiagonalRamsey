import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate813
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (47341982418877/304296812936200 : ℚ), (3403763201263/10000000000 : ℚ), (-26531812341927/500000000000 : ℚ)⟩,
  ⟨(47341982418877/304296812936200 : ℚ), (1262617519763/8050380022300 : ℚ), (360795071901/10000000000 : ℚ), (-5721642264977/1000000000000 : ℚ)⟩,
  ⟨(1262617519763/8050380022300 : ℚ), (522102664537/3285644540200 : ℚ), (1863807363/156250000 : ℚ), (-241723713211/125000000000 : ℚ)⟩,
  ⟨(522102664537/3285644540200 : ℚ), (430374917399/2661803754600 : ℚ), (13392695107/2500000000 : ℚ), (-444792188307/500000000000 : ℚ)⟩,
  ⟨(430374917399/2661803754600 : ℚ), (43702761937/264743505140 : ℚ), (13476371441/5000000000 : ℚ), (-91841891843/200000000000 : ℚ)⟩,
  ⟨(43702761937/264743505140 : ℚ), (63145161401/373761149800 : ℚ), (109724541/80000000 : ℚ), (-24069564953/100000000000 : ℚ)⟩,
  ⟨(63145161401/373761149800 : ℚ), (19939046197/115158195300 : ℚ), (6240344629/10000000000 : ℚ), (-14300665841/125000000000 : ℚ)⟩,
  ⟨(19939046197/115158195300 : ℚ), (53680811159/302404908800 : ℚ), (1634016817/10000000000 : ℚ), (-1732457097/50000000000 : ℚ)⟩,
  ⟨(53680811159/302404908800 : ℚ), (12606924017/69313963900 : ℚ), (-1390032271/10000000000 : ℚ), (19031669219/1000000000000 : ℚ)⟩,
  ⟨(12606924017/69313963900 : ℚ), (6865690189/36896124975 : ℚ), (-867362797/2500000000 : ℚ), (5685244127/100000000000 : ℚ)⟩,
  ⟨(6865690189/36896124975 : ℚ), (10110558203/53227018350 : ℚ), (-4945296187/10000000000 : ℚ), (42157601013/500000000000 : ℚ)⟩,
  ⟨(10110558203/53227018350 : ℚ), (14795187569/76523166900 : ℚ), (-3004918277/5000000000 : ℚ), (3266759951/31250000000 : ℚ)⟩,
  ⟨(14795187569/76523166900 : ℚ), (2086883771/10640609800 : ℚ), (-6775068223/10000000000 : ℚ), (119331506001/1000000000000 : ℚ)⟩,
  ⟨(2086883771/10640609800 : ℚ), (6687150287/33740968400 : ℚ), (-7307098713/10000000000 : ℚ), (16220740607/125000000000 : ℚ)⟩,
  ⟨(6687150287/33740968400 : ℚ), (3271439837/16401241900 : ℚ), (-7644508397/10000000000 : ℚ), (136453075143/1000000000000 : ℚ)⟩,
  ⟨(3271439837/16401241900 : ℚ), (101437708/507325075 : ℚ), (-488032551/625000000 : ℚ), (6986225749/50000000000 : ℚ)⟩,
  ⟨(101437708/507325075 : ℚ), (1/5 : ℚ), (-7828813819/10000000000 : ℚ), (35032566453/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2171186181/10000000000 : ℚ), (-1/5 : ℚ), (22944248679/125000000000 : ℚ)⟩,
  ⟨(2171186181/10000000000 : ℚ), (136967449/625000000 : ℚ), (-101437708/507325075 : ℚ), (931156125970341507/5073250750000000000 : ℚ)⟩,
  ⟨(136967449/625000000 : ℚ), (2355491603/10000000000 : ℚ), (-3271439837/16401241900 : ℚ), (7521461999991347407/41003104750000000000 : ℚ)⟩,
  ⟨(2355491603/10000000000 : ℚ), (2692901287/10000000000 : ℚ), (-6687150287/33740968400 : ℚ), (61792115313855424873/337409684000000000000 : ℚ)⟩,
  ⟨(2692901287/10000000000 : ℚ), (3224931777/10000000000 : ℚ), (-2086883771/10640609800 : ℚ), (3885531542006697033/21281219600000000000 : ℚ)⟩,
  ⟨(3224931777/10000000000 : ℚ), (1995081723/5000000000 : ℚ), (-14795187569/76523166900 : ℚ), (7723873224409568099/42512870500000000000 : ℚ)⟩,
  ⟨(1995081723/5000000000 : ℚ), (5054703813/10000000000 : ℚ), (-10110558203/53227018350 : ℚ), (1066492723938679109/5914113150000000000 : ℚ)⟩,
  ⟨(5054703813/10000000000 : ℚ), (1632637203/2500000000 : ℚ), (-6865690189/36896124975 : ℚ), (43875381793101121767/245974166500000000000 : ℚ)⟩,
  ⟨(1632637203/2500000000 : ℚ), (8609967729/10000000000 : ℚ), (-12606924017/69313963900 : ℚ), (60868406640175059667/346569819500000000000 : ℚ)⟩,
  ⟨(8609967729/10000000000 : ℚ), (11634016817/10000000000 : ℚ), (-53680811159/302404908800 : ℚ), (519742753690367710183/3024049088000000000000 : ℚ)⟩,
  ⟨(11634016817/10000000000 : ℚ), (16240344629/10000000000 : ℚ), (-19939046197/115158195300 : ℚ), (192069872225798486129/1151581953000000000000 : ℚ)⟩,
  ⟨(16240344629/10000000000 : ℚ), (189724541/80000000 : ℚ), (-63145161401/373761149800 : ℚ), (119579303639009789337/747522299600000000000 : ℚ)⟩,
  ⟨(189724541/80000000 : ℚ), (18476371441/5000000000 : ℚ), (-43702761937/264743505140 : ℚ), (399209706830987553783/2647435051400000000000 : ℚ)⟩,
  ⟨(18476371441/5000000000 : ℚ), (15892695107/2500000000 : ℚ), (-430374917399/2661803754600 : ℚ), (460034879830501189691/3327254693250000000000 : ℚ)⟩,
  ⟨(15892695107/2500000000 : ℚ), (2020057363/156250000 : ℚ), (-522102664537/3285644540200 : ℚ), (247618334216579540813/2053527837625000000000 : ℚ)⟩,
  ⟨(2020057363/156250000 : ℚ), (32/1 : ℚ), (-1262617519763/8050380022300 : ℚ), (944801022100279473699/10062975027875000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (14622027751/25000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(155420720351/1000000000000 : ℚ), (3403763201263/10000000000 : ℚ), (-26531812341927/500000000000 : ℚ), 12⟩,
    ⟨(78137615701/500000000000 : ℚ), (360795071901/10000000000 : ℚ), (-5721642264977/1000000000000 : ℚ), 9⟩,
    ⟨(1263611321/8000000000 : ℚ), (1863807363/156250000 : ℚ), (-241723713211/125000000000 : ℚ), 7⟩,
    ⟨(80192428359/500000000000 : ℚ), (13392695107/2500000000 : ℚ), (-444792188307/500000000000 : ℚ), 6⟩,
    ⟨(81741020193/500000000000 : ℚ), (13476371441/5000000000 : ℚ), (-91841891843/200000000000 : ℚ), 6⟩,
    ⟨(167123943097/1000000000000 : ℚ), (109724541/80000000 : ℚ), (-24069564953/100000000000 : ℚ), 5⟩,
    ⟨(171170608573/1000000000000 : ℚ), (6240344629/10000000000 : ℚ), (-14300665841/125000000000 : ℚ), 5⟩,
    ⟨(175466525729/1000000000000 : ℚ), (1634016817/10000000000 : ℚ), (-1732457097/50000000000 : ℚ), 5⟩,
    ⟨(179846604877/1000000000000 : ℚ), (-1390032271/10000000000 : ℚ), (19031669219/1000000000000 : ℚ), 4⟩,
    ⟨(184142522033/1000000000000 : ℚ), (-867362797/2500000000 : ℚ), (5685244127/100000000000 : ℚ), 4⟩,
    ⟨(188189187509/1000000000000 : ℚ), (-4945296187/10000000000 : ℚ), (42157601013/500000000000 : ℚ), 4⟩,
    ⟨(9591554511/50000000000 : ℚ), (-3004918277/5000000000 : ℚ), (3266759951/31250000000 : ℚ), 4⟩,
    ⟨(6091508559/31250000000 : ℚ), (-6775068223/10000000000 : ℚ), (119331506001/1000000000000 : ℚ), 4⟩,
    ⟨(197361715481/1000000000000 : ℚ), (-7307098713/10000000000 : ℚ), (16220740607/125000000000 : ℚ), 4⟩,
    ⟨(199037899203/1000000000000 : ℚ), (-7644508397/10000000000 : ℚ), (136453075143/1000000000000 : ℚ), 4⟩,
    ⟨(39978482051/200000000000 : ℚ), (-488032551/625000000 : ℚ), (6986225749/50000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7828813819/10000000000 : ℚ), (35032566453/250000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control813.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control813.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate813
