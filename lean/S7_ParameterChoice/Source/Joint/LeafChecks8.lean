import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run215_checked : Entry.check ⟨99, 177, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 79⟩, ⟨11, 79⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run216_checked : Entry.check ⟨100, 178, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨29, 39⟩, ⟨3, 3⟩⟩, [⟨29, 39⟩, ⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run217_checked : Entry.check ⟨100, 179, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 3⟩, ⟨61, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run218_checked : Entry.check ⟨100, 180, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run219_checked : Entry.check ⟨100, 179, ⟨1, 399999999⟩, ⟨0, 4, 3, ⟨31, 39⟩, ⟨4, 4⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run220_checked : Entry.check ⟨100, 181, ⟨1, 399999999⟩, ⟨0, 6, 3, ⟨4, 4⟩, ⟨33, 39⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run221_checked : Entry.check ⟨100, 182, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨33, 39⟩, ⟨69, 79⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run222_checked : Entry.check ⟨100, 183, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run223_checked : Entry.check ⟨100, 184, ⟨1, 399999999⟩, ⟨0, 13, 2, ⟨71, 79⟩, ⟨9, 9⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run224_checked : Entry.check ⟨100, 185, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨9, 9⟩, ⟨73, 79⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run225_checked : Entry.check ⟨100, 184, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨73, 79⟩, ⟨37, 39⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run226_checked : Entry.check ⟨100, 186, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨37, 39⟩, ⟨77, 79⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run227_checked : Entry.check ⟨101, 187, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run228_checked : Entry.check ⟨101, 188, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run229_checked : Entry.check ⟨102, 189, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨27, 39⟩, ⟨59, 79⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run230_checked : Entry.check ⟨102, 190, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run231_checked : Entry.check ⟨102, 191, ⟨1, 399999999⟩, ⟨0, 6, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run232_checked : Entry.check ⟨102, 192, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨31, 39⟩, ⟨13, 15⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run233_checked : Entry.check ⟨102, 193, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run234_checked : Entry.check ⟨102, 194, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨67, 79⟩, ⟨7, 7⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run235_checked : Entry.check ⟨102, 195, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨7, 7⟩, ⟨71, 79⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run236_checked : Entry.check ⟨103, 196, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run237_checked : Entry.check ⟨104, 197, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 9⟩, ⟨11, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run238_checked : Entry.check ⟨105, 198, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨5, 7⟩, ⟨51, 79⟩⟩, [⟨5, 7⟩, ⟨51, 79⟩]⟩ = true := by decide +kernel
theorem run239_checked : Entry.check ⟨105, 199, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨51, 79⟩, ⟨53, 79⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩, ⟨53, 79⟩]⟩ = true := by decide +kernel
theorem run240_checked : Entry.check ⟨105, 200, ⟨1, 399999999⟩, ⟨0, 3, 6, ⟨53, 79⟩, ⟨29, 39⟩⟩, [⟨53, 79⟩, ⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run241_checked : Entry.check ⟨105, 201, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨29, 39⟩, ⟨61, 79⟩⟩, [⟨29, 39⟩, ⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run242_checked : Entry.check ⟨105, 202, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run243_checked : Entry.check ⟨105, 203, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run244_checked : Entry.check ⟨105, 204, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨63, 79⟩, ⟨33, 39⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run245_checked : Entry.check ⟨106, 205, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run246_checked : Entry.check ⟨106, 206, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem entries8_checked : entries8.all Entry.check = true := by
  simp only [entries8, List.all_cons, List.all_nil, run215_checked, run216_checked, run217_checked, run218_checked, run219_checked, run220_checked, run221_checked, run222_checked, run223_checked, run224_checked, run225_checked, run226_checked, run227_checked, run228_checked, run229_checked, run230_checked, run231_checked, run232_checked, run233_checked, run234_checked, run235_checked, run236_checked, run237_checked, run238_checked, run239_checked, run240_checked, run241_checked, run242_checked, run243_checked, run244_checked, run245_checked, run246_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
