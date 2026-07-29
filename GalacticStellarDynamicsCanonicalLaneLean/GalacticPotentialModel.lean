import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure GalacticPotentialModel where
  potentialField : Type u
  massDistribution : Type v
  rotationCurve : Type w
  potentialSmooth : Prop
  poissonEquation : Prop
  rotationCurveDerived : Prop

structure GalacticPotentialEvidence (G : GalacticPotentialModel) where
  potentialSmoothClosed : G.potentialSmooth
  poissonEquationClosed : G.poissonEquation
  rotationCurveDerivedClosed : G.rotationCurveDerived

def GalacticPotentialClosed (G : GalacticPotentialModel) : Prop :=
  G.potentialSmooth ∧ G.poissonEquation ∧ G.rotationCurveDerived

theorem galactic_potential_closed_from_evidence (G : GalacticPotentialModel)
    (E : GalacticPotentialEvidence G) : GalacticPotentialClosed G :=
  And.intro E.potentialSmoothClosed
    (And.intro E.poissonEquationClosed E.rotationCurveDerivedClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse