import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure SiteAssessmentPackage where
  siteHistory : Prop
  contaminantDistribution : Prop
  geologicalCharacterization : Prop
  hydrogeologicalModel : Prop
  ecologicalReceptors : Prop

structure SiteAssessmentEvidence (S : SiteAssessmentPackage) where
  siteHistoryClosed : S.siteHistory
  contaminantDistributionClosed : S.contaminantDistribution
  geologicalCharacterizationClosed : S.geologicalCharacterization
  hydrogeologicalModelClosed : S.hydrogeologicalModel
  ecologicalReceptorsClosed : S.ecologicalReceptors

def SiteAssessmentClosed (S : SiteAssessmentPackage) : Prop :=
  S.siteHistory ∧ S.contaminantDistribution ∧ S.geologicalCharacterization ∧ S.hydrogeologicalModel ∧ S.ecologicalReceptors

theorem site_assessment_closed_from_evidence (S : SiteAssessmentPackage) (E : SiteAssessmentEvidence S) : SiteAssessmentClosed S := by
  exact And.intro E.siteHistoryClosed (And.intro E.contaminantDistributionClosed (And.intro E.geologicalCharacterizationClosed (And.intro E.hydrogeologicalModelClosed E.ecologicalReceptorsClosed)))

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse