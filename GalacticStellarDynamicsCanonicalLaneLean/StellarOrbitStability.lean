import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure StellarOrbitStabilityPackage where
  hamiltonianFunction : Type u
  effectivePotential : Type v
  orbitClassification : Prop
  lyapunovStabilityCriterion : Prop
  periodicOrbits : Prop

structure StellarOrbitStabilityEvidence (S : StellarOrbitStabilityPackage) where
  orbitClassificationClosed : S.orbitClassification
  lyapunovStabilityCriterionClosed : S.lyapunovStabilityCriterion
  periodicOrbitsClosed : S.periodicOrbits

def StellarOrbitStabilityClosed (S : StellarOrbitStabilityPackage) : Prop :=
  S.orbitClassification ∧ S.lyapunovStabilityCriterion ∧ S.periodicOrbits

theorem stellar_orbit_stability_closed_from_evidence
    (S : StellarOrbitStabilityPackage) (E : StellarOrbitStabilityEvidence S) :
    StellarOrbitStabilityClosed S := by
  exact And.intro E.orbitClassificationClosed
    (And.intro E.lyapunovStabilityCriterionClosed E.periodicOrbitsClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse