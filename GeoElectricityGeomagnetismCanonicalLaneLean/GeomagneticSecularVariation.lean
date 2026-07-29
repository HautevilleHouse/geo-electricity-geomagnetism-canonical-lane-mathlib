import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure SecularVariation where
  coreDynamics : Prop
  geomagneticFieldModel : Type u
  timeVariation : ℝ → ℝ
  paleomagneticRecord : Prop
  dipoleDecay : Prop

def SecularVariationClosed (S : SecularVariation) : Prop :=
  S.coreDynamics ∧ S.paleomagneticRecord ∧ S.dipoleDecay

structure SecularVariationEvidence (S : SecularVariation) where
  coreDynamicsClosed : S.coreDynamics
  paleomagneticRecordClosed : S.paleomagneticRecord
  dipoleDecayClosed : S.dipoleDecay

theorem secular_variation_closed_from_evidence
    (S : SecularVariation) (E : SecularVariationEvidence S) :
    SecularVariationClosed S := by
  exact And.intro E.coreDynamicsClosed
    (And.intro E.paleomagneticRecordClosed E.dipoleDecayClosed)

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse