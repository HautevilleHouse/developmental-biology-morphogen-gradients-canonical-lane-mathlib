import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean

structure PositionalInformationPackage where
  concentrationThresholds : Type
  targetGeneExpression : Type
  spatialPatterning : Type
  thresholdEstablished : Prop
  expressionBoundariesDefined : Prop
  patterningPrecision : Prop
  thresholdEstablishedClosed : thresholdEstablished
  expressionBoundariesDefinedClosed : expressionBoundariesDefined
  patterningPrecisionClosed : patterningPrecision

structure PositionalInformationEvidence (P : PositionalInformationPackage) where
  thresholdEstablishedClosed : P.thresholdEstablished
  expressionBoundariesDefinedClosed : P.expressionBoundariesDefined
  patterningPrecisionClosed : P.patterningPrecision

def PositionalInformationClosed (P : PositionalInformationPackage) : Prop :=
  P.thresholdEstablished ∧ P.expressionBoundariesDefined ∧ P.patterningPrecision

theorem positional_information_closed_from_evidence
    (P : PositionalInformationPackage) (E : PositionalInformationEvidence P) :
    PositionalInformationClosed P := by
  exact And.intro E.thresholdEstablishedClosed
    (And.intro E.expressionBoundariesDefinedClosed E.patterningPrecisionClosed)

end DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean
end HautevilleHouse