import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.potentialClosed ∧ A.object.distributionStable ∧ A.object.waveDispersionChecked

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse