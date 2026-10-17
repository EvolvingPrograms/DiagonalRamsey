import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run487_checked : Entry.check ⟨340, 419, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run488_checked : Entry.check ⟨344, 420, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨3, 7⟩, ⟨7, 15⟩⟩, (FQ.progression (3 / 8) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run489_checked : Entry.check ⟨344, 421, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run490_checked : Entry.check ⟨345, 422, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 19⟩, ⟨29, 79⟩⟩, [⟨7, 19⟩, ⟨29, 79⟩]⟩ = true := by decide +kernel
theorem run491_checked : Entry.check ⟨345, 423, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run492_checked : Entry.check ⟨345, 424, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run493_checked : Entry.check ⟨347, 425, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run494_checked : Entry.check ⟨348, 426, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 9⟩, ⟨13, 39⟩⟩, [⟨3, 9⟩, ⟨5, 15⟩, ⟨13, 39⟩]⟩ = true := by decide +kernel
theorem run495_checked : Entry.check ⟨348, 427, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨13, 39⟩, ⟨29, 79⟩⟩, (FQ.progression (13 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run496_checked : Entry.check ⟨350, 428, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 39⟩, ⟨23, 79⟩⟩, [⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem run497_checked : Entry.check ⟨350, 429, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run498_checked : Entry.check ⟨350, 430, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run499_checked : Entry.check ⟨352, 431, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run500_checked : Entry.check ⟨355, 432, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run501_checked : Entry.check ⟨357, 433, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨17, 79⟩, ⟨19, 79⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run502_checked : Entry.check ⟨357, 434, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨19, 79⟩, ⟨21, 79⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run503_checked : Entry.check ⟨359, 435, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨17, 79⟩, ⟨19, 79⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run504_checked : Entry.check ⟨359, 436, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run505_checked : Entry.check ⟨362, 437, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run506_checked : Entry.check ⟨365, 438, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run507_checked : Entry.check ⟨366, 439, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run508_checked : Entry.check ⟨366, 440, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨13, 79⟩, ⟨3, 15⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run509_checked : Entry.check ⟨368, 441, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨11, 79⟩, ⟨13, 79⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run510_checked : Entry.check ⟨368, 442, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run511_checked : Entry.check ⟨370, 443, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run512_checked : Entry.check ⟨372, 444, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run513_checked : Entry.check ⟨373, 445, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run514_checked : Entry.check ⟨374, 446, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run515_checked : Entry.check ⟨375, 447, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run516_checked : Entry.check ⟨376, 448, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 79⟩, ⟨1, 19⟩⟩, [⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run517_checked : Entry.check ⟨376, 449, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run518_checked : Entry.check ⟨377, 450, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem entries17_checked : entries17.all Entry.check = true := by
  simp only [entries17, List.all_cons, List.all_nil, run487_checked, run488_checked, run489_checked, run490_checked, run491_checked, run492_checked, run493_checked, run494_checked, run495_checked, run496_checked, run497_checked, run498_checked, run499_checked, run500_checked, run501_checked, run502_checked, run503_checked, run504_checked, run505_checked, run506_checked, run507_checked, run508_checked, run509_checked, run510_checked, run511_checked, run512_checked, run513_checked, run514_checked, run515_checked, run516_checked, run517_checked, run518_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
