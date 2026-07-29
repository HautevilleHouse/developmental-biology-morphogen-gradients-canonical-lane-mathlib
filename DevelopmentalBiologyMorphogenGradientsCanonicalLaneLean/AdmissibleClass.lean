import DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean

structure AdmissibleClass where
  object : MorphogenGradientAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MorphogenGradientWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean
end HautevilleHouse