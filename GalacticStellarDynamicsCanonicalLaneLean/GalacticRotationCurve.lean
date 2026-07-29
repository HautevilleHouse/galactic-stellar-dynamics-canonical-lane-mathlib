import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure RotationCurvePackage where
  galaxyType : Type u
  radiusProfile : galaxyType → ℝ → ℝ
  tangentialVelocity : galaxyType → ℝ → ℝ
  baryonicComponent : galaxyType → ℝ → ℝ
  darkMatterComponent : galaxyType → ℝ → ℝ
  observedFlatness : Prop
  discrepancyWithNewtonian : Prop

structure RotationCurveEvidence (R : RotationCurvePackage) where
  observedFlatnessClosed : R.observedFlatness
  discrepancyWithNewtonianClosed : R.discrepancyWithNewtonian

def RotationCurveClosed (R : RotationCurvePackage) : Prop :=
  R.observedFlatness ∧ R.discrepancyWithNewtonian

theorem rotation_curve_closed_from_evidence (R : RotationCurvePackage)
    (E : RotationCurveEvidence R) : RotationCurveClosed R := by
  exact And.intro E.observedFlatnessClosed E.discrepancyWithNewtonianClosed

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse