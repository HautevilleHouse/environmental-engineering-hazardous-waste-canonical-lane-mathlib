import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure ContaminantTransportPackage where
  media : Type u
  contaminant : Type v
  advectionDispersionEquation : Prop
  sorptionModel : Prop
  degradationRate : Prop
  boundaryConditions : Prop

structure ContaminantTransportEvidence (C : ContaminantTransportPackage) where
  advectionDispersionEquationClosed : C.advectionDispersionEquation
  sorptionModelClosed : C.sorptionModel
  degradationRateClosed : C.degradationRate
  boundaryConditionsClosed : C.boundaryConditions

def ContaminantTransportClosed (C : ContaminantTransportPackage) : Prop :=
  C.advectionDispersionEquation ∧ C.sorptionModel ∧ C.degradationRate ∧ C.boundaryConditions

theorem contaminant_transport_closed_from_evidence (C : ContaminantTransportPackage) (E : ContaminantTransportEvidence C) : ContaminantTransportClosed C := by
  exact And.intro E.advectionDispersionEquationClosed (And.intro E.sorptionModelClosed (And.intro E.degradationRateClosed E.boundaryConditionsClosed))

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse