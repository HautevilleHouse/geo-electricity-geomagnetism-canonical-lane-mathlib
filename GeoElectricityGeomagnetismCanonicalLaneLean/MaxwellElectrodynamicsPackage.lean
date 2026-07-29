import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure MaxwellElectrodynamicsPackage where
  gaussLaw : Prop
  faradayLaw : Prop
  ampereLaw : Prop
  displacementCurrent : Prop
  lorentzForce : Prop

def MaxwellElectrodynamicsClosed (M : MaxwellElectrodynamicsPackage) : Prop :=
  M.gaussLaw ∧ M.faradayLaw ∧ M.ampereLaw ∧
  M.displacementCurrent ∧ M.lorentzForce

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse