import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure IsingModelPackage where
  lattice : Type u
  spinConfiguration : Type v
  hamiltonian : Prop
  partitionFunction : Prop
  phaseTransition : Prop

structure IsingModelEvidence (I : IsingModelPackage) where
  hamiltonianClosed : I.hamiltonian
  partitionFunctionClosed : I.partitionFunction
  phaseTransitionClosed : I.phaseTransition

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.hamiltonian ∧ I.partitionFunction ∧ I.phaseTransition

theorem ising_model_closed_from_evidence (I : IsingModelPackage) (E : IsingModelEvidence I) :
    IsingModelClosed I := by
  exact And.intro E.hamiltonianClosed
    (And.intro E.partitionFunctionClosed E.phaseTransitionClosed)

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse