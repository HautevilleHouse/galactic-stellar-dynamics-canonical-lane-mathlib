import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure DistributionFunctionPackage where
  phaseSpace : Type u
  collisionlessBoltzmannEquation : Prop
  jeansTheorem : Prop
  equilibriumDistribution : Prop
  stabilityCondition : Prop

structure DistributionFunctionEvidence (D : DistributionFunctionPackage) where
  collisionlessBoltzmannEquationClosed : D.collisionlessBoltzmannEquation
  jeansTheoremClosed : D.jeansTheorem
  equilibriumDistributionClosed : D.equilibriumDistribution
  stabilityConditionClosed : D.stabilityCondition

def DistributionFunctionClosed (D : DistributionFunctionPackage) : Prop :=
  D.collisionlessBoltzmannEquation ∧ D.jeansTheorem ∧ D.equilibriumDistribution ∧ D.stabilityCondition

theorem distribution_function_closed_from_evidence (D : DistributionFunctionPackage)
    (E : DistributionFunctionEvidence D) : DistributionFunctionClosed D := by
  exact And.intro E.collisionlessBoltzmannEquationClosed
    (And.intro E.jeansTheoremClosed
      (And.intro E.equilibriumDistributionClosed E.stabilityConditionClosed))

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse