import GeoElectricityGeomagnetismCanonicalLaneLean.LandauLifshitzDynamics

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure SpinWaveTheoryPackage {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} {L : LandauLifshitzDynamicsPackage F} where
  magnetizationGroundState : Prop
  smallFluctuationExpansion : Prop
  dispersionRelation : Prop
  linearizedDynamics : Prop

structure SpinWaveTheoryEvidence {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} {L : LandauLifshitzDynamicsPackage F} (S : SpinWaveTheoryPackage L) where
  magnetizationGroundStateClosed : S.magnetizationGroundState
  smallFluctuationExpansionClosed : S.smallFluctuationExpansion
  dispersionRelationClosed : S.dispersionRelation
  linearizedDynamicsClosed : S.linearizedDynamics

def SpinWaveTheoryClosed {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} {L : LandauLifshitzDynamicsPackage F} (S : SpinWaveTheoryPackage L) : Prop :=
  S.magnetizationGroundState ∧ S.smallFluctuationExpansion ∧ S.dispersionRelation ∧ S.linearizedDynamics

theorem spin_wave_theory_closed_from_evidence {G : PrimitiveMagneticFieldDomain} {F : MaxwellPDEPackage G} {L : LandauLifshitzDynamicsPackage F} (S : SpinWaveTheoryPackage L) (E : SpinWaveTheoryEvidence S) : SpinWaveTheoryClosed S :=
  by
    exact And.intro E.magnetizationGroundStateClosed
      (And.intro E.smallFluctuationExpansionClosed
        (And.intro E.dispersionRelationClosed E.linearizedDynamicsClosed))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse