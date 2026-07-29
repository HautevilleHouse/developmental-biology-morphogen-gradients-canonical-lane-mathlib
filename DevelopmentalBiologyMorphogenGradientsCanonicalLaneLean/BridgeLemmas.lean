import DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MorphogenGradientWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean
end HautevilleHouse