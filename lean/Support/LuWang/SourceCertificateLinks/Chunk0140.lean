import Support.LuWang.SourceCertificates.Chunk0140
import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateLinks.Chunk0140
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0140
open AnalyticBounds.ExpressionCertificate

theorem linked_7000 : Linked cell_7000 pieces := by
  refine ⟨piece_625,piece_625_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7000,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2160_mem
    · exact piece_2161_mem
    · exact piece_2162_mem

theorem linked_7001 : Linked cell_7001 pieces := by
  refine ⟨piece_625,piece_625_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7001,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2162_mem
    · exact piece_2163_mem

theorem linked_7002 : Linked cell_7002 pieces := by
  refine ⟨piece_625,piece_625_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7002,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2163_mem
    · exact piece_2164_mem
    · exact piece_2165_mem

theorem linked_7003 : Linked cell_7003 pieces := by
  refine ⟨piece_626,piece_626_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7003,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2164_mem
    · exact piece_2165_mem

theorem linked_7004 : Linked cell_7004 pieces := by
  refine ⟨piece_626,piece_626_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7004,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2165_mem
    · exact piece_2166_mem

theorem linked_7005 : Linked cell_7005 pieces := by
  refine ⟨piece_626,piece_626_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7005,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2166_mem
    · exact piece_2167_mem

theorem linked_7006 : Linked cell_7006 pieces := by
  refine ⟨piece_626,piece_626_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7006,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2167_mem

theorem linked_7007 : Linked cell_7007 pieces := by
  refine ⟨piece_627,piece_627_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7007,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2167_mem
    · exact piece_2168_mem

theorem linked_7008 : Linked cell_7008 pieces := by
  refine ⟨piece_627,piece_627_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7008,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2168_mem

theorem linked_7009 : Linked cell_7009 pieces := by
  refine ⟨piece_627,piece_627_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7009,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2168_mem
    · exact piece_2169_mem

theorem linked_7010 : Linked cell_7010 pieces := by
  refine ⟨piece_627,piece_627_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7010,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2169_mem
    · exact piece_2170_mem

theorem linked_7011 : Linked cell_7011 pieces := by
  refine ⟨piece_628,piece_628_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7011,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2168_mem
    · exact piece_2169_mem

theorem linked_7012 : Linked cell_7012 pieces := by
  refine ⟨piece_628,piece_628_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7012,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2169_mem
    · exact piece_2170_mem

theorem linked_7013 : Linked cell_7013 pieces := by
  refine ⟨piece_628,piece_628_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7013,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2170_mem
    · exact piece_2171_mem
    · exact piece_2172_mem

theorem linked_7014 : Linked cell_7014 pieces := by
  refine ⟨piece_628,piece_628_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7014,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2172_mem

theorem linked_7015 : Linked cell_7015 pieces := by
  refine ⟨piece_628,piece_628_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7015,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2172_mem
    · exact piece_2173_mem

theorem linked_7016 : Linked cell_7016 pieces := by
  refine ⟨piece_628,piece_628_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7016,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2173_mem
    · exact piece_2174_mem

theorem linked_7017 : Linked cell_7017 pieces := by
  refine ⟨piece_628,piece_628_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7017,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2174_mem
    · exact piece_2175_mem

theorem linked_7018 : Linked cell_7018 pieces := by
  refine ⟨piece_628,piece_628_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7018,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2175_mem

theorem linked_7019 : Linked cell_7019 pieces := by
  refine ⟨piece_629,piece_629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7019,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2174_mem
    · exact piece_2175_mem

theorem linked_7020 : Linked cell_7020 pieces := by
  refine ⟨piece_629,piece_629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7020,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2175_mem
    · exact piece_2176_mem

theorem linked_7021 : Linked cell_7021 pieces := by
  refine ⟨piece_629,piece_629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7021,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2176_mem
    · exact piece_2177_mem

theorem linked_7022 : Linked cell_7022 pieces := by
  refine ⟨piece_629,piece_629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7022,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2177_mem

theorem linked_7023 : Linked cell_7023 pieces := by
  refine ⟨piece_629,piece_629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7023,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2177_mem
    · exact piece_2178_mem

theorem linked_7024 : Linked cell_7024 pieces := by
  refine ⟨piece_629,piece_629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7024,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2178_mem
    · exact piece_2179_mem

theorem linked_7025 : Linked cell_7025 pieces := by
  refine ⟨piece_629,piece_629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7025,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2179_mem
    · exact piece_2180_mem

theorem linked_7026 : Linked cell_7026 pieces := by
  refine ⟨piece_629,piece_629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7026,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2180_mem

theorem linked_7027 : Linked cell_7027 pieces := by
  refine ⟨piece_630,piece_630_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7027,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2179_mem
    · exact piece_2180_mem
    · exact piece_2181_mem

theorem linked_7028 : Linked cell_7028 pieces := by
  refine ⟨piece_630,piece_630_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7028,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2181_mem
    · exact piece_2182_mem
    · exact piece_2183_mem

