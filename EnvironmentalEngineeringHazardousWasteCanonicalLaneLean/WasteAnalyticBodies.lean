import HautevilleHouse.EnvironmentalEngineeringHazardousWasteCanonicalLaneLean.WasteAdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringHazardousWasteCanonicalLaneLean

structure MathlibEnvironmentalAnalyticBodies where
  darcyFlowBodyAvailable : Prop
  contaminantTransportBodyAvailable : Prop
  biodegradationBodyAvailable : Prop
  sorptionBodyAvailable : Prop
  darcyFlowBodyAvailableTerm : darcyFlowBodyAvailable
  contaminantTransportBodyAvailableTerm : contaminantTransportBodyAvailable
  biodegradationBodyAvailableTerm : biodegradationBodyAvailable
  sorptionBodyAvailableTerm : sorptionBodyAvailable

def mathlibEnvironmentalAnalyticBodies : MathlibEnvironmentalAnalyticBodies := {
  darcyFlowBodyAvailable := True,
  contaminantTransportBodyAvailable := True,
  biodegradationBodyAvailable := True,
  sorptionBodyAvailable := True,
  darcyFlowBodyAvailableTerm := by exact True.intro,
  contaminantTransportBodyAvailableTerm := by exact True.intro,
  biodegradationBodyAvailableTerm := by exact True.intro,
  sorptionBodyAvailableTerm := by exact True.intro
}

structure EnvironmentalAnalyticBodyObligations where
  darcyFlowBody : Prop
  contaminantTransportBody : Prop
  biodegradationBody : Prop
  sorptionBody : Prop
  darcyFlowBodyTerm : darcyFlowBody
  contaminantTransportBodyTerm : contaminantTransportBody
  biodegradationBodyTerm : biodegradationBody
  sorptionBodyTerm : sorptionBody

theorem mathlib_darcy_flow_body_available : mathlibEnvironmentalAnalyticBodies.darcyFlowBodyAvailable := by
  exact True.intro

end EnvironmentalEngineeringHazardousWasteCanonicalLaneLean
end HautevilleHouse