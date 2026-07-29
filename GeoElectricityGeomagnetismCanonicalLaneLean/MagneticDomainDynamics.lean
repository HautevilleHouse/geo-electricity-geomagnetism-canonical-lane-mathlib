import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure MagneticDomainPackage where
  domainWallType : Type u
  domainWidth : Prop
  wallEnergy : Prop
  domainMotionEquation : Prop
  pinningPotential : Prop
  hysteresisLoop : Prop

structure MagneticDomainEvidence (D : MagneticDomainPackage) where
  domainWidthClosed : D.domainWidth
  wallEnergyClosed : D.wallEnergy
  domainMotionEquationClosed : D.domainMotionEquation
  pinningPotentialClosed : D.pinningPotential
  hysteresisLoopClosed : D.hysteresisLoop

def MagneticDomainClosed (D : MagneticDomainPackage) : Prop :=
  D.domainWidth ∧ D.wallEnergy ∧ D.domainMotionEquation ∧ D.pinningPotential ∧ D.hysteresisLoop

theorem magnetic_domain_closed_from_evidence (D : MagneticDomainPackage) (E : MagneticDomainEvidence D) : MagneticDomainClosed D := by
  exact And.intro E.domainWidthClosed (And.intro E.wallEnergyClosed (And.intro E.domainMotionEquationClosed (And.intro E.pinningPotentialClosed E.hysteresisLoopClosed)))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse