import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure MagneticDomainWall where
  wallType : Type u
  width : ℝ
  energy : Prop
  blochWall : Prop
  neelWall : Prop

def MagneticDomainWallClosed (W : MagneticDomainWall) : Prop :=
  W.energy ∧ W.blochWall ∧ W.neelWall

structure MagneticDomainWallEvidence (W : MagneticDomainWall) where
  energyClosed : W.energy
  blochWallClosed : W.blochWall
  neelWallClosed : W.neelWall

theorem magnetic_domain_wall_closed_from_evidence
    (W : MagneticDomainWall) (E : MagneticDomainWallEvidence W) :
    MagneticDomainWallClosed W := by
  exact And.intro E.energyClosed (And.intro E.blochWallClosed E.neelWallClosed)

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse