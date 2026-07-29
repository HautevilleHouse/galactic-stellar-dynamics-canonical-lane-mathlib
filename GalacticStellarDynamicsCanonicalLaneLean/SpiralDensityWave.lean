import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GalacticStellarDynamicsCanonicalLaneLean

structure SpiralDensityWavePackage where
  dispersionRelation : Prop
  waveAmplitude : Type u
  patternSpeed : Type v
  linbladResonance : Prop
  swingAmplification : Prop

structure SpiralDensityWaveEvidence (S : SpiralDensityWavePackage) where
  dispersionRelationClosed : S.dispersionRelation
  linbladResonanceClosed : S.linbladResonance
  swingAmplificationClosed : S.swingAmplification

def SpiralDensityWaveClosed (S : SpiralDensityWavePackage) : Prop :=
  S.dispersionRelation ∧ S.linbladResonance ∧ S.swingAmplification

theorem spiral_density_wave_closed_from_evidence (S : SpiralDensityWavePackage)
    (E : SpiralDensityWaveEvidence S) : SpiralDensityWaveClosed S := by
  exact And.intro E.dispersionRelationClosed
    (And.intro E.linbladResonanceClosed E.swingAmplificationClosed)

end GalacticStellarDynamicsCanonicalLaneLean
end HautevilleHouse