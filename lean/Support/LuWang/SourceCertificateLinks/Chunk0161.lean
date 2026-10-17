import Support.LuWang.SourceCertificates.Chunk0161
import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateLinks.Chunk0161
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0161
open AnalyticBounds.ExpressionCertificate

theorem linked_8050 : Linked cell_8050 pieces := by
  refine ⟨piece_771,piece_771_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8050,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1714_mem
    · exact piece_1715_mem

theorem linked_8051 : Linked cell_8051 pieces := by
  refine ⟨piece_772,piece_772_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8051,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1714_mem

theorem linked_8052 : Linked cell_8052 pieces := by
  refine ⟨piece_772,piece_772_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8052,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1713_mem
    · exact piece_1714_mem

theorem linked_8053 : Linked cell_8053 pieces := by
  refine ⟨piece_772,piece_772_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8053,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1711_mem
    · exact piece_1712_mem
    · exact piece_1713_mem

theorem linked_8054 : Linked cell_8054 pieces := by
  refine ⟨piece_772,piece_772_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8054,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1711_mem

theorem linked_8055 : Linked cell_8055 pieces := by
  refine ⟨piece_772,piece_772_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8055,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1710_mem
    · exact piece_1711_mem

theorem linked_8056 : Linked cell_8056 pieces := by
  refine ⟨piece_772,piece_772_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8056,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1709_mem
    · exact piece_1710_mem

theorem linked_8057 : Linked cell_8057 pieces := by
  refine ⟨piece_773,piece_773_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8057,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1711_mem
    · exact piece_1712_mem
    · exact piece_1713_mem

theorem linked_8058 : Linked cell_8058 pieces := by
  refine ⟨piece_773,piece_773_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8058,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1711_mem

theorem linked_8059 : Linked cell_8059 pieces := by
  refine ⟨piece_773,piece_773_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8059,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1710_mem
    · exact piece_1711_mem

theorem linked_8060 : Linked cell_8060 pieces := by
  refine ⟨piece_773,piece_773_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8060,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1709_mem
    · exact piece_1710_mem

theorem linked_8061 : Linked cell_8061 pieces := by
  refine ⟨piece_773,piece_773_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8061,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1708_mem
    · exact piece_1709_mem

theorem linked_8062 : Linked cell_8062 pieces := by
  refine ⟨piece_773,piece_773_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8062,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1708_mem

theorem linked_8063 : Linked cell_8063 pieces := by
  refine ⟨piece_773,piece_773_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8063,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1707_mem
    · exact piece_1708_mem

theorem linked_8064 : Linked cell_8064 pieces := by
  refine ⟨piece_773,piece_773_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8064,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1706_mem
    · exact piece_1707_mem

theorem linked_8065 : Linked cell_8065 pieces := by
  refine ⟨piece_774,piece_774_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8065,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1708_mem
    · exact piece_1709_mem

theorem linked_8066 : Linked cell_8066 pieces := by
  refine ⟨piece_774,piece_774_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8066,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1708_mem

theorem linked_8067 : Linked cell_8067 pieces := by
  refine ⟨piece_774,piece_774_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8067,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1707_mem
    · exact piece_1708_mem

theorem linked_8068 : Linked cell_8068 pieces := by
  refine ⟨piece_774,piece_774_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8068,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1706_mem
    · exact piece_1707_mem

theorem linked_8069 : Linked cell_8069 pieces := by
  refine ⟨piece_774,piece_774_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8069,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1706_mem

theorem linked_8070 : Linked cell_8070 pieces := by
  refine ⟨piece_774,piece_774_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8070,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1705_mem
    · exact piece_1706_mem

theorem linked_8071 : Linked cell_8071 pieces := by
  refine ⟨piece_774,piece_774_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8071,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1704_mem
    · exact piece_1705_mem

theorem linked_8072 : Linked cell_8072 pieces := by
  refine ⟨piece_774,piece_774_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8072,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1704_mem

theorem linked_8073 : Linked cell_8073 pieces := by
  refine ⟨piece_775,piece_775_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8073,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1706_mem

theorem linked_8074 : Linked cell_8074 pieces := by
  refine ⟨piece_775,piece_775_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8074,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1705_mem
    · exact piece_1706_mem

theorem linked_8075 : Linked cell_8075 pieces := by
  refine ⟨piece_775,piece_775_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8075,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1704_mem
    · exact piece_1705_mem

theorem linked_8076 : Linked cell_8076 pieces := by
  refine ⟨piece_775,piece_775_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8076,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1704_mem

theorem linked_8077 : Linked cell_8077 pieces := by
  refine ⟨piece_775,piece_775_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8077,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1703_mem
    · exact piece_1704_mem

theorem linked_8078 : Linked cell_8078 pieces := by
  refine ⟨piece_775,piece_775_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8078,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1702_mem
    · exact piece_1703_mem

theorem linked_8079 : Linked cell_8079 pieces := by
  refine ⟨piece_775,piece_775_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8079,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1701_mem
    · exact piece_1702_mem

theorem linked_8080 : Linked cell_8080 pieces := by
  refine ⟨piece_775,piece_775_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8080,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1701_mem

theorem linked_8081 : Linked cell_8081 pieces := by
  refine ⟨piece_776,piece_776_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8081,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1703_mem

theorem linked_8082 : Linked cell_8082 pieces := by
  refine ⟨piece_776,piece_776_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8082,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1702_mem
    · exact piece_1703_mem

theorem linked_8083 : Linked cell_8083 pieces := by
  refine ⟨piece_776,piece_776_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8083,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1701_mem
    · exact piece_1702_mem

theorem linked_8084 : Linked cell_8084 pieces := by
  refine ⟨piece_776,piece_776_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8084,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1701_mem

theorem linked_8085 : Linked cell_8085 pieces := by
  refine ⟨piece_776,piece_776_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8085,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1699_mem
    · exact piece_1700_mem
    · exact piece_1701_mem

theorem linked_8086 : Linked cell_8086 pieces := by
  refine ⟨piece_776,piece_776_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8086,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1698_mem
    · exact piece_1699_mem

theorem linked_8087 : Linked cell_8087 pieces := by
  refine ⟨piece_776,piece_776_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8087,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1698_mem

theorem linked_8088 : Linked cell_8088 pieces := by
  refine ⟨piece_776,piece_776_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8088,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1697_mem
    · exact piece_1698_mem

theorem linked_8089 : Linked cell_8089 pieces := by
  refine ⟨piece_777,piece_777_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8089,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1699_mem
    · exact piece_1700_mem
    · exact piece_1701_mem

theorem linked_8090 : Linked cell_8090 pieces := by
  refine ⟨piece_777,piece_777_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8090,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1698_mem
    · exact piece_1699_mem

theorem linked_8091 : Linked cell_8091 pieces := by
  refine ⟨piece_777,piece_777_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8091,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1698_mem

theorem linked_8092 : Linked cell_8092 pieces := by
  refine ⟨piece_777,piece_777_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8092,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1697_mem
    · exact piece_1698_mem

theorem linked_8093 : Linked cell_8093 pieces := by
  refine ⟨piece_777,piece_777_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8093,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1696_mem
    · exact piece_1697_mem

theorem linked_8094 : Linked cell_8094 pieces := by
  refine ⟨piece_777,piece_777_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8094,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1695_mem
    · exact piece_1696_mem

theorem linked_8095 : Linked cell_8095 pieces := by
  refine ⟨piece_777,piece_777_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8095,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1695_mem

theorem linked_8096 : Linked cell_8096 pieces := by
  refine ⟨piece_777,piece_777_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8096,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1694_mem
    · exact piece_1695_mem

theorem linked_8097 : Linked cell_8097 pieces := by
  refine ⟨piece_778,piece_778_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8097,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1696_mem
    · exact piece_1697_mem

theorem linked_8098 : Linked cell_8098 pieces := by
  refine ⟨piece_778,piece_778_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8098,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1695_mem
    · exact piece_1696_mem

theorem linked_8099 : Linked cell_8099 pieces := by
  refine ⟨piece_778,piece_778_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8099,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1695_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0161.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0161.cells,List.forall_mem_cons]
  exact ⟨linked_8050, linked_8051, linked_8052, linked_8053, linked_8054, linked_8055, linked_8056, linked_8057, linked_8058, linked_8059, linked_8060, linked_8061, linked_8062, linked_8063, linked_8064, linked_8065, linked_8066, linked_8067, linked_8068, linked_8069, linked_8070, linked_8071, linked_8072, linked_8073, linked_8074, linked_8075, linked_8076, linked_8077, linked_8078, linked_8079, linked_8080, linked_8081, linked_8082, linked_8083, linked_8084, linked_8085, linked_8086, linked_8087, linked_8088, linked_8089, linked_8090, linked_8091, linked_8092, linked_8093, linked_8094, linked_8095, linked_8096, linked_8097, linked_8098, linked_8099, by simp⟩

theorem covered : covers (30857960893854747 / 100000000000000000 : ℚ) (4987 / 16000 : ℚ)
    (SourceCertificates.Chunk0161.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0161
