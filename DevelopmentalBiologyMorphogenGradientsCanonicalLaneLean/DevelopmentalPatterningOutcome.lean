import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean

structure PatterningOutcomePackage where
  tissueMorphology : Type
  cellFateDetermination : Type
  robustnessMeasure : Type
  morphologyAchieved : Prop
  fateSpecificationCorrect : Prop
  robustnessAgainstPerturbation : Prop
  morphologyAchievedClosed : morphologyAchieved
  fateSpecificationCorrectClosed : fateSpecificationCorrect
  robustnessAgainstPerturbationClosed : robustnessAgainstPerturbation

structure PatterningOutcomeEvidence (P : PatterningOutcomePackage) where
  morphologyAchievedClosed : P.morphologyAchieved
  fateSpecificationCorrectClosed : P.fateSpecificationCorrect
  robustnessAgainstPerturbationClosed : P.robustnessAgainstPerturbation

def PatterningOutcomeClosed (P : PatterningOutcomePackage) : Prop :=
  P.morphologyAchieved ∧ P.fateSpecificationCorrect ∧ P.robustnessAgainstPerturbation

theorem patterning_outcome_closed_from_evidence
    (P : PatterningOutcomePackage) (E : PatterningOutcomeEvidence P) :
    PatterningOutcomeClosed P := by
  exact And.intro E.morphologyAchievedClosed
    (And.intro E.fateSpecificationCorrectClosed E.robustnessAgainstPerturbationClosed)

end DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean
end HautevilleHouse