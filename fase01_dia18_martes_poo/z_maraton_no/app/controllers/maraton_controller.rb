class MaratonController
  def initialize(args)
    @view = MaratonView.new



  end

  def select_question 
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    categoria = random(1..3)
    question = random(1..5)
      if categoria == 3
        question = Question.find_by(question: 'question.to_i+10')
      elsif categoria == 2
        question = Question.find_by(question: 'question.to_i+5')
      else 
        question = Question.find_by(question: 'question.to_i')
      end
        @view.begin(categoria, question)
  end

  def add
  end

  def delete
  end

  def complete
  end
end
