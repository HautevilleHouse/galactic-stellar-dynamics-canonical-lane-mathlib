import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure JeansEquationsPackage where
  continuityEquation : Prop
  momentumEquation : Prop
  velocityDispersionTensor : Type u
  closureCondition : Prop

structure JeansEquationsEvidence (J : JeansEquationsPackage) where
  continuityEquationClosed : J.continuityEquation
  momentumEquationClosed : J.momentumEquation
  closureConditionClosed : J.closureCondition

def JeansEquationsClosed (J : JeansEquationsPackage) : Prop :=
  J.continuityEquation ∧ J.momentumEquation ∧ J.closureCondition

theorem jeans_equations_closed_from_evidence
    (J : JeansEquationsPackage) (E : JeansEquationsEvidence J) :
    JeansEquationsClosed J := by
  exact And.intro E.continuityEquationClosed
    (And.intro E.momentumEquationClosed E.closureConditionClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse