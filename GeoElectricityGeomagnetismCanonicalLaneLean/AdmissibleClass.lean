import GeoElectricityGeomagnetismCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure AdmissibleClass where
  object : GeoMagnetismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeoMagnetismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse