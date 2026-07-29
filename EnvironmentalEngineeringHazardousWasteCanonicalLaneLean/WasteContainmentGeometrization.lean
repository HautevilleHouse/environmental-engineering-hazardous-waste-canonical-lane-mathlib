import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.WasteCharacterization

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure ContainmentBarrierGeometrizationPackage where
  barrierType : Type u
  thickness : Prop
  permeability : Prop
  integrityUnderLoad : Prop

structure ContainmentBarrierGeometrizationEvidence (Z : ContainmentBarrierGeometrizationPackage) where
  thicknessClosed : Z.thickness
  permeabilityClosed : Z.permeability
  integrityUnderLoadClosed : Z.integrityUnderLoad

def ContainmentBarrierGeometrizationClosed (Z : ContainmentBarrierGeometrizationPackage) : Prop :=
  Z.thickness ∧ Z.permeability ∧ Z.integrityUnderLoad

theorem containment_barrier_geometrization_closed_from_evidence (Z : ContainmentBarrierGeometrizationPackage)
    (E : ContainmentBarrierGeometrizationEvidence Z) : ContainmentBarrierGeometrizationClosed Z := by
  exact And.intro E.thicknessClosed (And.intro E.permeabilityClosed E.integrityUnderLoadClosed)

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse