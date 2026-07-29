import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure GeomagneticFieldEquations where
  magneticField : Type u
  electricField : Type v
  currentDensity : Type w
  faradayLaw : Prop
  ampereLaw : Prop
  gaussMagneticLaw : Prop
  constitutiveRelation : Prop

structure GeomagneticFieldEquationsEvidence (G : GeomagneticFieldEquations) where
  faradayLawClosed : G.faradayLaw
  ampereLawClosed : G.ampereLaw
  gaussMagneticLawClosed : G.gaussMagneticLaw
  constitutiveRelationClosed : G.constitutiveRelation

def GeomagneticFieldEquationsClosed (G : GeomagneticFieldEquations) : Prop :=
  G.faradayLaw ∧ G.ampereLaw ∧ G.gaussMagneticLaw ∧ G.constitutiveRelation

theorem geomagnetic_field_equations_closed_from_evidence
    (G : GeomagneticFieldEquations) (E : GeomagneticFieldEquationsEvidence G) :
    GeomagneticFieldEquationsClosed G := by
  exact And.intro E.faradayLawClosed
    (And.intro E.ampereLawClosed
      (And.intro E.gaussMagneticLawClosed E.constitutiveRelationClosed))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse