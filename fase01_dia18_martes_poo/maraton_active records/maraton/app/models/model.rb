class User < ActiveRecord::Base
  has_many :rounds
  has_many :decks, through: :rounds
end

class Deck< ActiveRecord::Base
  has_many :rounds
  has_many :questions
  has_many :users, through: :rounds
  has_many :answers, through: :questions
end 

class Round < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :deck 
  has_many :round_questions
  has_many :questions, through: :round_questions
end

class Question < ActiveRecord::Base
  has_many :answers
  has_many :round_questions
  has_many :rounds, through: :round_questions
end 

class Answer < ActiveRecord::Base
  belongs_to :question
end 

class RoundQuestion < ActiveRecord::Base
  belongs_to :round
  belongs_to :question
end