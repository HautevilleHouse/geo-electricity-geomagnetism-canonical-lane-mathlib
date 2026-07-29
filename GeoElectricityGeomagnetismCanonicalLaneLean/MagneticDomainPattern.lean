import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure MagneticDomainPatternPackage where
  domainWidth : ℝ
  domainWallEnergy : ℝ
  strayFieldEnergy : ℝ
  anisotropyEnergy : ℝ
  totalFreeEnergy : ℝ
  stripePattern : Prop
  closureDomain : Prop
  vortexStructure : Prop
  topologicalCharge : ℤ

structure MagneticDomainPatternEvidence (D : MagneticDomainPatternPackage) where
  stripePatternClosed : D.stripePattern
  closureDomainClosed : D.closureDomain
  vortexStructureClosed : D.vortexStructure
  topologicalChargeConserved : D.topologicalCharge = 0 ∨ D.topologicalCharge = 1
  energyMinimized : D.totalFreeEnergy = D.domainWallEnergy + D.strayFieldEnergy + D.anisotropyEnergy

def MagneticDomainPatternClosed (D : MagneticDomainPatternPackage) : Prop :=
  D.stripePattern ∧ D.closureDomain ∧ D.vortexStructure ∧ (D.topologicalCharge = 0 ∨ D.topologicalCharge = 1)

theorem magnetic_domain_pattern_closed_from_evidence
    (D : MagneticDomainPatternPackage) (E : MagneticDomainPatternEvidence D) :
    MagneticDomainPatternClosed D := by
  exact And.intro E.stripePatternClosed
    (And.intro E.closureDomainClosed
      (And.intro E.vortexStructureClosed E.topologicalChargeConserved))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse