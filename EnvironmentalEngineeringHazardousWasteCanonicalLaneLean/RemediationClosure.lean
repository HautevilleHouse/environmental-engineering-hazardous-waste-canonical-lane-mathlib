import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.ContaminantTransportPDE

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure RemediationStrategy where
  pumpAndTreat : Prop
  bioremediation : Prop
  monitoredNaturalAttenuation : Prop
  effectivenessMetric : Prop

structure RemediationEvidence (R : RemediationStrategy) where
  pumpAndTreatClosed : R.pumpAndTreat
  bioremediationClosed : R.bioremediation
  monitoredNaturalAttenuationClosed : R.monitoredNaturalAttenuation
  effectivenessMetricClosed : R.effectivenessMetric

def RemediationClosed (R : RemediationStrategy) : Prop :=
  R.pumpAndTreat ∧ R.bioremediation ∧ R.monitoredNaturalAttenuation ∧ R.effectivenessMetric

theorem remediation_closed_from_evidence (R : RemediationStrategy) (E : RemediationEvidence R) :
    RemediationClosed R := by
  exact And.intro E.pumpAndTreatClosed
    (And.intro E.bioremediationClosed
      (And.intro E.monitoredNaturalAttenuationClosed E.effectivenessMetricClosed))

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse
