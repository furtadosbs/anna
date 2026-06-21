stage1 = Stage.create(title: "Fase 1 - Câncer de pele: definição e tipos")

question1 = stage1.questions.create(description: "O que é o câncer de pele?", correct_value: "pele")
question1.options.create(description: "Crescimento descontrolado de células da pele", value: "pele")
question1.options.create(description: "Apenas manchas causadas pelo sol", value: "sol")
question1.options.create(description: "Uma alergia passageira", value: "alergia")

question2 = stage1.questions.create(description: "Qual é o tipo mais comum de câncer de pele?", correct_value: "nao_melanona")
question2.options.create(description: "Melanoma", value: "melanona")
question2.options.create(description: "Não melanoma", value: "nao_melanona")
question2.options.create(description: "Sarcoma", value: "sarcona")

question3 = stage1.questions.create(description: "Qual tipo é mais perigoso?", correct_value: "melanona")
question3.options.create(description: "Não melanoma", value: "nao_melanona")
question3.options.create(description: "Melanoma", value: "melanona")
question3.options.create(description: "Dematite", value: "dematite")

stage2 = Stage.create(title: "Fase 2 – Como identificar o câncer de pele")

question1 = stage2.questions.create(description: "Qual é um fator de risco para câncer de pele?", correct_value: "protecao")
question1.options.create(description: "Beber água", value: "agua")
question1.options.create(description: "Exposição ao sol sem proteção", value: "protecao")
question1.options.create(description: "Dormir pouco", value: "dormir")

question2 = stage2.questions.create(description: "Qual sinal pode indicar câncer de pele?", correct_value: "cor")
question2.options.create(description: "Mancha que muda de tamanho ou cor", value: "cor")
question2.options.create(description: "Pele hidratada", value: "pele")
question2.options.create(description: "Sardas normais", value: "sardas")

question3 = stage2.questions.create(description: "Quem tem mais risco?", correct_value: "clara")
question3.options.create(description: "Pessoas com pele clara", value: "clara")
question3.options.create(description: "Pessoas que usam protetor solar", value: "solar")
question3.options.create(description: "Pessoas que bebem muita água", value: 'agua')

User.create do |user|
  user.email_address = 'anna@anna.com'
  user.password = '12345678'
  user.password_confirmation = '12345678'
end
