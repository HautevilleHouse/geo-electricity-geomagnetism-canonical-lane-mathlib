import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure MaxwellEquationsPackage where
  chargeConservation : Prop
  faradayLaw : Prop
  ampereMaxwellLaw : Prop
  gaussLawElectric : Prop
  gaussLawMagnetic : Prop

structure MaxwellEquationsEvidence (M : MaxwellEquationsPackage) where
  chargeConservationClosed : M.chargeConservation
  faradayLawClosed : M.faradayLaw
  ampereMaxwellLawClosed : M.ampereMaxwellLaw
  gaussLawElectricClosed : M.gaussLawElectric
  gaussLawMagneticClosed : M.gaussLawMagnetic

def MaxwellEquationsClosed (M : MaxwellEquationsPackage) : Prop :=
  M.chargeConservation ∧ M.faradayLaw ∧ M.ampereMaxwellLaw ∧ M.gaussLawElectric ∧ M.gaussLawMagnetic

theorem maxwell_equations_closed_from_evidence (M : MaxwellEquationsPackage) (E : MaxwellEquationsEvidence M) :
    MaxwellEquationsClosed M := by
  exact And.intro E.chargeConservationClosed
    (And.intro E.faradayLawClosed
      (And.intro E.ampereMaxwellLawClosed
        (And.intro E.gaussLawElectricClosed E.gaussLawMagneticClosed)))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse