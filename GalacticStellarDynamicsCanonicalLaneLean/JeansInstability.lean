import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure JeansInstabilityPackage where
  gasDensity : Type u
  soundSpeed : Type v
  meanMolecularWeight : ℝ
  temperature : ℝ
  criticalWavenumber : ℝ
  instabilityCondition : Prop
  collapseThreshold : Prop

structure JeansInstabilityEvidence (J : JeansInstabilityPackage) where
  instabilityConditionClosed : J.instabilityCondition
  collapseThresholdClosed : J.collapseThreshold

def JeansInstabilityClosed (J : JeansInstabilityPackage) : Prop :=
  J.instabilityCondition ∧ J.collapseThreshold

theorem jeans_instability_closed_from_evidence (J : JeansInstabilityPackage)
    (E : JeansInstabilityEvidence J) : JeansInstabilityClosed J := by
  exact And.intro E.instabilityConditionClosed E.collapseThresholdClosed

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse