import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure StellarSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure StellarDynamicsAdmittedObject where
  space : StellarSpace
  stellarSystem : Prop
  dynamicalStability : Prop
  observationalConstraints : Prop
  conclusion : stellarSystem ∧ dynamicalStability ∧ observationalConstraints

def StellarWitnessClosed (O : StellarDynamicsAdmittedObject) : Prop :=
  O.stellarSystem ∧ O.dynamicalStability ∧ O.observationalConstraints

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse