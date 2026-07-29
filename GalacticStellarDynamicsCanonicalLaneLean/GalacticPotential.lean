import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure GalacticPotentialPackage where
  potentialFunction : Type u
  poissonEquation : Prop
  boundaryConditions : Prop
  smoothnessAssumptions : Prop
  rotationCurveConsistency : Prop

structure GalacticPotentialEvidence (P : GalacticPotentialPackage) where
  poissonEquationClosed : P.poissonEquation
  boundaryConditionsClosed : P.boundaryConditions
  smoothnessAssumptionsClosed : P.smoothnessAssumptions
  rotationCurveConsistencyClosed : P.rotationCurveConsistency

def GalacticPotentialClosed (P : GalacticPotentialPackage) : Prop :=
  P.poissonEquation ∧ P.boundaryConditions ∧ P.smoothnessAssumptions ∧ P.rotationCurveConsistency

theorem galactic_potential_closed_from_evidence (P : GalacticPotentialPackage)
    (E : GalacticPotentialEvidence P) : GalacticPotentialClosed P := by
  exact And.intro E.poissonEquationClosed
    (And.intro E.boundaryConditionsClosed
      (And.intro E.smoothnessAssumptionsClosed E.rotationCurveConsistencyClosed))

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse