import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure ContaminantTransportPDE where
  advectionDispersionEquation : Prop
  initialCondition : Prop
  boundaryCondition : Prop
  analyticalSolutionExists : Prop

structure ContaminantTransportEvidence (C : ContaminantTransportPDE) where
  advectionDispersionEquationClosed : C.advectionDispersionEquation
  initialConditionClosed : C.initialCondition
  boundaryConditionClosed : C.boundaryCondition
  analyticalSolutionExistsClosed : C.analyticalSolutionExists

def ContaminantTransportClosed (C : ContaminantTransportPDE) : Prop :=
  C.advectionDispersionEquation ∧ C.initialCondition ∧ C.boundaryCondition ∧ C.analyticalSolutionExists

theorem contaminant_transport_closed_from_evidence (C : ContaminantTransportPDE) (E : ContaminantTransportEvidence C) :
    ContaminantTransportClosed C := by
  exact And.intro E.advectionDispersionEquationClosed
    (And.intro E.initialConditionClosed
      (And.intro E.boundaryConditionClosed E.analyticalSolutionExistsClosed))

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse
