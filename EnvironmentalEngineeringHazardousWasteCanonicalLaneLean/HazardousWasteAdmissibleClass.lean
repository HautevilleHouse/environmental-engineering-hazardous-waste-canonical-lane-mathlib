import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure HazardousWasteAdmittedObject where
  siteId : String
  containmentFunction : Prop
  remediationComplete : Bool
  riskAcceptable : Bool
  conclusion : containmentFunction

structure HazardousWasteAdmissibleClass where
  object : HazardousWasteAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse