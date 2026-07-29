import canonicalLaneMathlib.AdmissibleClass
import HazardousWasteAdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

def bridgeClosed (A : HazardousWasteAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : HazardousWasteAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse