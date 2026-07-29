import GalacticStellarDynamicsCanonicalLaneLean.GalacticDynamicsObjects

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure PhaseSpacePackage where
  coordinateFunctions : Type u
  distributionFunction : Type v
  poissonEquation : Prop
  collisionTerm : Prop
  equilibriumSolution : Prop

structure PhaseSpaceEvidence (P : PhaseSpacePackage) where
  poissonEquationClosed : P.poissonEquation
  collisionTermClosed : P.collisionTerm
  equilibriumSolutionClosed : P.equilibriumSolution

def PhaseSpaceClosed (P : PhaseSpacePackage) : Prop :=
  P.poissonEquation ∧ P.collisionTerm ∧ P.equilibriumSolution

theorem phase_space_closed_from_evidence (P : PhaseSpacePackage) (E : PhaseSpaceEvidence P) : PhaseSpaceClosed P := by
  exact And.intro E.poissonEquationClosed (And.intro E.collisionTermClosed E.equilibriumSolutionClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse