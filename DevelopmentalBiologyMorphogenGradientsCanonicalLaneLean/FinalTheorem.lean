import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean.BridgeLemmas
import DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean

def ConstrainedMorphogenGradientClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_morphogen_gradient_endgame (A : AdmissibleClass) :
    ConstrainedMorphogenGradientClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean
end HautevilleHouse