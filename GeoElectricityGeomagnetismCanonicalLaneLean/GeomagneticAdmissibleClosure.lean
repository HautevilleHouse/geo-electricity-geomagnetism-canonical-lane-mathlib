import GeoElectricityGeomagnetismCanonicalLaneLean.GeomagneticFieldEvidence
import GeoElectricityGeomagnetismCanonicalLaneLean.MaxwellPDE

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

def GeomagneticAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem geomagnetic_admissible_endgame (A : AdmissibleClass) :
    GeomagneticAdmissibleClosure A :=
  by
    exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse