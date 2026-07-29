import GalacticStellarDynamicsCanonicalLaneLean.StellarOrbitClassification

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure ObservationalConstraintPackage {P : PhaseSpacePackage} {G : PotentialTheoryPackage P} {O : StellarDynamicsAdmittedObject} (C : StellarOrbitClassificationPackage O) where
  observationalData : Type u
  likelihoodModel : Type v
  constraintEquations : Prop
  goodnessOfFit : Prop

structure ObservationalConstraintEvidence {P : PhaseSpacePackage} {G : PotentialTheoryPackage P} {O : StellarDynamicsAdmittedObject} {C : StellarOrbitClassificationPackage O} (R : ObservationalConstraintPackage C) where
  constraintEquationsClosed : R.constraintEquations
  goodnessOfFitClosed : R.goodnessOfFit

def ObservationalConstraintClosed {P : PhaseSpacePackage} {G : PotentialTheoryPackage P} {O : StellarDynamicsAdmittedObject} {C : StellarOrbitClassificationPackage O} (R : ObservationalConstraintPackage C) : Prop :=
  R.constraintEquations ∧ R.goodnessOfFit

theorem observational_constraint_closed_from_evidence {P : PhaseSpacePackage} {G : PotentialTheoryPackage P} {O : StellarDynamicsAdmittedObject} {C : StellarOrbitClassificationPackage O} (R : ObservationalConstraintPackage C) (E : ObservationalConstraintEvidence R) : ObservationalConstraintClosed R := by
  exact And.intro E.constraintEquationsClosed E.goodnessOfFitClosed

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse