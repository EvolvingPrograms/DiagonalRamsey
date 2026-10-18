import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run119_checked : Entry.check ⟨81, 97, ⟨1, 399999999⟩, ⟨0, 42, 3, ⟨151, 79⟩, ⟨153, 79⟩⟩, [⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩]⟩ = true := by decide +kernel
theorem run120_checked : Entry.check ⟨81, 96, ⟨1, 399999999⟩, ⟨0, 44, 2, ⟨153, 79⟩, ⟨77, 39⟩⟩, [⟨153, 79⟩, ⟨77, 39⟩]⟩ = true := by decide +kernel
theorem run121_checked : Entry.check ⟨81, 97, ⟨1, 399999999⟩, ⟨0, 45, 7, ⟨77, 39⟩, ⟨2, 0⟩⟩, (FQ.progression (77 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run122_checked : Entry.check ⟨82, 98, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run123_checked : Entry.check ⟨82, 99, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run124_checked : Entry.check ⟨83, 100, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨51, 39⟩, ⟨107, 79⟩⟩, (FQ.progression (51 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run125_checked : Entry.check ⟨83, 101, ⟨1, 399999999⟩, ⟨0, 5, 11, ⟨107, 79⟩, ⟨117, 79⟩⟩, (FQ.progression (107 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run126_checked : Entry.check ⟨83, 102, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨117, 79⟩, ⟨59, 39⟩⟩, [⟨117, 79⟩, ⟨59, 39⟩]⟩ = true := by decide +kernel
theorem run127_checked : Entry.check ⟨83, 103, ⟨1, 399999999⟩, ⟨0, 16, 20, ⟨59, 39⟩, ⟨137, 79⟩⟩, (FQ.progression (59 / 40) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run128_checked : Entry.check ⟨83, 104, ⟨1, 399999999⟩, ⟨0, 35, 2, ⟨137, 79⟩, ⟨69, 39⟩⟩, [⟨137, 79⟩, ⟨69, 39⟩]⟩ = true := by decide +kernel
theorem run129_checked : Entry.check ⟨83, 105, ⟨1, 399999999⟩, ⟨0, 36, 19, ⟨69, 39⟩, ⟨39, 19⟩⟩, (FQ.progression (69 / 40) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run130_checked : Entry.check ⟨84, 106, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run131_checked : Entry.check ⟨84, 107, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run132_checked : Entry.check ⟨85, 108, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run133_checked : Entry.check ⟨85, 109, ⟨1, 399999999⟩, ⟨0, 1, 9, ⟨6, 4⟩, ⟨13, 9⟩⟩, (FQ.progression (6 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run134_checked : Entry.check ⟨85, 110, ⟨1, 399999999⟩, ⟨0, 9, 11, ⟨13, 9⟩, ⟨57, 39⟩⟩, (FQ.progression (13 / 10) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run135_checked : Entry.check ⟨85, 111, ⟨1, 399999999⟩, ⟨0, 19, 10, ⟨57, 39⟩, ⟨123, 79⟩⟩, (FQ.progression (57 / 40) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run136_checked : Entry.check ⟨86, 112, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run137_checked : Entry.check ⟨86, 113, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run138_checked : Entry.check ⟨87, 114, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 9⟩, ⟨89, 79⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem run139_checked : Entry.check ⟨87, 115, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (89 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run140_checked : Entry.check ⟨87, 116, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨47, 39⟩, ⟨19, 15⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩]⟩ = true := by decide +kernel
theorem run141_checked : Entry.check ⟨87, 117, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run142_checked : Entry.check ⟨87, 116, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨6, 4⟩, ⟨97, 79⟩⟩, [⟨6, 4⟩, ⟨97, 79⟩]⟩ = true := by decide +kernel
theorem run143_checked : Entry.check ⟨87, 117, ⟨1, 399999999⟩, ⟨0, 9, 6, ⟨97, 79⟩, ⟨51, 39⟩⟩, (FQ.progression (97 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run144_checked : Entry.check ⟨87, 118, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨51, 39⟩, ⟨53, 39⟩⟩, (FQ.progression (51 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run145_checked : Entry.check ⟨87, 119, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨53, 39⟩, ⟨107, 79⟩⟩, [⟨53, 39⟩, ⟨107, 79⟩]⟩ = true := by decide +kernel
theorem run146_checked : Entry.check ⟨87, 118, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨107, 79⟩, ⟨27, 19⟩⟩, [⟨107, 79⟩, ⟨27, 19⟩]⟩ = true := by decide +kernel
theorem run147_checked : Entry.check ⟨87, 119, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run148_checked : Entry.check ⟨87, 118, ⟨1, 399999999⟩, ⟨0, 21, 2, ⟨109, 79⟩, ⟨11, 7⟩⟩, [⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run149_checked : Entry.check ⟨87, 119, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨11, 7⟩, ⟨111, 79⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩]⟩ = true := by decide +kernel
theorem run150_checked : Entry.check ⟨87, 120, ⟨1, 399999999⟩, ⟨0, 23, 9, ⟨111, 79⟩, ⟨119, 79⟩⟩, (FQ.progression (111 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem entries5_checked : entries5.all Entry.check = true := by
  simp only [entries5, List.all_cons, List.all_nil, run119_checked, run120_checked, run121_checked, run122_checked, run123_checked, run124_checked, run125_checked, run126_checked, run127_checked, run128_checked, run129_checked, run130_checked, run131_checked, run132_checked, run133_checked, run134_checked, run135_checked, run136_checked, run137_checked, run138_checked, run139_checked, run140_checked, run141_checked, run142_checked, run143_checked, run144_checked, run145_checked, run146_checked, run147_checked, run148_checked, run149_checked, run150_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run151_checked : Entry.check ⟨88, 121, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run152_checked : Entry.check ⟨88, 122, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run153_checked : Entry.check ⟨89, 123, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨41, 39⟩, ⟨21, 19⟩⟩, [⟨41, 39⟩, ⟨83, 79⟩, ⟨21, 19⟩]⟩ = true := by decide +kernel
theorem run154_checked : Entry.check ⟨89, 124, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run155_checked : Entry.check ⟨89, 125, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run156_checked : Entry.check ⟨89, 126, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨43, 39⟩, ⟨87, 79⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩]⟩ = true := by decide +kernel
theorem run157_checked : Entry.check ⟨89, 127, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨87, 79⟩, ⟨11, 9⟩⟩, [⟨87, 79⟩, ⟨11, 9⟩]⟩ = true := by decide +kernel
theorem run158_checked : Entry.check ⟨89, 126, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨11, 9⟩, ⟨89, 79⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem run159_checked : Entry.check ⟨89, 127, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨89, 79⟩, ⟨9, 7⟩⟩, [⟨89, 79⟩, ⟨9, 7⟩]⟩ = true := by decide +kernel
theorem run160_checked : Entry.check ⟨89, 126, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨9, 7⟩, ⟨91, 79⟩⟩, [⟨9, 7⟩, ⟨91, 79⟩]⟩ = true := by decide +kernel
theorem run161_checked : Entry.check ⟨89, 128, ⟨1, 399999999⟩, ⟨0, 9, 9, ⟨91, 79⟩, ⟨99, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run162_checked : Entry.check ⟨89, 129, ⟨1, 399999999⟩, ⟨0, 17, 10, ⟨99, 79⟩, ⟨27, 19⟩⟩, (FQ.progression (99 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run163_checked : Entry.check ⟨89, 130, ⟨1, 399999999⟩, ⟨0, 26, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run164_checked : Entry.check ⟨89, 131, ⟨1, 399999999⟩, ⟨0, 27, 2, ⟨109, 79⟩, ⟨11, 7⟩⟩, [⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run165_checked : Entry.check ⟨90, 132, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run166_checked : Entry.check ⟨90, 133, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run167_checked : Entry.check ⟨91, 134, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run168_checked : Entry.check ⟨91, 135, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨39, 39⟩, ⟨81, 79⟩⟩, (FQ.progression (39 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run169_checked : Entry.check ⟨91, 136, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨81, 79⟩, ⟨41, 39⟩⟩, [⟨81, 79⟩, ⟨41, 39⟩]⟩ = true := by decide +kernel
theorem run170_checked : Entry.check ⟨91, 137, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨41, 39⟩, ⟨83, 79⟩⟩, [⟨41, 39⟩, ⟨83, 79⟩]⟩ = true := by decide +kernel
theorem run171_checked : Entry.check ⟨91, 136, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨83, 79⟩, ⟨21, 19⟩⟩, [⟨83, 79⟩, ⟨21, 19⟩]⟩ = true := by decide +kernel
theorem run172_checked : Entry.check ⟨91, 138, ⟨1, 399999999⟩, ⟨0, 7, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, (FQ.progression (21 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run173_checked : Entry.check ⟨91, 139, ⟨1, 399999999⟩, ⟨0, 12, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (89 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run174_checked : Entry.check ⟨91, 140, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨47, 39⟩, ⟨19, 15⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩]⟩ = true := by decide +kernel
theorem run175_checked : Entry.check ⟨91, 139, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run176_checked : Entry.check ⟨91, 141, ⟨1, 399999999⟩, ⟨0, 19, 10, ⟨6, 4⟩, ⟨21, 15⟩⟩, (FQ.progression (6 / 5) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run177_checked : Entry.check ⟨91, 142, ⟨1, 399999999⟩, ⟨0, 28, 2, ⟨21, 15⟩, ⟨53, 39⟩⟩, [⟨21, 15⟩, ⟨53, 39⟩]⟩ = true := by decide +kernel
theorem run178_checked : Entry.check ⟨92, 143, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run179_checked : Entry.check ⟨92, 144, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run180_checked : Entry.check ⟨93, 145, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨71, 79⟩, ⟨73, 79⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run181_checked : Entry.check ⟨93, 146, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨73, 79⟩, ⟨77, 79⟩⟩, (FQ.progression (73 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run182_checked : Entry.check ⟨93, 147, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem entries6_checked : entries6.all Entry.check = true := by
  simp only [entries6, List.all_cons, List.all_nil, run151_checked, run152_checked, run153_checked, run154_checked, run155_checked, run156_checked, run157_checked, run158_checked, run159_checked, run160_checked, run161_checked, run162_checked, run163_checked, run164_checked, run165_checked, run166_checked, run167_checked, run168_checked, run169_checked, run170_checked, run171_checked, run172_checked, run173_checked, run174_checked, run175_checked, run176_checked, run177_checked, run178_checked, run179_checked, run180_checked, run181_checked, run182_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run215_checked : Entry.check ⟨99, 177, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 79⟩, ⟨11, 79⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run216_checked : Entry.check ⟨100, 178, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨29, 39⟩, ⟨3, 3⟩⟩, [⟨29, 39⟩, ⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run217_checked : Entry.check ⟨100, 179, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 3⟩, ⟨61, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run218_checked : Entry.check ⟨100, 180, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run219_checked : Entry.check ⟨100, 179, ⟨1, 399999999⟩, ⟨0, 4, 3, ⟨31, 39⟩, ⟨4, 4⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run220_checked : Entry.check ⟨100, 181, ⟨1, 399999999⟩, ⟨0, 6, 3, ⟨4, 4⟩, ⟨33, 39⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run221_checked : Entry.check ⟨100, 182, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨33, 39⟩, ⟨69, 79⟩⟩, (FQ.progression (33 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run222_checked : Entry.check ⟨100, 183, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run223_checked : Entry.check ⟨100, 184, ⟨1, 399999999⟩, ⟨0, 13, 2, ⟨71, 79⟩, ⟨9, 9⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run224_checked : Entry.check ⟨100, 185, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨9, 9⟩, ⟨73, 79⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run225_checked : Entry.check ⟨100, 184, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨73, 79⟩, ⟨37, 39⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run226_checked : Entry.check ⟨100, 186, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨37, 39⟩, ⟨77, 79⟩⟩, (FQ.progression (37 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run227_checked : Entry.check ⟨101, 187, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run228_checked : Entry.check ⟨101, 188, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run229_checked : Entry.check ⟨102, 189, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨27, 39⟩, ⟨59, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run230_checked : Entry.check ⟨102, 190, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run231_checked : Entry.check ⟨102, 191, ⟨1, 399999999⟩, ⟨0, 6, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run232_checked : Entry.check ⟨102, 192, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨31, 39⟩, ⟨13, 15⟩⟩, (FQ.progression (31 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run233_checked : Entry.check ⟨102, 193, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run234_checked : Entry.check ⟨102, 194, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨67, 79⟩, ⟨7, 7⟩⟩, (FQ.progression (67 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run235_checked : Entry.check ⟨102, 195, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨7, 7⟩, ⟨71, 79⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run236_checked : Entry.check ⟨103, 196, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run237_checked : Entry.check ⟨104, 197, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 9⟩, ⟨11, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run238_checked : Entry.check ⟨105, 198, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨5, 7⟩, ⟨51, 79⟩⟩, [⟨5, 7⟩, ⟨51, 79⟩]⟩ = true := by decide +kernel
theorem run239_checked : Entry.check ⟨105, 199, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨51, 79⟩, ⟨53, 79⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩, ⟨53, 79⟩]⟩ = true := by decide +kernel
theorem run240_checked : Entry.check ⟨105, 200, ⟨1, 399999999⟩, ⟨0, 3, 6, ⟨53, 79⟩, ⟨29, 39⟩⟩, (FQ.progression (53 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run241_checked : Entry.check ⟨105, 201, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨29, 39⟩, ⟨61, 79⟩⟩, (FQ.progression (29 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run242_checked : Entry.check ⟨105, 202, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run243_checked : Entry.check ⟨105, 203, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run244_checked : Entry.check ⟨105, 204, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨63, 79⟩, ⟨33, 39⟩⟩, (FQ.progression (63 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run245_checked : Entry.check ⟨106, 205, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run246_checked : Entry.check ⟨106, 206, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem entries8_checked : entries8.all Entry.check = true := by
  simp only [entries8, List.all_cons, List.all_nil, run215_checked, run216_checked, run217_checked, run218_checked, run219_checked, run220_checked, run221_checked, run222_checked, run223_checked, run224_checked, run225_checked, run226_checked, run227_checked, run228_checked, run229_checked, run230_checked, run231_checked, run232_checked, run233_checked, run234_checked, run235_checked, run236_checked, run237_checked, run238_checked, run239_checked, run240_checked, run241_checked, run242_checked, run243_checked, run244_checked, run245_checked, run246_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run247_checked : Entry.check ⟨107, 207, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨47, 79⟩, ⟨51, 79⟩⟩, (FQ.progression (47 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run248_checked : Entry.check ⟨107, 208, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨51, 79⟩, ⟨13, 19⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩]⟩ = true := by decide +kernel
theorem run249_checked : Entry.check ⟨107, 209, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run250_checked : Entry.check ⟨107, 210, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run251_checked : Entry.check ⟨107, 211, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨29, 39⟩, ⟨59, 79⟩⟩, [⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run252_checked : Entry.check ⟨107, 210, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run253_checked : Entry.check ⟨107, 212, ⟨1, 399999999⟩, ⟨0, 13, 2, ⟨3, 3⟩, ⟨61, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run254_checked : Entry.check ⟨108, 213, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run255_checked : Entry.check ⟨108, 214, ⟨1, 399999999⟩, ⟨0, 5, 6, ⟨3, 39⟩, ⟨11, 79⟩⟩, (FQ.progression (3 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run256_checked : Entry.check ⟨108, 215, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run257_checked : Entry.check ⟨109, 216, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨11, 19⟩, ⟨23, 39⟩⟩, [⟨11, 19⟩, ⟨9, 15⟩, ⟨23, 39⟩]⟩ = true := by decide +kernel
theorem run258_checked : Entry.check ⟨109, 217, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨23, 39⟩, ⟨51, 79⟩⟩, (FQ.progression (23 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run259_checked : Entry.check ⟨109, 218, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨51, 79⟩, ⟨11, 15⟩⟩, (FQ.progression (51 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run260_checked : Entry.check ⟨109, 219, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run261_checked : Entry.check ⟨110, 220, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run262_checked : Entry.check ⟨110, 221, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run263_checked : Entry.check ⟨111, 221, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 79⟩, ⟨11, 79⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run264_checked : Entry.check ⟨112, 222, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨41, 79⟩, ⟨9, 15⟩⟩, (FQ.progression (41 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run265_checked : Entry.check ⟨112, 223, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨9, 15⟩, ⟨5, 7⟩⟩, (FQ.progression (9 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run266_checked : Entry.check ⟨112, 224, ⟨1, 399999999⟩, ⟨0, 9, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run267_checked : Entry.check ⟨113, 225, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run268_checked : Entry.check ⟨113, 226, ⟨1, 399999999⟩, ⟨0, 5, 6, ⟨3, 39⟩, ⟨11, 79⟩⟩, (FQ.progression (3 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run269_checked : Entry.check ⟨113, 227, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run270_checked : Entry.check ⟨114, 228, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨19, 39⟩, ⟨11, 19⟩⟩, (FQ.progression (19 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run271_checked : Entry.check ⟨114, 229, ⟨1, 399999999⟩, ⟨0, 6, 6, ⟨11, 19⟩, ⟨49, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run272_checked : Entry.check ⟨115, 230, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run273_checked : Entry.check ⟨115, 231, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run274_checked : Entry.check ⟨116, 232, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 19⟩, ⟨37, 79⟩⟩, [⟨9, 19⟩, ⟨37, 79⟩]⟩ = true := by decide +kernel
theorem run275_checked : Entry.check ⟨116, 233, ⟨1, 399999999⟩, ⟨0, 1, 8, ⟨37, 79⟩, ⟨11, 19⟩⟩, (FQ.progression (37 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run276_checked : Entry.check ⟨116, 234, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run277_checked : Entry.check ⟨117, 235, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run278_checked : Entry.check ⟨117, 236, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem entries9_checked : entries9.all Entry.check = true := by
  simp only [entries9, List.all_cons, List.all_nil, run247_checked, run248_checked, run249_checked, run250_checked, run251_checked, run252_checked, run253_checked, run254_checked, run255_checked, run256_checked, run257_checked, run258_checked, run259_checked, run260_checked, run261_checked, run262_checked, run263_checked, run264_checked, run265_checked, run266_checked, run267_checked, run268_checked, run269_checked, run270_checked, run271_checked, run272_checked, run273_checked, run274_checked, run275_checked, run276_checked, run277_checked, run278_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
