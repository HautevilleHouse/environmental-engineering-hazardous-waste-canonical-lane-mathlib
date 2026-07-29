import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure WasteAdmittedObject where
  site : Type
  wasteType : Type
  concentration : Type
  witnessClosed : Prop
  witnessClosedTerm : witnessClosed

structure WasteAdmissibleClass where
  object : WasteAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse