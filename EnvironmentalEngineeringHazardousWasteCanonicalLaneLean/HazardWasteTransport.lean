import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.ContainmentBridge

/-! Hazardous Waste Transport and Disposal Package -/

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure TransportPackage (A : AdmissibleClass) where
  manifestDocumented : Prop
  containerIntegrity : Prop
  routeCompliance : Prop

def TransportClosed (A : AdmissibleClass) (T : TransportPackage A) : Prop :=
  T.manifestDocumented ∧ T.containerIntegrity ∧ T.routeCompliance

theorem transport_closed_from_evidence (A : AdmissibleClass) (T : TransportPackage A)
    (hManifest : T.manifestDocumented) (hContainer : T.containerIntegrity)
    (hRoute : T.routeCompliance) : TransportClosed A T := by
  exact And.intro hManifest (And.intro hContainer hRoute)

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse