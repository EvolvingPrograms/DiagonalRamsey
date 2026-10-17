import Support.Controls.ControlCertificate
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic.Candidate540Certificate
open ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1/81 : ℚ), (3428702336996466129/2000000000 : ℚ), (-2645603684118133751/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (32/1 : ℚ), (-4/27 : ℚ), (-567526467179/6750000000000 : ℚ)⟩ ]
def data : ControlCertificate.Data where
  p := (62499/1000000 : ℚ)
  x := (2600375328738434161/50000000000000000000 : ℚ)
  μ := (1/81 : ℚ)
  β := (999/1000 : ℚ)
  w := (12/1 : ℚ)
  cutoff := 32
  margin := (1/1000 : ℚ)
  precision := 48
  tangents := [
    ⟨(1/81 : ℚ), (3428702336996466129/2000000000 : ℚ), (-2645603684118133751/125000000000 : ℚ), 30⟩]
  degrees := degrees
  cells := cells
theorem checked : ControlCertificate.Checks data := by decide +kernel
theorem sound : ControlCertificate.Sound data := ControlCertificate.sound data checked
#print axioms sound
end RamseyAnalytic.Candidate540Certificate