theorem linked_7029 : Linked cell_7029 pieces := by
  refine ⟨piece_630,piece_630_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7029,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2183_mem
    · exact piece_2184_mem
    · exact piece_2185_mem

theorem linked_7030 : Linked cell_7030 pieces := by
  refine ⟨piece_630,piece_630_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7030,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2185_mem
    · exact piece_2186_mem

theorem linked_7031 : Linked cell_7031 pieces := by
  refine ⟨piece_631,piece_631_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7031,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2185_mem
    · exact piece_2186_mem
    · exact piece_2187_mem

theorem linked_7032 : Linked cell_7032 pieces := by
  refine ⟨piece_631,piece_631_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7032,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2187_mem
    · exact piece_2188_mem

theorem linked_7033 : Linked cell_7033 pieces := by
  refine ⟨piece_631,piece_631_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7033,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2188_mem
    · exact piece_2189_mem
    · exact piece_2190_mem

theorem linked_7034 : Linked cell_7034 pieces := by
  refine ⟨piece_631,piece_631_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7034,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2190_mem
    · exact piece_2191_mem

theorem linked_7035 : Linked cell_7035 pieces := by
  refine ⟨piece_632,piece_632_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7035,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2190_mem
    · exact piece_2191_mem
    · exact piece_2192_mem

theorem linked_7036 : Linked cell_7036 pieces := by
  refine ⟨piece_632,piece_632_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7036,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2192_mem
    · exact piece_2193_mem

theorem linked_7037 : Linked cell_7037 pieces := by
  refine ⟨piece_632,piece_632_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7037,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2193_mem
    · exact piece_2194_mem
    · exact piece_2195_mem
    · exact piece_2196_mem

theorem linked_7038 : Linked cell_7038 pieces := by
  refine ⟨piece_632,piece_632_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7038,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2196_mem
    · exact piece_2197_mem

theorem linked_7039 : Linked cell_7039 pieces := by
  refine ⟨piece_633,piece_633_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7039,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2196_mem
    · exact piece_2197_mem

theorem linked_7040 : Linked cell_7040 pieces := by
  refine ⟨piece_633,piece_633_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7040,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2197_mem
    · exact piece_2198_mem
    · exact piece_2199_mem

theorem linked_7041 : Linked cell_7041 pieces := by
  refine ⟨piece_633,piece_633_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7041,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2199_mem
    · exact piece_2200_mem
    · exact piece_2201_mem

theorem linked_7042 : Linked cell_7042 pieces := by
  refine ⟨piece_633,piece_633_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7042,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2201_mem
    · exact piece_2202_mem

theorem linked_7043 : Linked cell_7043 pieces := by
  refine ⟨piece_634,piece_634_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7043,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2201_mem
    · exact piece_2202_mem
    · exact piece_2203_mem
    · exact piece_2204_mem

theorem linked_7044 : Linked cell_7044 pieces := by
  refine ⟨piece_634,piece_634_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7044,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl
    · exact piece_2204_mem
    · exact piece_2205_mem
    · exact piece_2206_mem
    · exact piece_2207_mem
    · exact piece_2208_mem

theorem linked_7045 : Linked cell_7045 pieces := by
  refine ⟨piece_635,piece_635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7045,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2235_mem
    · exact piece_2236_mem

theorem linked_7046 : Linked cell_7046 pieces := by
  refine ⟨piece_635,piece_635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7046,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2234_mem
    · exact piece_2235_mem

theorem linked_7047 : Linked cell_7047 pieces := by
  refine ⟨piece_635,piece_635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7047,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2233_mem
    · exact piece_2234_mem

theorem linked_7048 : Linked cell_7048 pieces := by
  refine ⟨piece_635,piece_635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7048,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2232_mem
    · exact piece_2233_mem

theorem linked_7049 : Linked cell_7049 pieces := by
  refine ⟨piece_635,piece_635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7049,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2230_mem
    · exact piece_2231_mem
    · exact piece_2232_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0140.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0140.cells,List.forall_mem_cons]
  exact ⟨linked_7000, linked_7001, linked_7002, linked_7003, linked_7004, linked_7005, linked_7006, linked_7007, linked_7008, linked_7009, linked_7010, linked_7011, linked_7012, linked_7013, linked_7014, linked_7015, linked_7016, linked_7017, linked_7018, linked_7019, linked_7020, linked_7021, linked_7022, linked_7023, linked_7024, linked_7025, linked_7026, linked_7027, linked_7028, linked_7029, linked_7030, linked_7031, linked_7032, linked_7033, linked_7034, linked_7035, linked_7036, linked_7037, linked_7038, linked_7039, linked_7040, linked_7041, linked_7042, linked_7043, linked_7044, linked_7045, linked_7046, linked_7047, linked_7048, linked_7049, by simp⟩

theorem covered : covers (24162499999999999 / 100000000000000000 : ℚ) (3941 / 16000 : ℚ)
    (SourceCertificates.Chunk0140.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0140
