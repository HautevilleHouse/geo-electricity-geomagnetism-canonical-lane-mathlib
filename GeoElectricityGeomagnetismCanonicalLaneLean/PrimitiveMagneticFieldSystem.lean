import GeoElectricityGeomagnetismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeoElectricityGeomagnetismCanonicalLaneLean

structure PrimitiveMagneticFieldDomain where
  Point : Type
  Chart : Type
  atlas : Type
  smoothCompatibility : Prop
  hausdorffSecondCountable : Prop
  compactWithoutBoundary : Prop
  connected : Prop
  dimensionThree : Prop
  smoothCompatibilityTerm : smoothCompatibility
  hausdorffSecondCountableTerm : hausdorffSecondCountable
  compactWithoutBoundaryTerm : compactWithoutBoundary
  connectedTerm : connected
  dimensionThreeTerm : dimensionThree

structure PrimitiveTimeDomain where
  Time : Type
  start : Time
  le : Time → Time → Prop
  intervalTopology : Prop
  hasInitialTime : Prop
  locallyFiniteBreakSet : Prop
  intervalTopologyTerm : intervalTopology
  hasInitialTimeTerm : hasInitialTime
  locallyFiniteBreakSetTerm : locallyFiniteBreakSet

structure PrimitiveTensorBundle (M : PrimitiveMagneticFieldDomain) where
  rankCovariant : Nat
  rankContravariant : Nat
  Fiber : M.Point → Type
  smoothSections : Type
  contraction : Type
  covariantDerivative : Type
  tensorOperationsClosed : Prop
  tensorOperationsClosedTerm : tensorOperationsClosed

structure PrimitiveMagneticField (M : PrimitiveMagneticFieldDomain) (T : PrimitiveTimeDomain) where
  fieldTensor : T.Time → PrimitiveTensorBundle M
  maxwellEquations : Prop
  lorentzForceLaw : Prop
  ohmsLaw : Prop
  maxwellEquationsTerm : maxwellEquations
  lorentzForceLawTerm : lorentzForceLaw
  ohmsLawTerm : ohmsLaw

structure PrimitiveGeomagneticSystem (M : PrimitiveMagneticFieldDomain) (T : PrimitiveTimeDomain) (B : PrimitiveMagneticField M T) where
  landauLifshitzEquation : Prop
  spinWaveDispersion : Prop
  isingModelHamiltonian : Prop
  magneticDomainStructure : Prop
  landauLifshitzEquationTerm : landauLifshitzEquation
  spinWaveDispersionTerm : spinWaveDispersion
  isingModelHamiltonianTerm : isingModelHamiltonian
  magneticDomainStructureTerm : magneticDomainStructure

end GeoElectricityGeomagnetismCanonicalLaneLean
end HautevilleHouse