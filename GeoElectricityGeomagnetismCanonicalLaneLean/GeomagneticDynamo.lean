import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure GeomagneticDynamoPackage where
  coreConvection : Prop
  magneticFieldGeneration : Prop
  selfSustaining : Prop
  polarityReversal : Prop

structure GeomagneticDynamoEvidence (G : GeomagneticDynamoPackage) where
  coreConvectionClosed : G.coreConvection
  magneticFieldGenerationClosed : G.magneticFieldGeneration
  selfSustainingClosed : G.selfSustaining
  polarityReversalClosed : G.polarityReversal

def GeomagneticDynamoClosed (G : GeomagneticDynamoPackage) : Prop :=
  G.coreConvection ∧ G.magneticFieldGeneration ∧ G.selfSustaining ∧ G.polarityReversal

theorem geomagnetic_dynamo_closed_from_evidence (G : GeomagneticDynamoPackage) (E : GeomagneticDynamoEvidence G) :
    GeomagneticDynamoClosed G := by
  exact And.intro E.coreConvectionClosed
    (And.intro E.magneticFieldGenerationClosed
      (And.intro E.selfSustainingClosed E.polarityReversalClosed))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse