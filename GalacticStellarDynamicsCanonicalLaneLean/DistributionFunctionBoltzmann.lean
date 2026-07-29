import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure DistributionFunctionBoltzmann where
  phaseSpace : Type u
  dfType : Type v
  collisionTerm : Type w
  collisionlessBoltzmannEquation : Prop
  jeansTheorem : Prop
  dfPositiveDefinite : Prop

structure BoltzmannEvidence (B : DistributionFunctionBoltzmann) where
  collisionlessBoltzmannEquationClosed : B.collisionlessBoltzmannEquation
  jeansTheoremClosed : B.jeansTheorem
  dfPositiveDefiniteClosed : B.dfPositiveDefinite

def BoltzmannClosed (B : DistributionFunctionBoltzmann) : Prop :=
  B.collisionlessBoltzmannEquation ∧ B.jeansTheorem ∧ B.dfPositiveDefinite

theorem boltzmann_closed_from_evidence (B : DistributionFunctionBoltzmann)
    (E : BoltzmannEvidence B) : BoltzmannClosed B :=
  And.intro E.collisionlessBoltzmannEquationClosed
    (And.intro E.jeansTheoremClosed E.dfPositiveDefiniteClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse