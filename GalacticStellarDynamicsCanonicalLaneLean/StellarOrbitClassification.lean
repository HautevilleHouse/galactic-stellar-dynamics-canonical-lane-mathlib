import GalacticStellarDynamicsCanonicalLaneLean.PotentialTheoryEvidence

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure StellarOrbitClassificationPackage {P : PhaseSpacePackage} {G : PotentialTheoryPackage P} (O : StellarDynamicsAdmittedObject) where
  orbitTypes : Type u
  periodicOrbits : Prop
  chaoticOrbits : Prop
  stabilityRegions : Prop

structure StellarOrbitClassificationEvidence {P : PhaseSpacePackage} {G : PotentialTheoryPackage P} {O : StellarDynamicsAdmittedObject} (C : StellarOrbitClassificationPackage O) where
  periodicOrbitsClosed : C.periodicOrbits
  chaoticOrbitsClosed : C.chaoticOrbits
  stabilityRegionsClosed : C.stabilityRegions

def StellarOrbitClassificationClosed {P : PhaseSpacePackage} {G : PotentialTheoryPackage P} {O : StellarDynamicsAdmittedObject} (C : StellarOrbitClassificationPackage O) : Prop :=
  C.periodicOrbits ∧ C.chaoticOrbits ∧ C.stabilityRegions

theorem stellar_orbit_classification_closed_from_evidence {P : PhaseSpacePackage} {G : PotentialTheoryPackage P} {O : StellarDynamicsAdmittedObject} (C : StellarOrbitClassificationPackage O) (E : StellarOrbitClassificationEvidence C) : StellarOrbitClassificationClosed C := by
  exact And.intro E.periodicOrbitsClosed (And.intro E.chaoticOrbitsClosed E.stabilityRegionsClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse