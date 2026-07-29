import GeoElectricityGeomagnetismCanonicalLaneLean.IsingModelMagnetism

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure MagneticDomainPackage {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} {L : LandauLifshitzDynamicsPackage F} {S : SpinWaveTheoryPackage L} {I : IsingModelPackage S} where
  domainWallEnergy : Prop
  anisotropyTerm : Prop
  exchangeTerm : Prop
  dipolarTerm : Prop
  domainPatternFormation : Prop

structure MagneticDomainEvidence {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} {L : LandauLifshitzDynamicsPackage F} {S : SpinWaveTheoryPackage L} {I : IsingModelPackage S} (M : MagneticDomainPackage I) where
  domainWallEnergyClosed : M.domainWallEnergy
  anisotropyTermClosed : M.anisotropyTerm
  exchangeTermClosed : M.exchangeTerm
  dipolarTermClosed : M.dipolarTerm
  domainPatternFormationClosed : M.domainPatternFormation

def MagneticDomainClosed {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} {L : LandauLifshitzDynamicsPackage F} {S : SpinWaveTheoryPackage L} {I : IsingModelPackage S} (M : MagneticDomainPackage I) : Prop :=
  M.domainWallEnergy ∧ M.anisotropyTerm ∧ M.exchangeTerm ∧ M.dipolarTerm ∧ M.domainPatternFormation

theorem magnetic_domain_closed_from_evidence {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} {L : LandauLifshitzDynamicsPackage F} {S : SpinWaveTheoryPackage L} {I : IsingModelPackage S} (M : MagneticDomainPackage I) (E : MagneticDomainEvidence M) : MagneticDomainClosed M :=
  by
    exact And.intro E.domainWallEnergyClosed
      (And.intro E.anisotropyTermClosed
        (And.intro E.exchangeTermClosed
          (And.intro E.dipolarTermClosed E.domainPatternFormationClosed)))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse