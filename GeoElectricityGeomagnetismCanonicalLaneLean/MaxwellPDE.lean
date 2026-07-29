import GeoElectricityGeomagnetismCanonicalLaneLean.PrimitiveMagneticFieldSystem

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure MaxwellPDEPackage (G : PrimitiveMagneticFieldDomain) where
  timeParameter : Type u
  emFieldAt : timeParameter → Type v
  initialFieldMatches : Prop
  differentiableFieldFamily : Prop
  maxwellEquation : Prop
  maximalTimeInterval : Prop

structure MaxwellPDEEvidence {G : PrimitiveMagneticFieldDomain} (F : MaxwellPDEPackage G) where
  initialFieldMatchesClosed : F.initialFieldMatches
  differentiableFieldFamilyClosed : F.differentiableFieldFamily
  maxwellEquationClosed : F.maxwellEquation
  maximalTimeIntervalClosed : F.maximalTimeInterval

def MaxwellPDEClosed {G : PrimitiveMagneticFieldDomain} (F : MaxwellPDEPackage G) : Prop :=
  F.initialFieldMatches ∧
  F.differentiableFieldFamily ∧
  F.maxwellEquation ∧
  F.maximalTimeInterval

theorem maxwell_pde_closed_from_evidence {G : PrimitiveMagneticFieldDomain} (F : MaxwellPDEPackage G) (E : MaxwellPDEEvidence F) : MaxwellPDEClosed F :=
  by
    exact And.intro E.initialFieldMatchesClosed
      (And.intro E.differentiableFieldFamilyClosed
        (And.intro E.maxwellEquationClosed E.maximalTimeIntervalClosed))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse