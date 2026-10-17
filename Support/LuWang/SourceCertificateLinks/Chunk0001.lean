import Support.LuWang.SourceCertificates.Chunk0001
import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateLinks.Chunk0001
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0001
open AnalyticBounds.ExpressionCertificate

theorem linked_50 : Linked cell_50 pieces := by
  refine ⟨piece_30,piece_30_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_50,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_42_mem
    · exact piece_43_mem

theorem linked_51 : Linked cell_51 pieces := by
  refine ⟨piece_31,piece_31_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_51,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_43_mem

theorem linked_52 : Linked cell_52 pieces := by
  refine ⟨piece_32,piece_32_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_52,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_43_mem
    · exact piece_44_mem
    · exact piece_45_mem

theorem linked_53 : Linked cell_53 pieces := by
  refine ⟨piece_33,piece_33_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_53,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_45_mem
    · exact piece_46_mem

theorem linked_54 : Linked cell_54 pieces := by
  refine ⟨piece_34,piece_34_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_54,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_46_mem
    · exact piece_47_mem

theorem linked_55 : Linked cell_55 pieces := by
  refine ⟨piece_35,piece_35_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_55,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_47_mem
    · exact piece_48_mem
    · exact piece_49_mem

theorem linked_56 : Linked cell_56 pieces := by
  refine ⟨piece_36,piece_36_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_56,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_49_mem

theorem linked_57 : Linked cell_57 pieces := by
  refine ⟨piece_37,piece_37_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_57,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_49_mem

theorem linked_58 : Linked cell_58 pieces := by
  refine ⟨piece_38,piece_38_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_58,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_49_mem
    · exact piece_50_mem

theorem linked_59 : Linked cell_59 pieces := by
  refine ⟨piece_39,piece_39_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_59,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_50_mem
    · exact piece_51_mem
    · exact piece_52_mem

theorem linked_60 : Linked cell_60 pieces := by
  refine ⟨piece_40,piece_40_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_60,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_52_mem
    · exact piece_53_mem

theorem linked_61 : Linked cell_61 pieces := by
  refine ⟨piece_41,piece_41_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_61,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_53_mem

theorem linked_62 : Linked cell_62 pieces := by
  refine ⟨piece_41,piece_41_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_62,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_53_mem
    · exact piece_54_mem
    · exact piece_55_mem

theorem linked_63 : Linked cell_63 pieces := by
  refine ⟨piece_42,piece_42_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_63,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_55_mem

theorem linked_64 : Linked cell_64 pieces := by
  refine ⟨piece_43,piece_43_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_64,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_55_mem

theorem linked_65 : Linked cell_65 pieces := by
  refine ⟨piece_44,piece_44_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_65,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_55_mem
    · exact piece_56_mem

theorem linked_66 : Linked cell_66 pieces := by
  refine ⟨piece_45,piece_45_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_66,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_56_mem

theorem linked_67 : Linked cell_67 pieces := by
  refine ⟨piece_45,piece_45_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_67,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_56_mem
    · exact piece_57_mem
    · exact piece_58_mem

theorem linked_68 : Linked cell_68 pieces := by
  refine ⟨piece_46,piece_46_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_68,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_58_mem

theorem linked_69 : Linked cell_69 pieces := by
  refine ⟨piece_46,piece_46_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_69,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_58_mem
    · exact piece_59_mem

theorem linked_70 : Linked cell_70 pieces := by
  refine ⟨piece_47,piece_47_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_70,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_59_mem

theorem linked_71 : Linked cell_71 pieces := by
  refine ⟨piece_47,piece_47_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_71,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_59_mem
    · exact piece_60_mem
    · exact piece_61_mem

theorem linked_72 : Linked cell_72 pieces := by
  refine ⟨piece_48,piece_48_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_72,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_61_mem

theorem linked_73 : Linked cell_73 pieces := by
  refine ⟨piece_49,piece_49_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_73,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_61_mem

theorem linked_74 : Linked cell_74 pieces := by
  refine ⟨piece_49,piece_49_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_74,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_61_mem
    · exact piece_62_mem

theorem linked_75 : Linked cell_75 pieces := by
  refine ⟨piece_50,piece_50_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_75,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_62_mem

theorem linked_76 : Linked cell_76 pieces := by
  refine ⟨piece_51,piece_51_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_76,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_62_mem
    · exact piece_63_mem
    · exact piece_64_mem

theorem linked_77 : Linked cell_77 pieces := by
  refine ⟨piece_52,piece_52_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_77,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_64_mem

theorem linked_78 : Linked cell_78 pieces := by
  refine ⟨piece_52,piece_52_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_78,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_64_mem
    · exact piece_65_mem

theorem linked_79 : Linked cell_79 pieces := by
  refine ⟨piece_53,piece_53_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_79,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_65_mem

theorem linked_80 : Linked cell_80 pieces := by
  refine ⟨piece_53,piece_53_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_80,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_65_mem
    · exact piece_66_mem
    · exact piece_67_mem

theorem linked_81 : Linked cell_81 pieces := by
  refine ⟨piece_54,piece_54_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_81,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_67_mem

theorem linked_82 : Linked cell_82 pieces := by
  refine ⟨piece_55,piece_55_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_82,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_67_mem

theorem linked_83 : Linked cell_83 pieces := by
  refine ⟨piece_55,piece_55_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_83,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_67_mem
    · exact piece_68_mem

theorem linked_84 : Linked cell_84 pieces := by
  refine ⟨piece_56,piece_56_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_84,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_68_mem

theorem linked_85 : Linked cell_85 pieces := by
  refine ⟨piece_57,piece_57_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_85,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_68_mem
    · exact piece_69_mem

theorem linked_86 : Linked cell_86 pieces := by
  refine ⟨piece_58,piece_58_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_86,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_69_mem
    · exact piece_70_mem

theorem linked_87 : Linked cell_87 pieces := by
  refine ⟨piece_58,piece_58_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_87,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_70_mem
    · exact piece_71_mem

theorem linked_88 : Linked cell_88 pieces := by
  refine ⟨piece_59,piece_59_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_88,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_71_mem

theorem linked_89 : Linked cell_89 pieces := by
  refine ⟨piece_59,piece_59_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_89,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_71_mem
    · exact piece_72_mem

theorem linked_90 : Linked cell_90 pieces := by
  refine ⟨piece_59,piece_59_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_90,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_72_mem

theorem linked_91 : Linked cell_91 pieces := by
  refine ⟨piece_60,piece_60_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_91,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_72_mem
    · exact piece_73_mem

theorem linked_92 : Linked cell_92 pieces := by
  refine ⟨piece_61,piece_61_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_92,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_73_mem

theorem linked_93 : Linked cell_93 pieces := by
  refine ⟨piece_61,piece_61_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_93,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_73_mem
    · exact piece_74_mem

theorem linked_94 : Linked cell_94 pieces := by
  refine ⟨piece_62,piece_62_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_94,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_74_mem

theorem linked_95 : Linked cell_95 pieces := by
  refine ⟨piece_62,piece_62_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_95,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_74_mem
    · exact piece_75_mem

theorem linked_96 : Linked cell_96 pieces := by
  refine ⟨piece_63,piece_63_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_96,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_75_mem

theorem linked_97 : Linked cell_97 pieces := by
  refine ⟨piece_64,piece_64_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_97,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_75_mem

theorem linked_98 : Linked cell_98 pieces := by
  refine ⟨piece_64,piece_64_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_98,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_75_mem
    · exact piece_76_mem
    · exact piece_77_mem

theorem linked_99 : Linked cell_99 pieces := by
  refine ⟨piece_65,piece_65_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_99,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_77_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0001.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0001.cells,List.forall_mem_cons]
  exact ⟨linked_50, linked_51, linked_52, linked_53, linked_54, linked_55, linked_56, linked_57, linked_58, linked_59, linked_60, linked_61, linked_62, linked_63, linked_64, linked_65, linked_66, linked_67, linked_68, linked_69, linked_70, linked_71, linked_72, linked_73, linked_74, linked_75, linked_76, linked_77, linked_78, linked_79, linked_80, linked_81, linked_82, linked_83, linked_84, linked_85, linked_86, linked_87, linked_88, linked_89, linked_90, linked_91, linked_92, linked_93, linked_94, linked_95, linked_96, linked_97, linked_98, linked_99, by simp⟩

theorem covered : covers (4260812585502887 / 2500000000000000000000 : ℚ) (12134002964746293 / 400000000000000000000 : ℚ)
    (SourceCertificates.Chunk0001.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0001
