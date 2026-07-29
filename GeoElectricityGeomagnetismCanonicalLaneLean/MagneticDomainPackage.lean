import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure MagneticDomainPackage where
  domainWallStructure : Prop
  blochWallTransition : Prop
  neelWallStructure : Prop
  hystheresisLoop : Prop
  coercivity : Prop

def MagneticDomainClosed (M : MagneticDomainPackage) : Prop :=
  M.domainWallStructure ∧ M.blochWallTransition ∧ M.neelWallStructure ∧
  M.hystheresisLoop ∧ M.coercivity

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse