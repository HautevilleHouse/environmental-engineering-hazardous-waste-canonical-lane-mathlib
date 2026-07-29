import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.RemediationProofCertificate

/-! Evidence Terms for Hazardous Waste Closure -/

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure TransportEvidenceTerms (A : AdmissibleClass) (T : TransportPackage A) where
  manifestDocumentedClosed : T.manifestDocumented
  containerIntegrityClosed : T.containerIntegrity
  routeComplianceClosed : T.routeCompliance
  transportClosed : TransportClosed A T

def TransportEvidenceTerms.fromEvidence (A : AdmissibleClass) (T : TransportPackage A)
    (hManifest : T.manifestDocumented) (hContainer : T.containerIntegrity)
    (hRoute : T.routeCompliance) : TransportEvidenceTerms A T :=
  { manifestDocumentedClosed := hManifest
    containerIntegrityClosed := hContainer
    routeComplianceClosed := hRoute
    transportClosed := transport_closed_from_evidence A T hManifest hContainer hRoute
  }

structure RemediationEvidenceTerms (A : AdmissibleClass) (C : RemediationCertificate A) where
  treatmentAppliedClosed : C.treatmentApplied
  decontaminationLevelClosed : C.decontaminationLevel
  residualAssessmentClosed : C.residualAssessment
  remediationEvidenceClosed : C.remediationEvidence
  remediationClosed : RemediationCertificateClosed A C

def RemediationEvidenceTerms.fromCertificate (A : AdmissibleClass) (C : RemediationCertificate A) :
    RemediationEvidenceTerms A C :=
  { treatmentAppliedClosed := C.treatmentAppliedClosed
    decontaminationLevelClosed := C.decontaminationLevelClosed
    residualAssessmentClosed := C.residualAssessmentClosed
    remediationEvidenceClosed := C.remediationEvidenceClosed
    remediationClosed := remediation_certificate_closed A C
  }

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse