import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run183_checked : Entry.check ⟨93, 148, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run184_checked : Entry.check ⟨93, 149, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨79, 79⟩, ⟨41, 39⟩⟩, (FQ.progression (79 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run185_checked : Entry.check ⟨93, 150, ⟨1, 399999999⟩, ⟨0, 11, 6, ⟨41, 39⟩, ⟨87, 79⟩⟩, (FQ.progression (41 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run186_checked : Entry.check ⟨93, 151, ⟨1, 399999999⟩, ⟨0, 16, 8, ⟨87, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (87 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run187_checked : Entry.check ⟨93, 152, ⟨1, 399999999⟩, ⟨0, 23, 2, ⟨47, 39⟩, ⟨19, 15⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩]⟩ = true := by decide +kernel
theorem run188_checked : Entry.check ⟨94, 153, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run189_checked : Entry.check ⟨94, 154, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run190_checked : Entry.check ⟨95, 155, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨67, 79⟩, ⟨69, 79⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run191_checked : Entry.check ⟨95, 156, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run192_checked : Entry.check ⟨95, 157, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨71, 79⟩, ⟨9, 9⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run193_checked : Entry.check ⟨95, 158, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨9, 9⟩, ⟨15, 15⟩⟩, (FQ.progression (9 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run194_checked : Entry.check ⟨95, 159, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩, [⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run195_checked : Entry.check ⟨95, 160, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨77, 79⟩, ⟨81, 79⟩⟩, (FQ.progression (77 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run196_checked : Entry.check ⟨95, 161, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨81, 79⟩, ⟨17, 15⟩⟩, (FQ.progression (81 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run197_checked : Entry.check ⟨95, 162, ⟨1, 399999999⟩, ⟨0, 18, 4, ⟨17, 15⟩, ⟨11, 9⟩⟩, (FQ.progression (17 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run198_checked : Entry.check ⟨96, 163, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run199_checked : Entry.check ⟨96, 164, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run200_checked : Entry.check ⟨97, 165, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run201_checked : Entry.check ⟨97, 166, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run202_checked : Entry.check ⟨97, 167, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨13, 15⟩, ⟨17, 19⟩⟩, (FQ.progression (13 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run203_checked : Entry.check ⟨97, 168, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run204_checked : Entry.check ⟨97, 169, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨69, 79⟩, ⟨7, 7⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run205_checked : Entry.check ⟨97, 170, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨7, 7⟩, ⟨71, 79⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run206_checked : Entry.check ⟨97, 171, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨71, 79⟩, ⟨9, 9⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run207_checked : Entry.check ⟨97, 172, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨9, 9⟩, ⟨19, 19⟩⟩, (FQ.progression (9 / 10) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run208_checked : Entry.check ⟨97, 173, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨19, 19⟩, ⟨39, 39⟩⟩, [⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run209_checked : Entry.check ⟨97, 174, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run210_checked : Entry.check ⟨97, 175, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨79, 79⟩, ⟨1, 0⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩]⟩ = true := by decide +kernel
theorem run211_checked : Entry.check ⟨97, 174, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨1, 0⟩, ⟨81, 79⟩⟩, [⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run212_checked : Entry.check ⟨97, 175, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨81, 79⟩, ⟨41, 39⟩⟩, [⟨81, 79⟩, ⟨41, 39⟩]⟩ = true := by decide +kernel
theorem run213_checked : Entry.check ⟨98, 176, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run214_checked : Entry.check ⟨98, 177, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem entries7_checked : entries7.all Entry.check = true := by
  simp only [entries7, List.all_cons, List.all_nil, run183_checked, run184_checked, run185_checked, run186_checked, run187_checked, run188_checked, run189_checked, run190_checked, run191_checked, run192_checked, run193_checked, run194_checked, run195_checked, run196_checked, run197_checked, run198_checked, run199_checked, run200_checked, run201_checked, run202_checked, run203_checked, run204_checked, run205_checked, run206_checked, run207_checked, run208_checked, run209_checked, run210_checked, run211_checked, run212_checked, run213_checked, run214_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
