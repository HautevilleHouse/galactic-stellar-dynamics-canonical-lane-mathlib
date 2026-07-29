import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure DarkMatterProfilePackage where
  profileType : Type u
  densityProfile : ℝ → ℝ
  scaleRadius : ℝ
  centralDensity : ℝ
  innerSlope : ℝ
  outerSlope : ℝ
  cuspOrCore : Prop
  rotationCurveConsistency : Prop

structure DarkMatterProfileEvidence (D : DarkMatterProfilePackage) where
  cuspOrCoreClosed : D.cuspOrCore
  rotationCurveConsistencyClosed : D.rotationCurveConsistency

def DarkMatterProfileClosed (D : DarkMatterProfilePackage) : Prop :=
  D.cuspOrCore ∧ D.rotationCurveConsistency

theorem dark_matter_profile_closed_from_evidence (D : DarkMatterProfilePackage)
    (E : DarkMatterProfileEvidence D) : DarkMatterProfileClosed D := by
  exact And.intro E.cuspOrCoreClosed E.rotationCurveConsistencyClosed

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse