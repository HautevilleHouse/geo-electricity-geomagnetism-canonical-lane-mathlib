import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure IsingModelPackage where
  latticeStructure : Prop
  spinInteraction : Prop
  hamiltonianDefined : Prop
  partitionFunctionComputed : Prop
  phaseTransition : Prop

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.latticeStructure ∧ I.spinInteraction ∧ I.hamiltonianDefined ∧
  I.partitionFunctionComputed ∧ I.phaseTransition

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse