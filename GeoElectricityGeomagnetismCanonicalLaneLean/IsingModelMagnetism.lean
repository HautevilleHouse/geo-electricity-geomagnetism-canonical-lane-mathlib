import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure IsingModelPackage where
  spinLattice : Type u
  couplingConstant : Prop
  externalField : Prop
  hamiltonian : Prop
  partitionFunction : Prop
  phaseTransition : Prop

structure IsingModelEvidence (I : IsingModelPackage) where
  couplingConstantClosed : I.couplingConstant
  externalFieldClosed : I.externalField
  hamiltonianClosed : I.hamiltonian
  partitionFunctionClosed : I.partitionFunction
  phaseTransitionClosed : I.phaseTransition

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.couplingConstant ∧ I.externalField ∧ I.hamiltonian ∧ I.partitionFunction ∧ I.phaseTransition

theorem ising_model_closed_from_evidence (I : IsingModelPackage) (E : IsingModelEvidence I) : IsingModelClosed I := by
  exact And.intro E.couplingConstantClosed (And.intro E.externalFieldClosed (And.intro E.hamiltonianClosed (And.intro E.partitionFunctionClosed E.phaseTransitionClosed)))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse