import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure StellarDynamicsAdmissibleObject where
  galaxyModel : Type u
  potentialClosed : Prop
  distributionStable : Prop
  waveDispersionChecked : Prop
  conclusion : potentialClosed ∧ distributionStable ∧ waveDispersionChecked

structure AdmissibleClass where
  object : StellarDynamicsAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.potentialClosed ∧ A.object.distributionStable ∧ A.object.waveDispersionChecked) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse