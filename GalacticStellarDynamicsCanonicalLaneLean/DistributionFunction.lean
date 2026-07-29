import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure DistributionFunctionPackage where
  phaseSpace : Type u
  DF : phaseSpace → ℝ
  nonnegativity : Prop
  normalization : Prop
  collisionlessBoltzmannEq : Prop

structure DistributionFunctionEvidence (F : DistributionFunctionPackage) where
  nonnegativityClosed : F.nonnegativity
  normalizationClosed : F.normalization
  collisionlessBoltzmannEqClosed : F.collisionlessBoltzmannEq

def DistributionFunctionClosed (F : DistributionFunctionPackage) : Prop :=
  F.nonnegativity ∧ F.normalization ∧ F.collisionlessBoltzmannEq

theorem distribution_function_closed_from_evidence (F : DistributionFunctionPackage)
    (E : DistributionFunctionEvidence F) : DistributionFunctionClosed F := by
  exact And.intro E.nonnegativityClosed
    (And.intro E.normalizationClosed E.collisionlessBoltzmannEqClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse