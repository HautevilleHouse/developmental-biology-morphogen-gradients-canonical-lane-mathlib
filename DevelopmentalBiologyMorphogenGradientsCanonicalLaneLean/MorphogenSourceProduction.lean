import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean

structure MorphogenSourcePackage where
  sourceCellType : Type
  productionRate : Type
  diffusionCoefficient : Type
  degradationRate : Type
  sourceLocalization : Prop
  productionRegulation : Prop
  sourceLocalizationClosed : sourceLocalization
  productionRegulationClosed : productionRegulation

structure MorphogenSourceEvidence (M : MorphogenSourcePackage) where
  sourceLocalizationClosed : M.sourceLocalization
  productionRegulationClosed : M.productionRegulation

def MorphogenSourceClosed (M : MorphogenSourcePackage) : Prop :=
  M.sourceLocalization ∧ M.productionRegulation

theorem morphogen_source_closed_from_evidence (M : MorphogenSourcePackage)
    (E : MorphogenSourceEvidence M) : MorphogenSourceClosed M := by
  exact And.intro E.sourceLocalizationClosed E.productionRegulationClosed

end DevelopmentalBiologyMorphogenGradientsCanonicalLaneLean
end HautevilleHouse