import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure GeoMagnetismAdmittedObject where
  geomagneticFieldModel : Type
  maxwellEquationsSatisfied : Prop
  landauLifshitzDynamics : Prop
  conclusion : maxwellEquationsSatisfied ∧ landauLifshitzDynamics

def GeoMagnetismWitnessClosed (O : GeoMagnetismAdmittedObject) : Prop :=
  O.maxwellEquationsSatisfied ∧ O.landauLifshitzDynamics

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse