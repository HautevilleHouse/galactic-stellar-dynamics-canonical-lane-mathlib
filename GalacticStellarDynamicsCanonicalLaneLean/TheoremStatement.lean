import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure StellarAdmittedObject where
  stellarSystem : Type
  topology : TopologicalSpace stellarSystem
  observedDynamics : Prop
  conclusion : observedDynamics

def StellarWitnessClosed (O : StellarAdmittedObject) : Prop :=
  O.observedDynamics

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse
