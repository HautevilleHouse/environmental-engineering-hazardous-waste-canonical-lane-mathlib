import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure TreatmentTechnologiesPackage where
  treatmentMethod : Type u
  wasteType : Type v
  destructionEfficiency : Prop
  secondaryWaste : Prop
  costEffectiveness : Prop

structure TreatmentTechnologiesEvidence (T : TreatmentTechnologiesPackage) where
  destructionEfficiencyClosed : T.destructionEfficiency
  secondaryWasteClosed : T.secondaryWaste
  costEffectivenessClosed : T.costEffectiveness

def TreatmentTechnologiesClosed (T : TreatmentTechnologiesPackage) : Prop :=
  T.destructionEfficiency ∧ T.secondaryWaste ∧ T.costEffectiveness

theorem treatment_technologies_closed_from_evidence
    (T : TreatmentTechnologiesPackage) (E : TreatmentTechnologiesEvidence T) :
    TreatmentTechnologiesClosed T := by
  exact And.intro E.destructionEfficiencyClosed
    (And.intro E.secondaryWasteClosed E.costEffectivenessClosed)

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse