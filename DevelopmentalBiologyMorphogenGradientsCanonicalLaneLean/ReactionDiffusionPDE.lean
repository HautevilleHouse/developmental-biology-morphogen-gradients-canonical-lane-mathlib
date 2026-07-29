import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean

structure ReactionDiffusionPDEPackage where
  timeDomain : Type
  spatialDomain : Type
  morphogenConcentration : Type
  pdeFormulation : Prop
  boundaryConditions : Prop
  initialCondition : Prop
  pdeFormulationClosed : pdeFormulation
  boundaryConditionsClosed : boundaryConditions
  initialConditionClosed : initialCondition

structure ReactionDiffusionPDEEvidence (R : ReactionDiffusionPDEPackage) where
  pdeFormulationClosed : R.pdeFormulation
  boundaryConditionsClosed : R.boundaryConditions
  initialConditionClosed : R.initialCondition

def ReactionDiffusionPDEClosed (R : ReactionDiffusionPDEPackage) : Prop :=
  R.pdeFormulation ∧ R.boundaryConditions ∧ R.initialCondition

theorem reaction_diffusion_pde_closed_from_evidence
    (R : ReactionDiffusionPDEPackage) (E : ReactionDiffusionPDEEvidence R) :
    ReactionDiffusionPDEClosed R := by
  exact And.intro E.pdeFormulationClosed
    (And.intro E.boundaryConditionsClosed E.initialConditionClosed)

end DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean
end HautevilleHouse