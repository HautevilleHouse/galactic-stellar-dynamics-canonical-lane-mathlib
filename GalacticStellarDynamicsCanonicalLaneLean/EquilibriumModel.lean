import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure EquilibriumModel where
  distributionFunction : Type u
  potential : Type v
  selfConsistency : Prop
  equilibriumCondition : Prop
  stabilityCriteria : Prop

structure EquilibriumEvidence (E : EquilibriumModel) where
  selfConsistencyClosed : E.selfConsistency
  equilibriumConditionClosed : E.equilibriumCondition
  stabilityCriteriaClosed : E.stabilityCriteria

def EquilibriumClosed (E : EquilibriumModel) : Prop :=
  E.selfConsistency ∧ E.equilibriumCondition ∧ E.stabilityCriteria

theorem equilibrium_closed_from_evidence (E : EquilibriumModel)
    (Ev : EquilibriumEvidence E) : EquilibriumClosed E :=
  And.intro Ev.selfConsistencyClosed
    (And.intro Ev.equilibriumConditionClosed Ev.stabilityCriteriaClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse