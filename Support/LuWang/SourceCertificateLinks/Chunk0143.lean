import Support.LuWang.SourceCertificates.Chunk0143
import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateLinks.Chunk0143
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0143
open AnalyticBounds.ExpressionCertificate

theorem linked_7150 : Linked cell_7150 pieces := by
  refine ⟨piece_650,piece_650_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7150,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2154_mem
    · exact piece_2155_mem

theorem linked_7151 : Linked cell_7151 pieces := by
  refine ⟨piece_651,piece_651_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7151,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2154_mem

theorem linked_7152 : Linked cell_7152 pieces := by
  refine ⟨piece_651,piece_651_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7152,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2153_mem
    · exact piece_2154_mem

theorem linked_7153 : Linked cell_7153 pieces := by
  refine ⟨piece_651,piece_651_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7153,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2152_mem
    · exact piece_2153_mem

theorem linked_7154 : Linked cell_7154 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7154,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2155_mem
    · exact piece_2156_mem

theorem linked_7155 : Linked cell_7155 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7155,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2154_mem
    · exact piece_2155_mem

theorem linked_7156 : Linked cell_7156 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7156,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2153_mem
    · exact piece_2154_mem

theorem linked_7157 : Linked cell_7157 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7157,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2151_mem
    · exact piece_2152_mem
    · exact piece_2153_mem

theorem linked_7158 : Linked cell_7158 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7158,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2150_mem
    · exact piece_2151_mem

theorem linked_7159 : Linked cell_7159 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7159,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2149_mem
    · exact piece_2150_mem

theorem linked_7160 : Linked cell_7160 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7160,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2148_mem
    · exact piece_2149_mem

theorem linked_7161 : Linked cell_7161 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7161,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2147_mem
    · exact piece_2148_mem

theorem linked_7162 : Linked cell_7162 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7162,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2150_mem
    · exact piece_2151_mem

theorem linked_7163 : Linked cell_7163 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7163,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2149_mem
    · exact piece_2150_mem

theorem linked_7164 : Linked cell_7164 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7164,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2148_mem
    · exact piece_2149_mem

theorem linked_7165 : Linked cell_7165 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7165,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2146_mem
    · exact piece_2147_mem
    · exact piece_2148_mem

theorem linked_7166 : Linked cell_7166 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7166,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2145_mem
    · exact piece_2146_mem

theorem linked_7167 : Linked cell_7167 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7167,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2143_mem
    · exact piece_2144_mem
    · exact piece_2145_mem

theorem linked_7168 : Linked cell_7168 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7168,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2142_mem
    · exact piece_2143_mem

theorem linked_7169 : Linked cell_7169 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7169,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2141_mem
    · exact piece_2142_mem

theorem linked_7170 : Linked cell_7170 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7170,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2144_mem
    · exact piece_2145_mem
    · exact piece_2146_mem

theorem linked_7171 : Linked cell_7171 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7171,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2143_mem
    · exact piece_2144_mem

theorem linked_7172 : Linked cell_7172 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7172,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2142_mem
    · exact piece_2143_mem

theorem linked_7173 : Linked cell_7173 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7173,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2141_mem
    · exact piece_2142_mem

theorem linked_7174 : Linked cell_7174 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7174,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2140_mem
    · exact piece_2141_mem

theorem linked_7175 : Linked cell_7175 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7175,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2139_mem
    · exact piece_2140_mem

theorem linked_7176 : Linked cell_7176 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7176,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2138_mem
    · exact piece_2139_mem

theorem linked_7177 : Linked cell_7177 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7177,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2137_mem
    · exact piece_2138_mem

theorem linked_7178 : Linked cell_7178 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7178,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2140_mem
    · exact piece_2141_mem

theorem linked_7179 : Linked cell_7179 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7179,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2139_mem
    · exact piece_2140_mem

theorem linked_7180 : Linked cell_7180 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7180,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2138_mem
    · exact piece_2139_mem

theorem linked_7181 : Linked cell_7181 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7181,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2136_mem
    · exact piece_2137_mem
    · exact piece_2138_mem

theorem linked_7182 : Linked cell_7182 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7182,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2135_mem
    · exact piece_2136_mem

theorem linked_7183 : Linked cell_7183 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7183,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2133_mem
    · exact piece_2134_mem
    · exact piece_2135_mem

theorem linked_7184 : Linked cell_7184 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7184,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2132_mem
    · exact piece_2133_mem

theorem linked_7185 : Linked cell_7185 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7185,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2131_mem
    · exact piece_2132_mem

theorem linked_7186 : Linked cell_7186 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7186,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2135_mem
    · exact piece_2136_mem

theorem linked_7187 : Linked cell_7187 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7187,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2133_mem
    · exact piece_2134_mem
    · exact piece_2135_mem

theorem linked_7188 : Linked cell_7188 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7188,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2132_mem
    · exact piece_2133_mem

theorem linked_7189 : Linked cell_7189 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7189,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2131_mem
    · exact piece_2132_mem

theorem linked_7190 : Linked cell_7190 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7190,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2130_mem
    · exact piece_2131_mem

theorem linked_7191 : Linked cell_7191 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7191,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2129_mem
    · exact piece_2130_mem

theorem linked_7192 : Linked cell_7192 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7192,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2127_mem
    · exact piece_2128_mem
    · exact piece_2129_mem

theorem linked_7193 : Linked cell_7193 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7193,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2126_mem
    · exact piece_2127_mem

theorem linked_7194 : Linked cell_7194 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7194,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2129_mem
    · exact piece_2130_mem
    · exact piece_2131_mem

theorem linked_7195 : Linked cell_7195 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7195,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2128_mem
    · exact piece_2129_mem

theorem linked_7196 : Linked cell_7196 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7196,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2127_mem
    · exact piece_2128_mem

theorem linked_7197 : Linked cell_7197 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7197,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2126_mem
    · exact piece_2127_mem

theorem linked_7198 : Linked cell_7198 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7198,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2125_mem
    · exact piece_2126_mem

theorem linked_7199 : Linked cell_7199 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7199,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2124_mem
    · exact piece_2125_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0143.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0143.cells,List.forall_mem_cons]
  exact ⟨linked_7150, linked_7151, linked_7152, linked_7153, linked_7154, linked_7155, linked_7156, linked_7157, linked_7158, linked_7159, linked_7160, linked_7161, linked_7162, linked_7163, linked_7164, linked_7165, linked_7166, linked_7167, linked_7168, linked_7169, linked_7170, linked_7171, linked_7172, linked_7173, linked_7174, linked_7175, linked_7176, linked_7177, linked_7178, linked_7179, linked_7180, linked_7181, linked_7182, linked_7183, linked_7184, linked_7185, linked_7186, linked_7187, linked_7188, linked_7189, linked_7190, linked_7191, linked_7192, linked_7193, linked_7194, linked_7195, linked_7196, linked_7197, linked_7198, linked_7199, by simp⟩

theorem covered : covers (50660195530726257 / 200000000000000000 : ℚ) (25637500000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0143.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0143
