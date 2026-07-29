import canonicalLaneMathlib.AdmissibleClass
import GeoElectricityGeomagnetismCanonicalLaneLean.BridgeLemmas
import GeoElectricityGeomagnetismCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

def ConstrainedMagnetismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_magnetism_endgame (A : AdmissibleClass) : ConstrainedMagnetismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse