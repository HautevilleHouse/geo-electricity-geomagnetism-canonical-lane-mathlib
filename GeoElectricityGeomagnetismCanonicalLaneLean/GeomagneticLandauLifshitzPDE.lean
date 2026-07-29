import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure LandauLifshitzPDEPackage (G : GeomagneticFieldPackage) where
  timeParameter : Type u
  magnetizationAt : timeParameter -> Type v
  initialMagnetizationMatches : Prop
  differentiableMagnetizationFamily : Prop
  landauLifshitzEquation : Prop
  precessionalTerm : Prop
  dampingTerm : Prop
  maximalTimeInterval : Prop

structure LandauLifshitzPDEEvidence {G : GeomagneticFieldPackage}
    (F : LandauLifshitzPDEPackage G) where
  initialMagnetizationMatchesClosed : F.initialMagnetizationMatches
  differentiableMagnetizationFamilyClosed : F.differentiableMagnetizationFamily
  landauLifshitzEquationClosed : F.landauLifshitzEquation
  precessionalTermClosed : F.precessionalTerm
  dampingTermClosed : F.dampingTerm
  maximalTimeIntervalClosed : F.maximalTimeInterval

def LandauLifshitzPDEClosed {G : GeomagneticFieldPackage}
    (F : LandauLifshitzPDEPackage G) : Prop :=
  F.initialMagnetizationMatches ∧
  F.differentiableMagnetizationFamily ∧
  F.landauLifshitzEquation ∧
  F.precessionalTerm ∧
  F.dampingTerm ∧
  F.maximalTimeInterval

theorem landau_lifshitz_pde_closed_from_evidence
    {G : GeomagneticFieldPackage} (F : LandauLifshitzPDEPackage G)
    (E : LandauLifshitzPDEEvidence F) : LandauLifshitzPDEClosed F := by
  exact And.intro E.initialMagnetizationMatchesClosed
    (And.intro E.differentiableMagnetizationFamilyClosed
      (And.intro E.landauLifshitzEquationClosed
        (And.intro E.precessionalTermClosed
          (And.intro E.dampingTermClosed E.maximalTimeIntervalClosed))))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse