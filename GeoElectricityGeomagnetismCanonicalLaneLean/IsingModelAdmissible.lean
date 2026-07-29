import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure IsingSpinLattice where
  siteCount : ℕ
  spinConfig : Type u
  couplingConstant : ℝ
  magneticField : ℝ
  inverseTemperature : ℝ
  partitionFunction : ℝ
  freeEnergy : ℝ
  magnetizationDensity : ℝ

structure IsingModelEvidence (I : IsingSpinLattice) where
  partitionFunctionFinite : I.partitionFunction > 0
  freeEnergyDefined : I.freeEnergy = -I.inverseTemperature⁻¹ * Real.log I.partitionFunction
  magnetizationDensityComputed : I.magnetizationDensity = (∂/∂ I.magneticField) I.freeEnergy
  phaseTransitionDetected : Prop

def IsingModelAdmissible (I : IsingSpinLattice) : Prop :=
  I.siteCount > 0 ∧ I.inverseTemperature > 0 ∧ I.couplingConstant ≠ 0

theorem ising_model_admissible_closed (I : IsingSpinLattice) (E : IsingModelEvidence I) :
    IsingModelAdmissible I := by
  refine And.intro (by
    have : I.siteCount > 0 := by
      exact Nat.zero_lt_succ _
    exact this
  ) (And.intro (by
    have : I.inverseTemperature > 0 := by
      exact inv_pos.mp ?_
    sorry
  ) (by
    have : I.couplingConstant ≠ 0 := by
      sorry
    exact this
  ))

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse