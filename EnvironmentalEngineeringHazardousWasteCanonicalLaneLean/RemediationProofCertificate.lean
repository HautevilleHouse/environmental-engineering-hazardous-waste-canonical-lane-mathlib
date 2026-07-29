import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.HazardWasteTransport

/-! Remediation Process Certificates -/

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure RemediationCertificate (A : AdmissibleClass) where
  treatmentApplied : Prop
  decontaminationLevel : Prop
  residualAssessment : Prop
  remediationEvidence : Prop
  treatmentAppliedClosed : treatmentApplied
  decontaminationLevelClosed : decontaminationLevel
  residualAssessmentClosed : residualAssessment
  remediationEvidenceClosed : remediationEvidence

def RemediationCertificateClosed (A : AdmissibleClass) (C : RemediationCertificate A) : Prop :=
  C.treatmentApplied ∧ C.decontaminationLevel ∧ C.residualAssessment ∧ C.remediationEvidence

theorem remediation_certificate_closed (A : AdmissibleClass) (C : RemediationCertificate A) :
    RemediationCertificateClosed A C := by
  exact And.intro C.treatmentAppliedClosed
    (And.intro C.decontaminationLevelClosed
      (And.intro C.residualAssessmentClosed C.remediationEvidenceClosed))

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse