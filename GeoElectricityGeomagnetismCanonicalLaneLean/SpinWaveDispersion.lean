import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure SpinWaveDispersionPackage where
  exchangeConstant : Prop
  anisotropyField : Prop
  waveVector : Type u
  frequency : Type v
  dispersionRelation : Prop
  magnonBandStructure : Prop

structure SpinWaveDispersionEvidence (S : SpinWaveDispersionPackage) where
  exchangeConstantClosed : S.exchangeConstant
  anisotropyFieldClosed : S.anisotropyField
  dispersionRelationClosed : S.dispersionRelation
  magnonBandStructureClosed : S.magnonBandStructure

def SpinWaveDispersionClosed (S : SpinWaveDispersionPackage) : Prop :=
  S.exchangeConstant ∧ S.anisotropyField ∧ S.dispersionRelation ∧ S.magnonBandStructure

theorem spin_wave_dispersion_closed_from_evidence (S : SpinWaveDispersionPackage) (E : SpinWaveDispersionEvidence S) : SpinWaveDispersionClosed S := by
  exact And.intro E.exchangeConstantClosed (And.intro E.anisotropyFieldClosed (And.intro E.dispersionRelationClosed E.magnonBandStructureClosed))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse