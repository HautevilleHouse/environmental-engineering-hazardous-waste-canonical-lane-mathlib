import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.restrictionCategory = "Admissible"

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse