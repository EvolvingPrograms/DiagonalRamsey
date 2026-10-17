import S7_ParameterChoice.Source.HullGrounded
import S7_ParameterChoice.Source.Domination

set_option autoImplicit false

namespace DiagonalRamsey.HullCover

open DiagRamsey RamseyAnalytic

/-- **Selected hull coverage.** At every positive ratio, the selected line
minus the common reserve has an actual baseline or paired-profile witness.
The profiles' Ramsey assertions remain obligations of the joint construction. -/
theorem selected_bound {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound HullProfiles.profile (symmetricProfile luWangSource 1) t
      (SourceHull.line (SourceHull.selector t) t - (HullCells.reserve : ℝ) * (1 + t)) := by
  rcases HullGrounded.source_classification (SourceHull.selector t) with ⟨i, hi⟩ | ⟨i, hi⟩
  · apply Or.inl
    simpa only [SourceHull.line, hi] using HullGrounded.whole_bound i ht
  · rcases HullCells.selected_classification i hi.symm with ⟨j, hj, hl, hh⟩ | ⟨j, hj, hl, hh⟩
    · have h := PointwiseSource.of_cell (HullCells.all_rows_valid j) ht hl hh
      simpa only [SourceHull.line, hj, hi] using h
    · apply Or.inl
      simpa only [SourceHull.line, hj, hi] using HullGrounded.ground_bound j ht ⟨hl, hh⟩

/-- **Historical source coverage.** The single active hull cover supplies
all 2713 historical source lines at the common positive reserve. This is a
pointwise witness theorem, not a source-admissibility assertion. -/
theorem historical_bound (i : Fin SourceDomination.count) {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound HullProfiles.profile (symmetricProfile luWangSource 1) t
      (((SourceDomination.source i).A : ℝ) + ((SourceDomination.source i).B : ℝ) * t -
        (HullCells.reserve : ℝ) * (1 + t)) :=
  PointwiseSource.mono (selected_bound ht)
    (sub_le_sub_right (SourceDomination.historical_bound i ht.le) _)

#print axioms selected_bound
#print axioms historical_bound

end DiagonalRamsey.HullCover
