import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run423_checked : Entry.check ⟨246, 360, ⟨1, 399999999⟩, ⟨0, 56, 39, ⟨103, 39⟩, ⟨61, 19⟩⟩, (FQ.progression (103 / 40) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run424_checked : Entry.check ⟨246, 361, ⟨1, 399999999⟩, ⟨0, 94, 4, ⟨61, 19⟩, ⟨247, 79⟩⟩, (FQ.progression (61 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run425_checked : Entry.check ⟨249, 362, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨31, 15⟩, ⟨79, 39⟩⟩, (FQ.progression (31 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run426_checked : Entry.check ⟨249, 363, ⟨1, 399999999⟩, ⟨0, 18, 4, ⟨79, 39⟩, ⟨161, 79⟩⟩, (FQ.progression (79 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run427_checked : Entry.check ⟨250, 363, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨173, 79⟩, ⟨87, 39⟩⟩, [⟨173, 79⟩, ⟨87, 39⟩]⟩ = true := by decide +kernel
theorem run428_checked : Entry.check ⟨251, 363, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run429_checked : Entry.check ⟨252, 363, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run430_checked : Entry.check ⟨253, 363, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run431_checked : Entry.check ⟨254, 364, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run432_checked : Entry.check ⟨255, 365, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run433_checked : Entry.check ⟨258, 366, ⟨1, 399999999⟩, ⟨0, 20, 9, ⟨149, 79⟩, ⟨157, 79⟩⟩, (FQ.progression (149 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run434_checked : Entry.check ⟨261, 367, ⟨1, 399999999⟩, ⟨0, 23, 11, ⟨143, 79⟩, ⟨153, 79⟩⟩, (FQ.progression (143 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run435_checked : Entry.check ⟨265, 368, ⟨1, 399999999⟩, ⟨0, 26, 11, ⟨69, 39⟩, ⟨37, 19⟩⟩, (FQ.progression (69 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run436_checked : Entry.check ⟨267, 369, ⟨1, 399999999⟩, ⟨0, 16, 18, ⟨119, 79⟩, ⟨17, 9⟩⟩, (FQ.progression (119 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run437_checked : Entry.check ⟨267, 370, ⟨1, 399999999⟩, ⟨0, 33, 4, ⟨17, 9⟩, ⟨139, 79⟩⟩, (FQ.progression (17 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run438_checked : Entry.check ⟨267, 371, ⟨1, 399999999⟩, ⟨0, 36, 6, ⟨139, 79⟩, ⟨9, 4⟩⟩, (FQ.progression (139 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run439_checked : Entry.check ⟨270, 372, ⟨1, 399999999⟩, ⟨0, 18, 12, ⟨57, 39⟩, ⟨25, 15⟩⟩, (FQ.progression (57 / 40) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run440_checked : Entry.check ⟨271, 373, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨91, 39⟩, ⟨189, 79⟩⟩, (FQ.progression (91 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run441_checked : Entry.check ⟨272, 374, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨51, 19⟩, ⟨107, 39⟩⟩, (FQ.progression (51 / 20) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run442_checked : Entry.check ⟨276, 375, ⟨1, 399999999⟩, ⟨0, 13, 9, ⟨51, 39⟩, ⟨11, 7⟩⟩, (FQ.progression (51 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run443_checked : Entry.check ⟨276, 376, ⟨1, 399999999⟩, ⟨0, 21, 12, ⟨11, 7⟩, ⟨121, 79⟩⟩, (FQ.progression (11 / 8) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run444_checked : Entry.check ⟨280, 377, ⟨1, 399999999⟩, ⟨0, 16, 10, ⟨99, 79⟩, ⟨27, 19⟩⟩, (FQ.progression (99 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run445_checked : Entry.check ⟨280, 378, ⟨1, 399999999⟩, ⟨0, 25, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run446_checked : Entry.check ⟨281, 378, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨11, 7⟩, ⟨7, 4⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩, ⟨7, 4⟩]⟩ = true := by decide +kernel
theorem run447_checked : Entry.check ⟨281, 379, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨7, 4⟩, ⟨113, 79⟩⟩, [⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run448_checked : Entry.check ⟨284, 380, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨9, 7⟩, ⟨6, 4⟩⟩, (FQ.progression (9 / 8) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run449_checked : Entry.check ⟨284, 381, ⟨1, 399999999⟩, ⟨0, 19, 11, ⟨6, 4⟩, ⟨53, 39⟩⟩, (FQ.progression (6 / 5) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run450_checked : Entry.check ⟨285, 382, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨107, 79⟩, ⟨11, 7⟩⟩, (FQ.progression (107 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run451_checked : Entry.check ⟨290, 383, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨83, 79⟩, ⟨87, 79⟩⟩, (FQ.progression (83 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run452_checked : Entry.check ⟨290, 384, ⟨1, 399999999⟩, ⟨0, 16, 8, ⟨87, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (87 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run453_checked : Entry.check ⟨290, 385, ⟨1, 399999999⟩, ⟨0, 23, 5, ⟨47, 39⟩, ⟨49, 39⟩⟩, (FQ.progression (47 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run454_checked : Entry.check ⟨294, 386, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨39, 39⟩, ⟨1, 0⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩, ⟨1, 0⟩]⟩ = true := by decide +kernel
theorem entries15_checked : entries15.all Entry.check = true := by
  simp only [entries15, List.all_cons, List.all_nil, run423_checked, run424_checked, run425_checked, run426_checked, run427_checked, run428_checked, run429_checked, run430_checked, run431_checked, run432_checked, run433_checked, run434_checked, run435_checked, run436_checked, run437_checked, run438_checked, run439_checked, run440_checked, run441_checked, run442_checked, run443_checked, run444_checked, run445_checked, run446_checked, run447_checked, run448_checked, run449_checked, run450_checked, run451_checked, run452_checked, run453_checked, run454_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run455_checked : Entry.check ⟨294, 387, ⟨1, 399999999⟩, ⟨0, 14, 6, ⟨1, 0⟩, ⟨17, 15⟩⟩, (FQ.progression (1 / 1) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run456_checked : Entry.check ⟨294, 388, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run457_checked : Entry.check ⟨294, 389, ⟨1, 399999999⟩, ⟨0, 20, 5, ⟨43, 39⟩, ⟨9, 7⟩⟩, (FQ.progression (43 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run458_checked : Entry.check ⟨297, 390, ⟨1, 399999999⟩, ⟨0, 11, 5, ⟨9, 9⟩, ⟨19, 19⟩⟩, (FQ.progression (9 / 10) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run459_checked : Entry.check ⟨297, 391, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨19, 19⟩, ⟨39, 39⟩⟩, [⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run460_checked : Entry.check ⟨297, 392, ⟨1, 399999999⟩, ⟨0, 17, 6, ⟨39, 39⟩, ⟨83, 79⟩⟩, (FQ.progression (39 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run461_checked : Entry.check ⟨301, 393, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨67, 79⟩, ⟨17, 19⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run462_checked : Entry.check ⟨301, 394, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨17, 19⟩, ⟨71, 79⟩⟩, (FQ.progression (17 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run463_checked : Entry.check ⟨301, 395, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨71, 79⟩, ⟨37, 39⟩⟩, (FQ.progression (71 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run464_checked : Entry.check ⟨301, 396, ⟨1, 399999999⟩, ⟨0, 17, 4, ⟨37, 39⟩, ⟨77, 79⟩⟩, (FQ.progression (37 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run465_checked : Entry.check ⟨301, 397, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run466_checked : Entry.check ⟨305, 398, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run467_checked : Entry.check ⟨305, 399, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run468_checked : Entry.check ⟨305, 400, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨67, 79⟩, ⟨69, 79⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run469_checked : Entry.check ⟨305, 401, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run470_checked : Entry.check ⟨310, 402, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run471_checked : Entry.check ⟨310, 403, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩, (FQ.progression (3 / 4) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run472_checked : Entry.check ⟨310, 404, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨63, 79⟩, ⟨33, 39⟩⟩, (FQ.progression (63 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run473_checked : Entry.check ⟨310, 405, ⟨1, 399999999⟩, ⟨0, 17, 3, ⟨33, 39⟩, ⟨17, 19⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run474_checked : Entry.check ⟨313, 406, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run475_checked : Entry.check ⟨313, 407, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, (FQ.progression (57 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run476_checked : Entry.check ⟨313, 408, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩, (FQ.progression (3 / 4) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run477_checked : Entry.check ⟨316, 409, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run478_checked : Entry.check ⟨316, 410, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run479_checked : Entry.check ⟨319, 411, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨47, 79⟩, ⟨51, 79⟩⟩, (FQ.progression (47 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run480_checked : Entry.check ⟨319, 412, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨51, 79⟩, ⟨11, 15⟩⟩, (FQ.progression (51 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run481_checked : Entry.check ⟨325, 413, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨9, 15⟩, ⟨5, 7⟩⟩, (FQ.progression (9 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run482_checked : Entry.check ⟨328, 414, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run483_checked : Entry.check ⟨328, 415, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run484_checked : Entry.check ⟨331, 416, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, (FQ.progression (19 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run485_checked : Entry.check ⟨337, 417, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run486_checked : Entry.check ⟨340, 418, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem entries16_checked : entries16.all Entry.check = true := by
  simp only [entries16, List.all_cons, List.all_nil, run455_checked, run456_checked, run457_checked, run458_checked, run459_checked, run460_checked, run461_checked, run462_checked, run463_checked, run464_checked, run465_checked, run466_checked, run467_checked, run468_checked, run469_checked, run470_checked, run471_checked, run472_checked, run473_checked, run474_checked, run475_checked, run476_checked, run477_checked, run478_checked, run479_checked, run480_checked, run481_checked, run482_checked, run483_checked, run484_checked, run485_checked, run486_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run519_checked : Entry.check ⟨377, 451, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 39⟩, ⟨1, 19⟩⟩, [⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run520_checked : Entry.check ⟨378, 452, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 39⟩, ⟨3, 79⟩⟩, [⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run521_checked : Entry.check ⟨414, 453, ⟨1, 399999999⟩, ⟨0, 18, 39, ⟨253, 79⟩, ⟨291, 79⟩⟩, (FQ.progression (253 / 80) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run522_checked : Entry.check ⟨416, 454, ⟨1, 399999999⟩, ⟨0, 39, 31, ⟨117, 39⟩, ⟨33, 9⟩⟩, (FQ.progression (117 / 40) (1 / 80) 31)⟩ = true := by decide +kernel
theorem run523_checked : Entry.check ⟨418, 455, ⟨1, 399999999⟩, ⟨0, 19, 44, ⟨43, 15⟩, ⟨129, 39⟩⟩, (FQ.progression (43 / 16) (1 / 80) 44)⟩ = true := by decide +kernel
theorem run524_checked : Entry.check ⟨421, 456, ⟨1, 399999999⟩, ⟨0, 27, 47, ⟨103, 39⟩, ⟨63, 19⟩⟩, (FQ.progression (103 / 40) (1 / 80) 47)⟩ = true := by decide +kernel
theorem run525_checked : Entry.check ⟨423, 457, ⟨1, 399999999⟩, ⟨0, 6, 13, ⟨161, 79⟩, ⟨173, 79⟩⟩, (FQ.progression (161 / 80) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run526_checked : Entry.check ⟨423, 457, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨87, 39⟩, ⟨11, 4⟩⟩, [⟨87, 39⟩, ⟨35, 15⟩, ⟨11, 4⟩]⟩ = true := by decide +kernel
theorem run527_checked : Entry.check ⟨423, 458, ⟨1, 399999999⟩, ⟨0, 21, 7, ⟨11, 4⟩, ⟨91, 39⟩⟩, (FQ.progression (11 / 5) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run528_checked : Entry.check ⟨423, 458, ⟨1, 399999999⟩, ⟨0, 29, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run529_checked : Entry.check ⟨423, 458, ⟨1, 399999999⟩, ⟨0, 37, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run530_checked : Entry.check ⟨423, 458, ⟨1, 399999999⟩, ⟨0, 47, 5, ⟨101, 39⟩, ⟨103, 39⟩⟩, (FQ.progression (101 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run531_checked : Entry.check ⟨423, 459, ⟨1, 399999999⟩, ⟨0, 51, 40, ⟨103, 39⟩, ⟨49, 15⟩⟩, (FQ.progression (103 / 40) (1 / 80) 40)⟩ = true := by decide +kernel
theorem run532_checked : Entry.check ⟨423, 460, ⟨1, 399999999⟩, ⟨0, 90, 5, ⟨49, 15⟩, ⟨249, 79⟩⟩, (FQ.progression (49 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run533_checked : Entry.check ⟨424, 461, ⟨1, 399999999⟩, ⟨0, 0, 41, ⟨21, 4⟩, ⟨47, 9⟩⟩, (FQ.progression (21 / 5) (1 / 80) 41)⟩ = true := by decide +kernel
theorem run534_checked : Entry.check ⟨424, 462, ⟨1, 399999999⟩, ⟨0, 40, 2, ⟨47, 9⟩, ⟨377, 79⟩⟩, [⟨47, 9⟩, ⟨377, 79⟩]⟩ = true := by decide +kernel
theorem entries18_checked : entries18.all Entry.check = true := by
  simp only [entries18, List.all_cons, List.all_nil, run519_checked, run520_checked, run521_checked, run522_checked, run523_checked, run524_checked, run525_checked, run526_checked, run527_checked, run528_checked, run529_checked, run530_checked, run531_checked, run532_checked, run533_checked, run534_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

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
