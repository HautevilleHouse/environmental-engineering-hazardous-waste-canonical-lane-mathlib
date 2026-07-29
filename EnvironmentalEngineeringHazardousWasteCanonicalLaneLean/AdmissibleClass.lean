import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure HazardousWasteAdmittedObject where
  siteName : String
  contaminant : String
  concentration : Float
  transportModelClosed : Prop
  riskThresholdMet : Prop
  conclusion : transportModelClosed ∧ riskThresholdMet

structure AdmissibleClass where
  object : HazardousWasteAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.transportModelClosed ∧ A.object.riskThresholdMet ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse
