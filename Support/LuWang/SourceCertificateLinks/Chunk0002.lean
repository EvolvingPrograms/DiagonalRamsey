import Support.LuWang.SourceCertificates.Chunk0002
import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateLinks.Chunk0002
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0002
open AnalyticBounds.ExpressionCertificate

theorem linked_100 : Linked cell_100 pieces := by
  refine ⟨piece_65,piece_65_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_100,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_77_mem
    · exact piece_78_mem

theorem linked_101 : Linked cell_101 pieces := by
  refine ⟨piece_66,piece_66_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_101,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_78_mem
    · exact piece_79_mem

theorem linked_102 : Linked cell_102 pieces := by
  refine ⟨piece_67,piece_67_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_102,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_79_mem

theorem linked_103 : Linked cell_103 pieces := by
  refine ⟨piece_67,piece_67_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_103,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_79_mem

theorem linked_104 : Linked cell_104 pieces := by
  refine ⟨piece_67,piece_67_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_104,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_79_mem

theorem linked_105 : Linked cell_105 pieces := by
  refine ⟨piece_67,piece_67_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_105,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_79_mem
    · exact piece_80_mem

theorem linked_106 : Linked cell_106 pieces := by
  refine ⟨piece_68,piece_68_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_106,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_80_mem

theorem linked_107 : Linked cell_107 pieces := by
  refine ⟨piece_68,piece_68_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_107,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_80_mem

theorem linked_108 : Linked cell_108 pieces := by
  refine ⟨piece_68,piece_68_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_108,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_80_mem
    · exact piece_81_mem

theorem linked_109 : Linked cell_109 pieces := by
  refine ⟨piece_69,piece_69_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_109,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_81_mem

theorem linked_110 : Linked cell_110 pieces := by
  refine ⟨piece_70,piece_70_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_110,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_81_mem

theorem linked_111 : Linked cell_111 pieces := by
  refine ⟨piece_70,piece_70_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_111,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_81_mem
    · exact piece_82_mem

theorem linked_112 : Linked cell_112 pieces := by
  refine ⟨piece_71,piece_71_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_112,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_82_mem
    · exact piece_83_mem
    · exact piece_84_mem

theorem linked_113 : Linked cell_113 pieces := by
  refine ⟨piece_71,piece_71_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_113,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_84_mem

theorem linked_114 : Linked cell_114 pieces := by
  refine ⟨piece_72,piece_72_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_114,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_84_mem

theorem linked_115 : Linked cell_115 pieces := by
  refine ⟨piece_72,piece_72_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_115,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_84_mem
    · exact piece_85_mem

theorem linked_116 : Linked cell_116 pieces := by
  refine ⟨piece_73,piece_73_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_116,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_85_mem

theorem linked_117 : Linked cell_117 pieces := by
  refine ⟨piece_73,piece_73_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_117,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_85_mem

theorem linked_118 : Linked cell_118 pieces := by
  refine ⟨piece_73,piece_73_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_118,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_85_mem

theorem linked_119 : Linked cell_119 pieces := by
  refine ⟨piece_73,piece_73_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_119,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_85_mem
    · exact piece_86_mem

theorem linked_120 : Linked cell_120 pieces := by
  refine ⟨piece_74,piece_74_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_120,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_86_mem

theorem linked_121 : Linked cell_121 pieces := by
  refine ⟨piece_74,piece_74_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_121,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_86_mem

theorem linked_122 : Linked cell_122 pieces := by
  refine ⟨piece_74,piece_74_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_122,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_86_mem

theorem linked_123 : Linked cell_123 pieces := by
  refine ⟨piece_74,piece_74_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_123,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_86_mem
    · exact piece_87_mem

theorem linked_124 : Linked cell_124 pieces := by
  refine ⟨piece_75,piece_75_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_124,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_87_mem

theorem linked_125 : Linked cell_125 pieces := by
  refine ⟨piece_75,piece_75_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_125,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_87_mem

theorem linked_126 : Linked cell_126 pieces := by
  refine ⟨piece_75,piece_75_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_126,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_87_mem

theorem linked_127 : Linked cell_127 pieces := by
  refine ⟨piece_75,piece_75_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_127,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_87_mem

theorem linked_128 : Linked cell_128 pieces := by
  refine ⟨piece_76,piece_76_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_128,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_87_mem
    · exact piece_88_mem

theorem linked_129 : Linked cell_129 pieces := by
  refine ⟨piece_77,piece_77_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_129,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_88_mem
    · exact piece_89_mem

theorem linked_130 : Linked cell_130 pieces := by
  refine ⟨piece_77,piece_77_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_130,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_89_mem

theorem linked_131 : Linked cell_131 pieces := by
  refine ⟨piece_78,piece_78_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_131,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_89_mem
    · exact piece_90_mem

theorem linked_132 : Linked cell_132 pieces := by
  refine ⟨piece_78,piece_78_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_132,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_90_mem
    · exact piece_91_mem

theorem linked_133 : Linked cell_133 pieces := by
  refine ⟨piece_79,piece_79_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_133,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_91_mem

theorem linked_134 : Linked cell_134 pieces := by
  refine ⟨piece_79,piece_79_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_134,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_91_mem

theorem linked_135 : Linked cell_135 pieces := by
  refine ⟨piece_79,piece_79_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_135,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_91_mem

theorem linked_136 : Linked cell_136 pieces := by
  refine ⟨piece_79,piece_79_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_136,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_91_mem
    · exact piece_92_mem

theorem linked_137 : Linked cell_137 pieces := by
  refine ⟨piece_80,piece_80_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_137,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_92_mem

theorem linked_138 : Linked cell_138 pieces := by
  refine ⟨piece_80,piece_80_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_138,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_92_mem

theorem linked_139 : Linked cell_139 pieces := by
  refine ⟨piece_80,piece_80_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_139,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_92_mem

theorem linked_140 : Linked cell_140 pieces := by
  refine ⟨piece_80,piece_80_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_140,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_92_mem
    · exact piece_93_mem

theorem linked_141 : Linked cell_141 pieces := by
  refine ⟨piece_81,piece_81_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_141,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_93_mem

theorem linked_142 : Linked cell_142 pieces := by
  refine ⟨piece_81,piece_81_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_142,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_93_mem

theorem linked_143 : Linked cell_143 pieces := by
  refine ⟨piece_81,piece_81_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_143,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_93_mem

theorem linked_144 : Linked cell_144 pieces := by
  refine ⟨piece_81,piece_81_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_144,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_93_mem
    · exact piece_94_mem

theorem linked_145 : Linked cell_145 pieces := by
  refine ⟨piece_82,piece_82_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_145,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_94_mem
    · exact piece_95_mem

theorem linked_146 : Linked cell_146 pieces := by
  refine ⟨piece_83,piece_83_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_146,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_95_mem

theorem linked_147 : Linked cell_147 pieces := by
  refine ⟨piece_84,piece_84_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_147,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_95_mem

theorem linked_148 : Linked cell_148 pieces := by
  refine ⟨piece_84,piece_84_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_148,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_95_mem

theorem linked_149 : Linked cell_149 pieces := by
  refine ⟨piece_84,piece_84_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_149,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_95_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0002.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0002.cells,List.forall_mem_cons]
  exact ⟨linked_100, linked_101, linked_102, linked_103, linked_104, linked_105, linked_106, linked_107, linked_108, linked_109, linked_110, linked_111, linked_112, linked_113, linked_114, linked_115, linked_116, linked_117, linked_118, linked_119, linked_120, linked_121, linked_122, linked_123, linked_124, linked_125, linked_126, linked_127, linked_128, linked_129, linked_130, linked_131, linked_132, linked_133, linked_134, linked_135, linked_136, linked_137, linked_138, linked_139, linked_140, linked_141, linked_142, linked_143, linked_144, linked_145, linked_146, linked_147, linked_148, linked_149, by simp⟩

theorem covered : covers (12134002964746293 / 400000000000000000000 : ℚ) (2830928627843567 / 20000000000000000000 : ℚ)
    (SourceCertificates.Chunk0002.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0002
