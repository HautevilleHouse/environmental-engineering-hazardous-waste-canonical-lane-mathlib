import canonicalLaneMathlib.AdmissibleClass
import HazardousWasteBridgeLemmas
import HazardousWasteGateLemmas

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

def ConstrainedHazardousWasteClosure (A : HazardousWasteAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hazardous_waste_endgame (A : HazardousWasteAdmissibleClass) : ConstrainedHazardousWasteClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse