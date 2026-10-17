import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run535_checked : Entry.check ⟨426, 463, ⟨1, 399999999⟩, ⟨0, 10, 6, ⟨77, 39⟩, ⟨159, 79⟩⟩, (FQ.progression (77 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run536_checked : Entry.check ⟨426, 464, ⟨1, 399999999⟩, ⟨0, 15, 19, ⟨159, 79⟩, ⟨177, 79⟩⟩, (FQ.progression (159 / 80) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run537_checked : Entry.check ⟨427, 464, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run538_checked : Entry.check ⟨428, 464, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run539_checked : Entry.check ⟨429, 464, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run540_checked : Entry.check ⟨430, 465, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run541_checked : Entry.check ⟨431, 466, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run542_checked : Entry.check ⟨432, 466, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨47, 15⟩, ⟨59, 19⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩]⟩ = true := by decide +kernel
theorem run543_checked : Entry.check ⟨434, 467, ⟨1, 399999999⟩, ⟨0, 17, 25, ⟨149, 79⟩, ⟨173, 79⟩⟩, (FQ.progression (149 / 80) (1 / 80) 25)⟩ = true := by decide +kernel
theorem run544_checked : Entry.check ⟨435, 468, ⟨1, 399999999⟩, ⟨0, 0, 28, ⟨139, 39⟩, ⟨61, 15⟩⟩, (FQ.progression (139 / 40) (1 / 80) 28)⟩ = true := by decide +kernel
theorem run545_checked : Entry.check ⟨437, 469, ⟨1, 399999999⟩, ⟨0, 21, 26, ⟨143, 79⟩, ⟨21, 9⟩⟩, (FQ.progression (143 / 80) (1 / 80) 26)⟩ = true := by decide +kernel
theorem run546_checked : Entry.check ⟨438, 470, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨193, 79⟩, ⟨199, 79⟩⟩, (FQ.progression (193 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run547_checked : Entry.check ⟨438, 471, ⟨1, 399999999⟩, ⟨0, 6, 9, ⟨199, 79⟩, ⟨207, 79⟩⟩, (FQ.progression (199 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run548_checked : Entry.check ⟨440, 472, ⟨1, 399999999⟩, ⟨0, 25, 17, ⟨69, 39⟩, ⟨77, 39⟩⟩, (FQ.progression (69 / 40) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run549_checked : Entry.check ⟨440, 473, ⟨1, 399999999⟩, ⟨0, 41, 11, ⟨77, 39⟩, ⟨41, 19⟩⟩, (FQ.progression (77 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run550_checked : Entry.check ⟨442, 474, ⟨1, 399999999⟩, ⟨0, 14, 6, ⟨119, 79⟩, ⟨31, 19⟩⟩, (FQ.progression (119 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run551_checked : Entry.check ⟨442, 475, ⟨1, 399999999⟩, ⟨0, 19, 13, ⟨31, 19⟩, ⟨17, 9⟩⟩, (FQ.progression (31 / 20) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run552_checked : Entry.check ⟨442, 476, ⟨1, 399999999⟩, ⟨0, 31, 4, ⟨17, 9⟩, ⟨139, 79⟩⟩, (FQ.progression (17 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run553_checked : Entry.check ⟨442, 477, ⟨1, 399999999⟩, ⟨0, 34, 23, ⟨139, 79⟩, ⟨161, 79⟩⟩, (FQ.progression (139 / 80) (1 / 80) 23)⟩ = true := by decide +kernel
theorem run554_checked : Entry.check ⟨443, 477, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨177, 79⟩, ⟨183, 79⟩⟩, (FQ.progression (177 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run555_checked : Entry.check ⟨443, 478, ⟨1, 399999999⟩, ⟨0, 6, 18, ⟨183, 79⟩, ⟨5, 1⟩⟩, (FQ.progression (183 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run556_checked : Entry.check ⟨444, 478, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨103, 39⟩, ⟨27, 9⟩⟩, (FQ.progression (103 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run557_checked : Entry.check ⟨444, 479, ⟨1, 399999999⟩, ⟨0, 10, 6, ⟨27, 9⟩, ⟨221, 79⟩⟩, (FQ.progression (27 / 10) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run558_checked : Entry.check ⟨445, 480, ⟨1, 399999999⟩, ⟨0, 17, 16, ⟨57, 39⟩, ⟨129, 79⟩⟩, (FQ.progression (57 / 40) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run559_checked : Entry.check ⟨447, 481, ⟨1, 399999999⟩, ⟨0, 13, 10, ⟨103, 79⟩, ⟨7, 4⟩⟩, (FQ.progression (103 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run560_checked : Entry.check ⟨447, 482, ⟨1, 399999999⟩, ⟨0, 22, 14, ⟨7, 4⟩, ⟨25, 15⟩⟩, (FQ.progression (7 / 5) (1 / 80) 14)⟩ = true := by decide +kernel
theorem entries19_checked : entries19.all Entry.check = true := by
  simp only [entries19, List.all_cons, List.all_nil, run535_checked, run536_checked, run537_checked, run538_checked, run539_checked, run540_checked, run541_checked, run542_checked, run543_checked, run544_checked, run545_checked, run546_checked, run547_checked, run548_checked, run549_checked, run550_checked, run551_checked, run552_checked, run553_checked, run554_checked, run555_checked, run556_checked, run557_checked, run558_checked, run559_checked, run560_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
