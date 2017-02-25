class Controller 
  def initialize
    @view = View.new
    index
  end

  def index
    input = @view.index
    users = User.all 
    case input
      when "1" then menu_register(input)
      when "2" 
        login_input = @view.login 
        login_user(login_input)
        
        # input_play = @view.play
        # case input_play
        # when "1" then geography(input_play)
        # end
        # 
    end
  end

  def menu_register(input_user)
    if input_user.to_i == 1
       new_user_inputs = @view.register
       login(new_user_inputs)
    end
  end

  def login(new_user)  
    new_user.each_with_index do |value, index|
      if index == 0
        User.create do |u|
          u.name = new_user[0]
          u.email = new_user[1]
          u.password = new_user[2]
        end
      end
    end
    p "Te has registrado correctamente"
    #@view.login
     new_login_inputs = @view.login#(new_user)
     login_user(new_login_inputs)
  end

  def login_user(new_sig)
    
    @user = User.find_by(name: new_sig[0], password: new_sig[1])
    if @user 
      input_play = @view.play
      menu_deck(input_play)
    else 
      @view.user_not_found
    end   
  end

  def menu_deck(input_play2)
    case input_play2
      when "1" 
        show_geography

        # input_gamer_geography = @view.show_geography_view
        # counter(input_gamer_geography)
      #when "2" then p "Estoy en el 2 de juego"
    end
  end

  def show_geography
    correct_answers = 0
    incorrect_answers = 0
    question_id = 0
    new_list = []
    new_values_answer = []
    new_question = ""
    score = 0
    deck = Deck.find_by(name: "Geografía")
    p round = Round.create(user_id: @user.id, deck_id: deck.id)
    questions = Question.where(deck_id: deck.id)
    
    questions.each do |quest|
      new_question = quest.question
      question_id = quest.id
      answers = Answer.where(question_id: quest.id)
      
      answers.each do |answer|
        new_list << [answer.answer, answer.value_answer, answer.id]
      end    
      
      result_gamer = @view.show_geography_view(new_question, new_list)
            
      case result_gamer
        when "a" then new_values_answer << [new_list[0][0], new_list[0][1], new_list[0][2]]
        when "b" then new_values_answer << [new_list[1][0], new_list[1][1], new_list[1][2]]
        when "c" then new_values_answer << [new_list[2][0], new_list[2][1], new_list[2][2]]  
      end

      new_list = []

      if new_values_answer[0][1] == true
        correct_answers += 1 
        score = 1
      else
        incorrect_answers+= 1
        score = 0
      end
      @view.result_geography(correct_answers, incorrect_answers)
      RoundQuestion.create(round_id: round.id, question_id: question_id, answer_user: new_values_answer[0][2], score: score)
    end
 
    
  end

end   



     # #questions = Question.all
     # --deck = Deck.find_by(name: "Geografía")
     # --questions = Question.where(deck_id: deck.id)
     
     # --answers = Answer.where(question_id: (1..5))
     # #question = Answer.find_by(question_id: 1)
     
     # --@view.show_geography_view(questions, answers)
