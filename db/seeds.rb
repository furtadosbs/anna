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

stage3 = Stage.create(title: "Fase 3 – Como proteger sua pele")

question1 = stage3.questions.create(description: "Qual FPS é recomendado?", correct_value: "30")
question1.options.create(description: "FPS 10", value: "10")
question1.options.create(description: "FPS 30 ou mais", value: "30")
question1.options.create(description: "Não precisa usar", value: "nao")

question2 = stage3.questions.create(description: "Quando reaplicar o protetor solar?", correct_value: "2horas")
question2.options.create(description: "Uma vez por dia", value: "uma")
question2.options.create(description: "A cada 2 horas ", value: "2horas")
question2.options.create(description: "Nunca precisa reaplicar", value: "nunca")

question3 = stage3.questions.create(description: "Qual é um hábito correto?", correct_value: "roupas")
question3.options.create(description: "Ficar no sol entre 10h e 16h", value: "sol")
question3.options.create(description: "Usar chapéu e roupas adequadas", value: "roupas")
question3.options.create(description: "Não usar proteção", value: 'nao')

stage4 = Stage.create(title: "Fase 4 – Mitos e verdades")

question1 = stage4.questions.create(description: "Pessoas negras precisam usar protetor solar?", correct_value: "sim")
question1.options.create(description: "Não", value: "nao")
question1.options.create(description: "Sim", value: "sim")
question1.options.create(description: "Só no verão", value: "verao")

question2 = stage4.questions.create(description: "Em dias nublados é necessário protetor?", correct_value: "sim")
question2.options.create(description: "Não", value: "nao")
question2.options.create(description: "Sim", value: "sim")
question2.options.create(description: "Só se estiver calor", value: "calor")

question3 = stage4.questions.create(description: "Bronzeado é sinal de saúde?", correct_value: "nao")
question3.options.create(description: "Sim", value: "sim")
question3.options.create(description: "Não", value: "nao")
question3.options.create(description: "Depende do dia", value: 'dia')

stage5 = Stage.create(title: "Fase 5 – Regra do ABCDE ")

question1 = stage5.questions.create(description: "Qual dessas bordas merece mais atenção?", correct_value: "borrada")
question1.options.create(description: "Lisa e bem redonda", value: "nao")
question1.options.create(description: "Irregular, “desenhada” ou borrada", value: "borrada")
question1.options.create(description: "Pequena e clara", value: "clara")

question2 = stage5.questions.create(description: "Qual mudança na cor é preocupante?", correct_value: "cores")
question2.options.create(description: "Uma cor só (ex: toda marrom clara)", value: "cor")
question2.options.create(description: "Várias cores na mesma pinta (preto, marrom, avermelhado)", value: "cores")
question2.options.create(description: "Cor igual à pele", value: "pele")

question3 = stage5.questions.create(description: "Qual mudança ao longo do tempo é perigosa?", correct_value: "cor")
question3.options.create(description: "A pinta ficar igual sempre", value: "igual")
question3.options.create(description: "A pinta desaparecer", value: "desaparecer")
question3.options.create(description: "A pinta mudar de tamanho, forma ou cor", value: 'cor')

stage6 = Stage.create(title: "Fase 6 – Crianças e idosos")

question1 = stage6.questions.create(description: "Crianças devem usar protetor solar?", correct_value: "sim")
question1.options.create(description: "Não", value: "nao")
question1.options.create(description: "Sim", value: "sim")
question1.options.create(description: "Só na praia", value: "praia")

question2 = stage6.questions.create(description: "Idosos precisam de cuidados com a pele?", correct_value: "nao")
question2.options.create(description: "Não", value: "nao")
question2.options.create(description: "Sim", value: "sim")
question2.options.create(description: "Sé se estiver doente", value: "doente")

question3 = stage6.questions.create(description: "Qual é um cuidado importante?", correct_value: "sol")
question3.options.create(description: "Evitar sol direto em horários fortes", value: "sol")
question3.options.create(description: "Não usar proteção", value: "protecao")
question3.options.create(description: "Tomar sol o dia todo", value: 'dia')

stage7 = Stage.create(title: "Fase 7 – Mensagem motivacional")

question1 = stage7.questions.create(description: "Cuidar da pele é importante por quê?", correct_value: "bem")
question1.options.create(description: "Só por estética", value: "estetica")
question1.options.create(description: "Para saúde e bem-estar", value: "bem")
question1.options.create(description: "Não é importante", value: "importante")

question2 = stage7.questions.create(description: "O autocuidado é:", correct_value: "amor")
question2.options.create(description: "Desnecessário", value: "desnecessario")
question2.options.create(description: "Um ato de amor próprio", value: "amor")
question2.options.create(description: "Perda de tempo", value: "tempo")

question3 = stage7.questions.create(description: "Proteger-se do sol ajuda a:", correct_value: "pele")
question3.options.create(description: "Evitar problemas de pele", value: "pele")
question3.options.create(description: "Ficar mais cansado", value: "cansado")
question3.options.create(description: "Não muda nada", value: 'nada')

User.create do |user|
  user.email_address = 'anna@anna.com'
  user.password = '12345678'
  user.password_confirmation = '12345678'
end
