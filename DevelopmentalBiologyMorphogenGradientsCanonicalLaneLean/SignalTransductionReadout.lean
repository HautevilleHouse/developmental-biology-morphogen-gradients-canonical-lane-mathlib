import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean

structure SignalTransductionPackage where
  receptorType : Type
  intracellularCascade : Type
  transcriptionalResponse : Type
  receptorBinding : Prop
  cascadeActivation : Prop
  geneExpressionRegulation : Prop
  receptorBindingClosed : receptorBinding
  cascadeActivationClosed : cascadeActivation
  geneExpressionRegulationClosed : geneExpressionRegulation

structure SignalTransductionEvidence (S : SignalTransductionPackage) where
  receptorBindingClosed : S.receptorBinding
  cascadeActivationClosed : S.cascadeActivation
  geneExpressionRegulationClosed : S.geneExpressionRegulation

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.receptorBinding ∧ S.cascadeActivation ∧ S.geneExpressionRegulation

theorem signal_transduction_closed_from_evidence
    (S : SignalTransductionPackage) (E : SignalTransductionEvidence S) :
    SignalTransductionClosed S := by
  exact And.intro E.receptorBindingClosed
    (And.intro E.cascadeActivationClosed E.geneExpressionRegulationClosed)

end DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean
end HautevilleHouse