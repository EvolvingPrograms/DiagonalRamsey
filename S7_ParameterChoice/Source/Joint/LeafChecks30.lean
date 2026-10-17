import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run868_checked : Entry.check ⟨752, 758, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨159, 79⟩, ⟨33, 15⟩⟩, (FQ.progression (159 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run869_checked : Entry.check ⟨753, 759, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run870_checked : Entry.check ⟨754, 760, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 4⟩, ⟨9, 39⟩⟩, [⟨1, 4⟩, ⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run871_checked : Entry.check ⟨754, 761, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run872_checked : Entry.check ⟨755, 762, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run873_checked : Entry.check ⟨756, 763, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run874_checked : Entry.check ⟨757, 764, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run875_checked : Entry.check ⟨758, 765, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run876_checked : Entry.check ⟨759, 766, ⟨1, 399999999⟩, ⟨0, 0, 28, ⟨11, 3⟩, ⟨247, 79⟩⟩, (FQ.progression (11 / 4) (1 / 80) 28)⟩ = true := by decide +kernel
theorem run877_checked : Entry.check ⟨760, 767, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run878_checked : Entry.check ⟨760, 768, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run879_checked : Entry.check ⟨804, 769, ⟨1, 399999999⟩, ⟨0, 36, 25, ⟨55, 15⟩, ⟨299, 79⟩⟩, (FQ.progression (55 / 16) (1 / 80) 25)⟩ = true := by decide +kernel
theorem run880_checked : Entry.check ⟨807, 770, ⟨1, 399999999⟩, ⟨0, 39, 16, ⟨16, 4⟩, ⟨271, 79⟩⟩, (FQ.progression (16 / 5) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run881_checked : Entry.check ⟨809, 771, ⟨1, 399999999⟩, ⟨0, 43, 25, ⟨241, 79⟩, ⟨53, 15⟩⟩, (FQ.progression (241 / 80) (1 / 80) 25)⟩ = true := by decide +kernel
theorem run882_checked : Entry.check ⟨810, 771, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨4, 0⟩, ⟨167, 39⟩⟩, (FQ.progression (4 / 1) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run883_checked : Entry.check ⟨810, 772, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨167, 39⟩, ⟨337, 79⟩⟩, (FQ.progression (167 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run884_checked : Entry.check ⟨812, 773, ⟨1, 399999999⟩, ⟨0, 44, 36, ⟨45, 15⟩, ⟨13, 3⟩⟩, (FQ.progression (45 / 16) (1 / 80) 36)⟩ = true := by decide +kernel
theorem run885_checked : Entry.check ⟨816, 774, ⟨1, 399999999⟩, ⟨0, 31, 39, ⟨27, 9⟩, ⟨127, 39⟩⟩, (FQ.progression (27 / 10) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run886_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 16, 7, ⟨167, 79⟩, ⟨173, 79⟩⟩, (FQ.progression (167 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run887_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 23, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run888_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 33, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run889_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 41, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run890_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 51, 4, ⟨101, 39⟩, ⟨41, 15⟩⟩, (FQ.progression (101 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run891_checked : Entry.check ⟨818, 776, ⟨1, 399999999⟩, ⟨0, 54, 47, ⟨41, 15⟩, ⟨251, 79⟩⟩, (FQ.progression (41 / 16) (1 / 80) 47)⟩ = true := by decide +kernel
theorem entries30_checked : entries30.all Entry.check = true := by
  simp only [entries30, List.all_cons, List.all_nil, run868_checked, run869_checked, run870_checked, run871_checked, run872_checked, run873_checked, run874_checked, run875_checked, run876_checked, run877_checked, run878_checked, run879_checked, run880_checked, run881_checked, run882_checked, run883_checked, run884_checked, run885_checked, run886_checked, run887_checked, run888_checked, run889_checked, run890_checked, run891_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
