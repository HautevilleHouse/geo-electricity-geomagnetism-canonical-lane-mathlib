import GeoElectricityGeomagnetismCanonicalLaneLean.MaxwellPDE

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure LandauLifshitzDynamicsPackage {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} where
  initialMagnetization : Prop
  effectiveFieldDefined : Prop
  precessionTerm : Prop
  dampingTerm : Prop
  landauLifshitzEquation : Prop

structure LandauLifshitzDynamicsEvidence {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} (L : LandauLifshitzDynamicsPackage F) where
  initialMagnetizationClosed : L.initialMagnetization
  effectiveFieldDefinedClosed : L.effectiveFieldDefined
  precessionTermClosed : L.precessionTerm
  dampingTermClosed : L.dampingTerm
  landauLifshitzEquationClosed : L.landauLifshitzEquation

def LandauLifshitzDynamicsClosed {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} (L : LandauLifshitzDynamicsPackage F) : Prop :=
  L.initialMagnetization ∧ L.effectiveFieldDefined ∧ L.precessionTerm ∧ L.dampingTerm ∧ L.landauLifshitzEquation

theorem landau_lifshitz_dynamics_closed_from_evidence {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} (L : LandauLifshitzDynamicsPackage F) (E : LandauLifshitzDynamicsEvidence L) : LandauLifshitzDynamicsClosed L :=
  by
    exact And.intro E.initialMagnetizationClosed
      (And.intro E.effectiveFieldDefinedClosed
        (And.intro E.precessionTermClosed
          (And.intro E.dampingTermClosed E.landauLifshitzEquationClosed)))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse