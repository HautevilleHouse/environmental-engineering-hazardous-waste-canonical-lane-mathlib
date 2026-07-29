import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.WasteAdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

def bridgeClosed (A : WasteAdmissibleClass) : Prop :=
  A.object.witnessClosed

theorem bridge_from_admissible_class (A : WasteAdmissibleClass) : bridgeClosed A := by
  exact A.object.witnessClosedTerm

def gateClosed (A : WasteAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : WasteAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedWasteClosure (A : WasteAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_waste_closure_endgame (A : WasteAdmissibleClass) :
    ConstrainedWasteClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse