import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean

structure GradientFormationPackage where
  gradientShape : Type
  decayLength : Type
  steadyStateReached : Prop
  shapeCharacterization : Prop
  steadyStateReachedClosed : steadyStateReached
  shapeCharacterizationClosed : shapeCharacterization

structure GradientFormationEvidence (G : GradientFormationPackage) where
  steadyStateReachedClosed : G.steadyStateReached
  shapeCharacterizationClosed : G.shapeCharacterization

def GradientFormationClosed (G : GradientFormationPackage) : Prop :=
  G.steadyStateReached ∧ G.shapeCharacterization

theorem gradient_formation_closed_from_evidence
    (G : GradientFormationPackage) (E : GradientFormationEvidence G) :
    GradientFormationClosed G := by
  exact And.intro E.steadyStateReachedClosed E.shapeCharacterizationClosed

end DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean
end HautevilleHouse