import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure OrbitSuperpositionPackage where
  orbitalFamilies : Type u
  dfReconstructed : Prop
  consistencyWithPotential : Prop
  selfConsistency : Prop

structure OrbitSuperpositionEvidence (O : OrbitSuperpositionPackage) where
  dfReconstructedClosed : O.dfReconstructed
  consistencyWithPotentialClosed : O.consistencyWithPotential
  selfConsistencyClosed : O.selfConsistency

def OrbitSuperpositionClosed (O : OrbitSuperpositionPackage) : Prop :=
  O.dfReconstructed ∧ O.consistencyWithPotential ∧ O.selfConsistency

theorem orbit_superposition_closed_from_evidence (O : OrbitSuperpositionPackage)
    (E : OrbitSuperpositionEvidence O) : OrbitSuperpositionClosed O := by
  exact And.intro E.dfReconstructedClosed
    (And.intro E.consistencyWithPotentialClosed E.selfConsistencyClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse