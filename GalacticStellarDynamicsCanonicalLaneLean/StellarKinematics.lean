import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure StellarKinematicsPackage where
  velocityField : Type u
  dispersionTensor : Type v
  rotationCurve : Prop
  velocityDispersionProfile : Prop

structure StellarKinematicsEvidence (K : StellarKinematicsPackage) where
  rotationCurveClosed : K.rotationCurve
  velocityDispersionProfileClosed : K.velocityDispersionProfile

def StellarKinematicsClosed (K : StellarKinematicsPackage) : Prop :=
  K.rotationCurve ∧ K.velocityDispersionProfile

theorem stellar_kinematics_closed_from_evidence (K : StellarKinematicsPackage)
    (E : StellarKinematicsEvidence K) : StellarKinematicsClosed K := by
  exact And.intro E.rotationCurveClosed E.velocityDispersionProfileClosed

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse