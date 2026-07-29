import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure JeansEquation where
  velocityMoments : Type u
  stressTensor : Type v
  gravitationalPotential : Type w
  jeansFlowEquation : Prop
  traceEquation : Prop
  anisotropicStress : Prop

structure JeansEvidence (J : JeansEquation) where
  jeansFlowEquationClosed : J.jeansFlowEquation
  traceEquationClosed : J.traceEquation
  anisotropicStressClosed : J.anisotropicStress

def JeansClosed (J : JeansEquation) : Prop :=
  J.jeansFlowEquation ∧ J.traceEquation ∧ J.anisotropicStress

theorem jeans_closed_from_evidence (J : JeansEquation)
    (E : JeansEvidence J) : JeansClosed J :=
  And.intro E.jeansFlowEquationClosed
    (And.intro E.traceEquationClosed E.anisotropicStressClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse