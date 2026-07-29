import GalacticStellarDynamicsCanonicalLaneLean.PhaseSpaceDynamics

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure PotentialTheoryPackage (P : PhaseSpacePackage) where
  gravitationalPotential : Type u
  poissonSolver : Type v
  boundaryConditions : Prop
  potentialRegularity : Prop

structure PotentialTheoryEvidence {P : PhaseSpacePackage} (G : PotentialTheoryPackage P) where
  boundaryConditionsClosed : G.boundaryConditions
  potentialRegularityClosed : G.potentialRegularity

def PotentialTheoryClosed {P : PhaseSpacePackage} (G : PotentialTheoryPackage P) : Prop :=
  G.boundaryConditions ∧ G.potentialRegularity

theorem potential_theory_closed_from_evidence {P : PhaseSpacePackage} (G : PotentialTheoryPackage P) (E : PotentialTheoryEvidence G) : PotentialTheoryClosed G := by
  exact And.intro E.boundaryConditionsClosed E.potentialRegularityClosed

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse