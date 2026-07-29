import canonicalLaneMathlib.AdmissibleClass
import HazardousWasteBridgeLemmas

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

def gateClosed (A : HazardousWasteAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : HazardousWasteAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse