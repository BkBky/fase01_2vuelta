# Este archivo sirve para crear registros de prueba

user1 = User.create(name: 'Erick', password: '123', email: 'erick@gmail.com')
user2 = User.create(name: 'Esme', password: '456', email: 'esme@gmail.com')
user3 = User.create(name: 'Fausto', password: '789', email: 'fausto@gmail.com')


#Deck
deck1 = Deck.create(name: 'Geografía')
deck2 = Deck.create(name: 'Historia')
deck3 = Deck.create(name: 'Entretenimiento')

#Round
round1 = Round.create(deck_id: deck1.id, user_id: user1.id)
round2 = Round.create(deck_id: deck3.id, user_id: user2.id)
round3 = Round.create(deck_id: deck2.id, user_id: user2.id)
round4 = Round.create(deck_id: deck3.id, user_id: user3.id)
round5 = Round.create(deck_id: deck1.id, user_id: user2.id)

#Geografia
question1 = Question.create(deck_id: deck1.id, question: '¿Cuál es el país menos turístico de Europa?')
question2 = Question.create(deck_id: deck1.id, question: 'A qué país pertenece la isla de Tasmania?')
question3 = Question.create(deck_id: deck1.id, question: '¿En cuál de los siguientes países NO hay ningún desierto?')
question4 = Question.create(deck_id: deck1.id, question: '¿Cuál es el código internacional para Cuba?')
question5 = Question.create(deck_id: deck1.id, question: '¿Cuál es la capital del estado de Arkansas?')

#Entreteniemiento
question6 = Question.create(deck_id: deck2.id, question: '¿Qué premiada serie de televisión tiene como protagonista a un publicista?')
question7 = Question.create(deck_id: deck2.id, question: '¿Como se llamaba la protagonista femenina de la serie de televisión Scrubs?')
question8 = Question.create(deck_id: deck2.id, question: '¿Cómo se llamaba el personaje que interpretaba John Travolta en Grease?')
question9 = Question.create(deck_id: deck2.id, question: '¿En qué año se estrenó la película de Disney Pinocho?')
question10 = Question.create(deck_id: deck2.id, question: '¿En qué país nació la Bauhaus?')

#Historia
question11 = Question.create(deck_id: deck3.id, question: '¿Cuál es la rama mayoritaria del Islam?')
question12 = Question.create(deck_id: deck3.id, question: '¿De qué fue ministro Manuel Fraga durante el franquismo?')
question13 = Question.create(deck_id: deck3.id, question: '¿En qué año tuvo lugar el ataque a Pearl Harbor?')
question14 = Question.create(deck_id: deck3.id, question: '¿Las revueltas de dónde son llamadas Intifadas?')
question15 = Question.create(deck_id: deck3.id, question: 'La Comuna de París fue un movimiento...')

#1
Answer.create(question_id: question1.id, answer: 'Armenia', value_answer: false) 
Answer.create(question_id: question1.id, answer: 'Moldavia', value_answer: false)
Answer.create(question_id: question1.id, answer: 'Liechtenstein', value_answer: true)


#2
Answer.create(question_id: question2.id, answer: 'Estados Unidos', value_answer: false)
Answer.create(question_id: question2.id, answer: 'Australia', value_answer: true)
Answer.create(question_id: question2.id, answer: 'Portugal', value_answer: false)

#3
Answer.create(question_id: question3.id, answer: 'España', value_answer: false)
Answer.create(question_id: question3.id, answer: 'Chile', value_answer: false)
Answer.create(question_id: question3.id, answer: 'Alemania', value_answer: true)

#4
Answer.create(question_id: question4.id, answer: 'CA', value_answer: false)
Answer.create(question_id: question4.id, answer: 'CU', value_answer: true)
Answer.create(question_id: question4.id, answer: 'CB', value_answer: false)

#5
Answer.create(question_id: question5.id, answer: 'Kansas', value_answer: false)
#5 Geografía- correcta
Answer.create(question_id: question5.id, answer: 'Little Rock', value_answer: true)
Answer.create(question_id: question5.id, answer: 'Washington', value_answer: false)


#1 Entretenimiento correcta
Answer.create(question_id: question6.id, answer: 'Mad Men', value_answer: true)
Answer.create(question_id: question6.id, answer: 'Shameless', value_answer: false)
Answer.create(question_id: question6.id, answer: 'Juego de Tronos', value_answer: false)

#2 Entretenimiento correcta
Answer.create(question_id: question7.id, answer: 'Elliot', value_answer: true)
Answer.create(question_id: question7.id, answer: 'Sarah', value_answer: false)
Answer.create(question_id: question7.id, answer: 'Jordan', value_answer: false)

#3
Answer.create(question_id: question8.id, answer: 'Danny Puño', value_answer: false)
Answer.create(question_id: question8.id, answer: 'Danny Zuko', value_answer: true)
Answer.create(question_id: question8.id, answer: 'Danny Chulo', value_answer: false)

#4 Entretenimiento correcta
Answer.create(question_id: question9.id, answer: '1940', value_answer: true)
Answer.create(question_id: question9.id, answer: '1950', value_answer: false)
Answer.create(question_id: question9.id, answer: '1952', value_answer: false)


#5 Entretenimiento correcta
Answer.create(question_id: question10.id, answer: 'Alemania', value_answer: true)
Answer.create(question_id: question10.id, answer: 'Holanda', value_answer: false)
Answer.create(question_id: question10.id, answer: 'Rusia', value_answer: false)


#1 Historia
Answer.create(question_id: question11.id, answer: 'Chiísmo', value_answer: false)
Answer.create(question_id: question11.id, answer: 'Sunismo', value_answer: true)
Answer.create(question_id: question11.id, answer: 'Jariyismo', value_answer: false)

#2
Answer.create(question_id: question12.id, answer: 'De Interior', value_answer: false)
Answer.create(question_id: question12.id, answer: 'De Economía', value_answer: false)
Answer.create(question_id: question12.id, answer: 'De Información y Turismo', value_answer: true)

#3
Answer.create(question_id: question13.id, answer: '1939', value_answer: false)
Answer.create(question_id: question13.id, answer: '1940', value_answer: false)
Answer.create(question_id: question13.id, answer: '1941', value_answer: true)

#4
Answer.create(question_id: question14.id, answer: 'Montenegro', value_answer: false)
Answer.create(question_id: question14.id, answer: 'Kosovo', value_answer: false)
Answer.create(question_id: question14.id, answer: 'Palestina', value_answer: true)

#5
Answer.create(question_id: question15.id, answer: 'Del mayo de 68', value_answer: false)
Answer.create(question_id: question15.id, answer: 'Hippie de los años 60', value_answer: false)
Answer.create(question_id: question15.id, answer: 'Insurrecional autogestionario del XIX', value_answer: true)

RoundQuestion.create(round_id: round1.id, question_id:question15.id, answer_user: 'Del mayo de 68', score: 0)
RoundQuestion.create(round_id: round1.id, question_id:question15.id, answer_user: 'Insurrecional autogestionario del XIX', score: 1)
RoundQuestion.create(round_id: round1.id, question_id:question14.id, answer_user: 'Palestina', score: 1)

RoundQuestion.create(round_id: round2.id, question_id:question6.id, answer_user: 'Mad Men', score: 1)
RoundQuestion.create(round_id: round2.id, question_id:question7.id, answer_user: 'Elliot', score: 1)
RoundQuestion.create(round_id: round2.id, question_id:question8.id, answer_user: 'Danny Puño', score: 0)