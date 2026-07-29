import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure SpinWavePackage where
  dispersionRelation : Prop
  brillouinZone : Prop
  magnonExcitation : Prop
  exchangeInteraction : Prop
  anisotropyEnergy : Prop

def SpinWaveClosed (S : SpinWavePackage) : Prop :=
  S.dispersionRelation ∧ S.brillouinZone ∧ S.magnonExcitation ∧
  S.exchangeInteraction ∧ S.anisotropyEnergy

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse