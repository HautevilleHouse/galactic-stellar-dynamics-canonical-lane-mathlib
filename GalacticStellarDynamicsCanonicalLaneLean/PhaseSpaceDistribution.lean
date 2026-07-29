import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure PhaseSpaceDistributionPackage where
  distributionFunction : Type u
  phaseSpace : Type v
  collisionlessBoltzmannEquation : Prop
  momentsDefined : Prop
  jeansTheoremApplied : Prop

structure PhaseSpaceDistributionEvidence (P : PhaseSpaceDistributionPackage) where
  collisionlessBoltzmannEquationClosed : P.collisionlessBoltzmannEquation
  momentsDefinedClosed : P.momentsDefined
  jeansTheoremAppliedClosed : P.jeansTheoremApplied

def PhaseSpaceDistributionClosed (P : PhaseSpaceDistributionPackage) : Prop :=
  P.collisionlessBoltzmannEquation ∧ P.momentsDefined ∧ P.jeansTheoremApplied

theorem phase_space_distribution_closed_from_evidence
    (P : PhaseSpaceDistributionPackage) (E : PhaseSpaceDistributionEvidence P) :
    PhaseSpaceDistributionClosed P := by
  exact And.intro E.collisionlessBoltzmannEquationClosed
    (And.intro E.momentsDefinedClosed E.jeansTheoremAppliedClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse