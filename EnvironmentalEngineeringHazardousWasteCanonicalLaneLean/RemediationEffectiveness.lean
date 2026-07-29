import canonicalLaneMathlib.AdmissibleClass
import ContaminantTransportModel

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure RemediationEffectivenessPackage {T : ContaminantTransportModel} where
  remediationType : Type u
  applicationRate : ℝ
  removalEfficiency : ℝ
  timeToCleanup : ℝ
  cleanupGoalMet : Prop

structure RemediationEffectivenessEvidence {T : ContaminantTransportModel} (R : RemediationEffectivenessPackage T) where
  removalEfficiencyPositive : R.removalEfficiency > 0
  timeToCleanupFinite : R.timeToCleanup < ∞
  cleanupGoalMetClosed : R.cleanupGoalMet

def RemediationEffectivenessClosed {T : ContaminantTransportModel} (R : RemediationEffectivenessPackage T) : Prop :=
  R.cleanupGoalMet

theorem remediation_effectiveness_closed_from_evidence {T : ContaminantTransportModel} (R : RemediationEffectivenessPackage T) (E : RemediationEffectivenessEvidence R) : RemediationEffectivenessClosed R := by
  exact E.cleanupGoalMetClosed

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse