import Support.Controls.EnvelopeData
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic.Candidate540Certificate
open ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1/81 : ℚ), (3428702336996466129/2000000000 : ℚ), (-2645603684118133751/125000000000 : ℚ), 30⟩]

def degrees : List Cell := EnvelopeData.degreeCells (1/81 : ℚ) (tangents)
def cells : List Cell := EnvelopeData.integralCells (12/1 : ℚ) 32 degrees

def data : ControlCertificate.Data where
  p := (62499/1000000 : ℚ)
  x := (2600375328738434161/50000000000000000000 : ℚ)
  μ := (1/81 : ℚ)
  β := (999/1000 : ℚ)
  w := (12/1 : ℚ)
  cutoff := 32
  margin := (1/1000 : ℚ)
  precision := 48
  tangents := tangents
  degrees := degrees
  cells := cells
theorem checked : ControlCertificate.Checks data := by decide +kernel
theorem sound : ControlCertificate.Sound data := ControlCertificate.sound data checked
#print axioms sound
end RamseyAnalytic.Candidate540Certificate
