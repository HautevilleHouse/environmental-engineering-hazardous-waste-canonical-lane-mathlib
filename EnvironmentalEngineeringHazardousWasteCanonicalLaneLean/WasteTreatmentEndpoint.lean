import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.WasteCharacterization

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure WasteTreatmentEndpointPackage where
  treatmentMethod : Type u
  reductionFactor : Prop
  finalConcentrationBelowThreshold : Prop
  complianceCertificate : Prop

structure WasteTreatmentEndpointEvidence (Epkg : WasteTreatmentEndpointPackage) where
  reductionFactorClosed : Epkg.reductionFactor
  finalConcentrationBelowThresholdClosed : Epkg.finalConcentrationBelowThreshold
  complianceCertificateClosed : Epkg.complianceCertificate

def WasteTreatmentEndpointClosed (Epkg : WasteTreatmentEndpointPackage) : Prop :=
  Epkg.reductionFactor ∧ Epkg.finalConcentrationBelowThreshold ∧ Epkg.complianceCertificate

theorem waste_treatment_endpoint_closed_from_evidence (Epkg : WasteTreatmentEndpointPackage)
    (E : WasteTreatmentEndpointEvidence Epkg) : WasteTreatmentEndpointClosed Epkg := by
  exact And.intro E.reductionFactorClosed
    (And.intro E.finalConcentrationBelowThresholdClosed E.complianceCertificateClosed)

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse