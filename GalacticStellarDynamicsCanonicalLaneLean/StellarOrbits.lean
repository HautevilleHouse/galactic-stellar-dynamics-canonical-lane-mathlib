import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure StellarOrbitPackage where
  potentialType : Type u
  orbitalFamily : Type v
  effectivePotential : potentialType → ℝ → ℝ
  orbitalEnergy : ℝ
  angularMomentum : ℝ
  pericenter : ℝ
  apocenter : ℝ
  boundedness : Prop
  rosetteShape : Prop

structure StellarOrbitEvidence (O : StellarOrbitPackage) where
  boundednessClosed : O.boundedness
  rosetteShapeClosed : O.rosetteShape

def StellarOrbitClosed (O : StellarOrbitPackage) : Prop :=
  O.boundedness ∧ O.rosetteShape

theorem stellar_orbit_closed_from_evidence (O : StellarOrbitPackage)
    (E : StellarOrbitEvidence O) : StellarOrbitClosed O := by
  exact And.intro E.boundednessClosed E.rosetteShapeClosed

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse