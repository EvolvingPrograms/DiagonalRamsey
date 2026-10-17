import Support.Controls.ControlBank.K_10_12_0Certificate
import Support.Controls.ControlBank.K_11_12_0Certificate
import Support.Controls.ControlBank.K_12_12_0Certificate
import Support.Controls.ControlBank.K_13_12_0Certificate
import Support.Controls.ControlBank.K_14_12_0Certificate
import Support.Controls.ControlBank.K_22_12_0Certificate
import Support.Controls.ControlBank.K_23_12_0Certificate
import Support.Controls.ControlBank.K_27_12_0Certificate
import Support.Controls.ControlBank.K_30_12_0Certificate
import Support.Controls.ControlBank.K_31_12_0Certificate
import Support.Controls.ControlBank.K_35_12_0Certificate
import Support.Controls.ControlBank.K_38_12_0Certificate
import Support.Controls.ControlBank.K_39_12_0Certificate
import Support.Controls.ControlBank.K_3_12_0Certificate
import Support.Controls.ControlBank.K_42_12_0Certificate
import Support.Controls.ControlBank.K_44_12_0Certificate
import Support.Controls.ControlBank.K_45_12_0Certificate
import Support.Controls.ControlBank.K_47_12_0Certificate
import Support.Controls.ControlBank.K_48_12_0Certificate
import Support.Controls.ControlBank.K_4_12_0Certificate
import Support.Controls.ControlBank.K_52_9_4Certificate
import Support.Controls.ControlBank.K_5_12_0Certificate
import Support.Controls.ControlBank.K_8_12_0Certificate
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
import S7_ParameterChoice.Source.Joint.Transfers.Local.LocalAligned

set_option autoImplicit false

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey DiagRamsey.V5 JointGeometry JointRecipes JointFamily

def control0 : CtrlD := ⟨(137499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (104168011619/1000000000000 : ℚ), (-11308750935073219/5000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control0_cert : control0.CertOK := by
  apply certOK_of_sound control0 RamseyAnalytic.ControlBank.K_10_12_0Certificate.data RamseyAnalytic.ControlBank.K_10_12_0Certificate.sound
  all_goals decide +kernel

def control1 : CtrlD := ⟨(149999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (7125082377/62500000000 : ℚ), (-108577263448508341/50000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control1_cert : control1.CertOK := by
  apply certOK_of_sound control1 RamseyAnalytic.ControlBank.K_11_12_0Certificate.data RamseyAnalytic.ControlBank.K_11_12_0Certificate.sound
  all_goals decide +kernel

def control2 : CtrlD := ⟨(162499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (123859803539/1000000000000 : ℚ), (-2088604969627102071/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control2_cert : control2.CertOK := by
  apply certOK_of_sound control2 RamseyAnalytic.ControlBank.K_12_12_0Certificate.data RamseyAnalytic.ControlBank.K_12_12_0Certificate.sound
  all_goals decide +kernel

def control3 : CtrlD := ⟨(174999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (133751895709/1000000000000 : ℚ), (-2011768719781130937/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control3_cert : control3.CertOK := by
  apply certOK_of_sound control3 RamseyAnalytic.ControlBank.K_13_12_0Certificate.data RamseyAnalytic.ControlBank.K_13_12_0Certificate.sound
  all_goals decide +kernel

def control4 : CtrlD := ⟨(187499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (14365994671/100000000000 : ℚ), (-1940306253280737789/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control4_cert : control4.CertOK := by
  apply certOK_of_sound control4 RamseyAnalytic.ControlBank.K_14_12_0Certificate.data RamseyAnalytic.ControlBank.K_14_12_0Certificate.sound
  all_goals decide +kernel

def control5 : CtrlD := ⟨(287499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (44729753097/200000000000 : ℚ), (-1497678468970862399/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control5_cert : control5.CertOK := by
  apply certOK_of_sound control5 RamseyAnalytic.ControlBank.K_22_12_0Certificate.data RamseyAnalytic.ControlBank.K_22_12_0Certificate.sound
  all_goals decide +kernel

def control6 : CtrlD := ⟨(299999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (233723497347/1000000000000 : ℚ), (-58144659902998657/40000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control6_cert : control6.CertOK := by
  apply certOK_of_sound control6 RamseyAnalytic.ControlBank.K_23_12_0Certificate.data RamseyAnalytic.ControlBank.K_23_12_0Certificate.sound
  all_goals decide +kernel

def control7 : CtrlD := ⟨(349999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (54828664271/200000000000 : ℚ), (-1294104238709041383/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control7_cert : control7.CertOK := by
  apply certOK_of_sound control7 RamseyAnalytic.ControlBank.K_27_12_0Certificate.data RamseyAnalytic.ControlBank.K_27_12_0Certificate.sound
  all_goals decide +kernel

def control8 : CtrlD := ⟨(387499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (304584301817/1000000000000 : ℚ), (-29720184422276923/25000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control8_cert : control8.CertOK := by
  apply certOK_of_sound control8 RamseyAnalytic.ControlBank.K_30_12_0Certificate.data RamseyAnalytic.ControlBank.K_30_12_0Certificate.sound
  all_goals decide +kernel

def control9 : CtrlD := ⟨(399999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (39344993373/125000000000 : ℚ), (-577972501874180251/500000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control9_cert : control9.CertOK := by
  apply certOK_of_sound control9 RamseyAnalytic.ControlBank.K_31_12_0Certificate.data RamseyAnalytic.ControlBank.K_31_12_0Certificate.sound
  all_goals decide +kernel

def control10 : CtrlD := ⟨(449999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (35555812833/100000000000 : ℚ), (-1034066531628492721/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control10_cert : control10.CertOK := by
  apply certOK_of_sound control10 RamseyAnalytic.ControlBank.K_35_12_0Certificate.data RamseyAnalytic.ControlBank.K_35_12_0Certificate.sound
  all_goals decide +kernel

def control11 : CtrlD := ⟨(487499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (193126255927/500000000000 : ℚ), (-951263947609350407/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control11_cert : control11.CertOK := by
  apply certOK_of_sound control11 RamseyAnalytic.ControlBank.K_38_12_0Certificate.data RamseyAnalytic.ControlBank.K_38_12_0Certificate.sound
  all_goals decide +kernel

def control12 : CtrlD := ⟨(499999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (396515481959/1000000000000 : ℚ), (-37001607684583051/40000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control12_cert : control12.CertOK := by
  apply certOK_of_sound control12 RamseyAnalytic.ControlBank.K_39_12_0Certificate.data RamseyAnalytic.ControlBank.K_39_12_0Certificate.sound
  all_goals decide +kernel

def control13 : CtrlD := ⟨(49999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (18215215201/500000000000 : ℚ), (-331235085353780593/100000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control13_cert : control13.CertOK := by
  apply certOK_of_sound control13 RamseyAnalytic.ControlBank.K_3_12_0Certificate.data RamseyAnalytic.ControlBank.K_3_12_0Certificate.sound
  all_goals decide +kernel

def control14 : CtrlD := ⟨(537499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (427333230847/1000000000000 : ℚ), (-850191169997173257/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control14_cert : control14.CertOK := by
  apply certOK_of_sound control14 RamseyAnalytic.ControlBank.K_42_12_0Certificate.data RamseyAnalytic.ControlBank.K_42_12_0Certificate.sound
  all_goals decide +kernel

def control15 : CtrlD := ⟨(562499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (89584080569/200000000000 : ℚ), (-803139734573612887/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control15_cert : control15.CertOK := by
  apply certOK_of_sound control15 RamseyAnalytic.ControlBank.K_44_12_0Certificate.data RamseyAnalytic.ControlBank.K_44_12_0Certificate.sound
  all_goals decide +kernel

def control16 : CtrlD := ⟨(574999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (229118992937/500000000000 : ℚ), (-780366610011251261/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control16_cert : control16.CertOK := by
  apply certOK_of_sound control16 RamseyAnalytic.ControlBank.K_45_12_0Certificate.data RamseyAnalytic.ControlBank.K_45_12_0Certificate.sound
  all_goals decide +kernel

def control17 : CtrlD := ⟨(599999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (478877207191/1000000000000 : ℚ), (-73631106685464417/100000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control17_cert : control17.CertOK := by
  apply certOK_of_sound control17 RamseyAnalytic.ControlBank.K_47_12_0Certificate.data RamseyAnalytic.ControlBank.K_47_12_0Certificate.sound
  all_goals decide +kernel

def control18 : CtrlD := ⟨(612499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (489213388239/1000000000000 : ℚ), (-357478253962472643/500000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control18_cert : control18.CertOK := by
  apply certOK_of_sound control18 RamseyAnalytic.ControlBank.K_48_12_0Certificate.data RamseyAnalytic.ControlBank.K_48_12_0Certificate.sound
  all_goals decide +kernel

def control19 : CtrlD := ⟨(62499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (9188805791/200000000000 : ℚ), (-1540165692598244797/500000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control19_cert : control19.CertOK := by
  apply certOK_of_sound control19 RamseyAnalytic.ControlBank.K_4_12_0Certificate.data RamseyAnalytic.ControlBank.K_4_12_0Certificate.sound
  all_goals decide +kernel

def control20 : CtrlD := ⟨(662499/1000000 : ℚ), (1/4 : ℚ), (1/1 : ℚ), (999/1000 : ℚ), (229838287883/500000000000 : ℚ), (-194308033236947487/250000000000000000 : ℚ), (-8990064764121279/31250000000000000 : ℚ)⟩
theorem control20_cert : control20.CertOK := by
  apply certOK_of_sound control20 RamseyAnalytic.ControlBank.K_52_9_4Certificate.data RamseyAnalytic.ControlBank.K_52_9_4Certificate.sound
  all_goals decide +kernel

def control21 : CtrlD := ⟨(74999/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (27763583179/500000000000 : ℚ), (-1445441447029949969/500000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control21_cert : control21.CertOK := by
  apply certOK_of_sound control21 RamseyAnalytic.ControlBank.K_5_12_0Certificate.data RamseyAnalytic.ControlBank.K_5_12_0Certificate.sound
  all_goals decide +kernel

def control22 : CtrlD := ⟨(112499/1000000 : ℚ), (1/20 : ℚ), (4/1 : ℚ), (999/1000 : ℚ), (42296690517/500000000000 : ℚ), (-2469899253799434607/1000000000000000000 : ℚ), (-25646647193825267/500000000000000000 : ℚ)⟩
theorem control22_cert : control22.CertOK := by
  apply certOK_of_sound control22 RamseyAnalytic.ControlBank.K_8_12_0Certificate.data RamseyAnalytic.ControlBank.K_8_12_0Certificate.sound
  all_goals decide +kernel

abbrev ControlIndex := Fin 23
def controls : ControlIndex → CtrlD := ![control0, control1, control2, control3, control4, control5, control6, control7, control8, control9, control10, control11, control12, control13, control14, control15, control16, control17, control18, control19, control20, control21, control22]

theorem controls_cert (i : ControlIndex) : (controls i).CertOK := by
  fin_cases i
  · exact control0_cert
  · exact control1_cert
  · exact control2_cert
  · exact control3_cert
  · exact control4_cert
  · exact control5_cert
  · exact control6_cert
  · exact control7_cert
  · exact control8_cert
  · exact control9_cert
  · exact control10_cert
  · exact control11_cert
  · exact control12_cert
  · exact control13_cert
  · exact control14_cert
  · exact control15_cert
  · exact control16_cert
  · exact control17_cert
  · exact control18_cert
  · exact control19_cert
  · exact control20_cert
  · exact control21_cert
  · exact control22_cert

structure Entry where
  rawIndex : RawIndex
  piece : ℕ
  controlIndex : ControlIndex
  recipe : RawD ProfileIndex 1 2716

def qEqB (a b : ℚ) : Bool := decide (a.num = b.num ∧ a.den = b.den)

theorem qEqB_sound {a b : ℚ} (h : qEqB a b = true) : a = b := by
  simp only [qEqB, decide_eq_true_eq] at h
  exact Rat.ext h.1 h.2

def Entry.boundsCheck (e : Entry) : Bool :=
  decide (e.piece < nRP e.rawIndex) &&
    qEqB e.recipe.lo ((rawDatum e.rawIndex).xs.getD e.piece 0) &&
    qEqB e.recipe.hi ((rawDatum e.rawIndex).xs.getD (e.piece+1) 0)

def Entry.geometryCheck (e : Entry) : Bool :=
  e.recipe.check (fun _ => controls e.controlIndex) sourceAq sourceBq datum (.inl 0)
    (rawDatum e.rawIndex)

def Entry.check (e : Entry) : Bool := e.geometryCheck && e.boundsCheck

theorem Entry.checked_bounds (e : Entry) (h : e.boundsCheck = true) :
    e.piece < nRP e.rawIndex ∧
    e.recipe.lo = (rawDatum e.rawIndex).xs.getD e.piece 0 ∧
    e.recipe.hi = (rawDatum e.rawIndex).xs.getD (e.piece+1) 0 := by
  simp only [Entry.boundsCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1, qEqB_sound h.1.2, qEqB_sound h.2⟩

def Entry.pieceIndex (e : Entry) (h : e.boundsCheck = true) : Fin (nRP e.rawIndex) :=
  ⟨e.piece, (e.checked_bounds h).1⟩

/-- Each checked recipe supplies the exact original knot piece. Its analytic
control is proved above; all recursive graph assertions are proper-host inputs
inside `PieceOK`, with no source or profile admissibility hypothesis. -/
theorem Entry.pieceOK (e : Entry) (hg : e.geometryCheck = true) (hb : e.boundsCheck = true) :
    ∃ K, PieceOK raw closed A B (raw e.rawIndex)
      (rpLo e.rawIndex (e.pieceIndex hb)) (rpHi e.rawIndex (e.pieceIndex hb)) K := by
  obtain ⟨K, hK⟩ := e.recipe.pieceOK (fun _ => controls e.controlIndex)
    (fun _ => controls_cert e.controlIndex) sourceAq sourceBq
    (fun i => (source_coefficients_pos i).1) (fun i => (source_coefficients_pos i).2)
    datum raw closed profile_eq raw_valid closed_valid (.inl 0)
    (rawDatum e.rawIndex) (raw_valid e.rawIndex) hg
  have h := e.checked_bounds hb
  have hp := knotIntervals_get (rawDatum e.rawIndex).xs (e.pieceIndex hb)
  have hl : (e.recipe.lo : ℝ) = rpLo e.rawIndex (e.pieceIndex hb) := by
    change _ = (((knotIntervals (rawDatum e.rawIndex).xs).get (e.pieceIndex hb)).1 : ℝ)
    rw [hp]
    exact_mod_cast h.2.1
  have hr : (e.recipe.hi : ℝ) = rpHi e.rawIndex (e.pieceIndex hb) := by
    change _ = (((knotIntervals (rawDatum e.rawIndex).xs).get (e.pieceIndex hb)).2 : ℝ)
    rw [hp]
    exact_mod_cast h.2.2
  rw [← hl, ← hr]
  exact ⟨K, hK⟩

#print axioms controls_cert
#print axioms Entry.pieceOK
end DiagonalRamsey.JointCachedRoutes
