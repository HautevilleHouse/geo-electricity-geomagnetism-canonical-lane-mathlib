import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure GeomagneticFieldPackage where
  planet : Type u
  topology : TopologicalSpace planet
  magneticField : planet → ℝ³
  vectorPotential : planet → ℝ³
  maxwellEquations : Prop
  gaussLawMagnetic : Prop
  noMonopoles : Prop
  secularVariation : Prop
  fieldReversal : Prop

structure GeomagneticFieldEvidence (G : GeomagneticFieldPackage) where
  maxwellEquationsClosed : G.maxwellEquations
  gaussLawMagneticClosed : G.gaussLawMagnetic
  noMonopolesClosed : G.noMonopoles
  secularVariationClosed : G.secularVariation
  fieldReversalClosed : G.fieldReversal

def GeomagneticFieldClosed (G : GeomagneticFieldPackage) : Prop :=
  G.maxwellEquations ∧ G.gaussLawMagnetic ∧ G.noMonopoles ∧ G.secularVariation ∧ G.fieldReversal

theorem geomagnetic_field_closed_from_evidence
    (G : GeomagneticFieldPackage) (E : GeomagneticFieldEvidence G) :
    GeomagneticFieldClosed G := by
  exact And.intro E.maxwellEquationsClosed
    (And.intro E.gaussLawMagneticClosed
      (And.intro E.noMonopolesClosed
        (And.intro E.secularVariationClosed E.fieldReversalClosed)))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse