import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure StellarOrbitIntegrals where
  orbitalEnergy : Type u
  angularMomentum : Type v
  thirdIntegral : Type w
  isolatingIntegrals : Prop
  analyticOrbits : Prop
  integrabilityCondition : Prop

structure OrbitIntegralEvidence (O : StellarOrbitIntegrals) where
  isolatingIntegralsClosed : O.isolatingIntegrals
  analyticOrbitsClosed : O.analyticOrbits
  integrabilityConditionClosed : O.integrabilityCondition

def OrbitIntegralsClosed (O : StellarOrbitIntegrals) : Prop :=
  O.isolatingIntegrals ∧ O.analyticOrbits ∧ O.integrabilityCondition

theorem orbit_integrals_closed_from_evidence (O : StellarOrbitIntegrals)
    (E : OrbitIntegralEvidence O) : OrbitIntegralsClosed O :=
  And.intro E.isolatingIntegralsClosed
    (And.intro E.analyticOrbitsClosed E.integrabilityConditionClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse