class Feedback < ApplicationRecord
  belongs_to :user

  QUESTIONS = [
    "Planejamento e organização: Como você avalia a clareza dos objetivos, o planejamento das atividades e a organização dos recursos?",
    "Eficiência dos processos: Os processos são executados de forma eficiente, sem desperdícios e com foco em resultados?",
    "Utilização de recursos: Os recursos (materiais, equipamentos, pessoas) são utilizados de forma otimizada e responsável?",
    "Qualidade dos produtos/serviços: Os produtos ou serviços entregues atendem aos padrões de qualidade e às expectativas dos clientes?",
    "Melhoria contínua: A empresa busca constantemente aprimorar seus processos e resultados, incentivando a participação de todos?",
    "Comunicação interna: A comunicação entre as áreas e os colaboradores é clara, eficiente e transparente?",
    "Resolução de problemas: Os problemas são identificados e resolvidos de forma rápida e eficaz, com foco em soluções preventivas?",
    "Cultura de excelência: A empresa promove uma cultura de busca pela excelência, valorizando a disciplina, o profissionalismo e o aprendizado?"
  ]

  def formatted_created_at
    created_at.strftime("%d/%m/%Y")
  end




end
