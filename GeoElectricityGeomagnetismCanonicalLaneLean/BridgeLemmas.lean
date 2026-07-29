import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeoMagnetismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse