import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.transportModelClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion.left

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse
