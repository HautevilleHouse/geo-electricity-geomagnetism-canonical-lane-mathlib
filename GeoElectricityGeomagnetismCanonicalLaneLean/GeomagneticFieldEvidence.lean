import GeoElectricityGeomagnetismCanonicalLaneLean.MagneticDomainStructure

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure GeomagneticFoundation (G : PrimitiveMagneticFieldDomain) (F : MaxwellPDEPackage G) (L : LandauLifshitzDynamicsPackage F) (S : SpinWaveTheoryPackage L) (I : IsingModelPackage S) (M : MagneticDomainPackage I) where
  curvature : PrimitiveMagneticFieldSystem? := G
  curvatureEvidence : PrimitiveMagneticFieldDomain? := G
  flow : MaxwellPDEPackage G := F
  flowEvidence : MaxwellPDEEvidence F := by
    exact {
      initialFieldMatchesClosed := F.initialFieldMatches
      differentiableFieldFamilyClosed := F.differentiableFieldFamily
      maxwellEquationClosed := F.maxwellEquation
      maximalTimeIntervalClosed := F.maximalTimeInterval
    }
  shortTime : LandauLifshitzDynamicsPackage F := L
  shortTimeEvidence : LandauLifshitzDynamicsEvidence L := by
    exact {
      initialMagnetizationClosed := L.initialMagnetization
      effectiveFieldDefinedClosed := L.effectiveFieldDefined
      precessionTermClosed := L.precessionTerm
      dampingTermClosed := L.dampingTerm
      landauLifshitzEquationClosed := L.landauLifshitzEquation
    }
  entropy : SpinWaveTheoryPackage L := S
  entropyEvidence : SpinWaveTheoryEvidence S := by
    exact {
      magnetizationGroundStateClosed := S.magnetizationGroundState
      smallFluctuationExpansionClosed := S.smallFluctuationExpansion
      dispersionRelationClosed := S.dispersionRelation
      linearizedDynamicsClosed := S.linearizedDynamics
    }
  noncollapsing : IsingModelPackage S := I
  noncollapsingEvidence : IsingModelEvidence I := by
    exact {
      latticeStructureClosed := I.latticeStructure
      spinVariableDefinedClosed := I.spinVariableDefined
      exchangeCouplingClosed := I.exchangeCoupling
      thermalFluctuationsClosed := I.thermalFluctuations
      phaseTransitionClosed := I.phaseTransition
    }
  singularityModels : MagneticDomainPackage I := M
  singularityModelsEvidence : MagneticDomainEvidence M := by
    exact {
      domainWallEnergyClosed := M.domainWallEnergy
      anisotropyTermClosed := M.anisotropyTerm
      exchangeTermClosed := M.exchangeTerm
      dipolarTermClosed := M.dipolarTerm
      domainPatternFormationClosed := M.domainPatternFormation
    }

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse