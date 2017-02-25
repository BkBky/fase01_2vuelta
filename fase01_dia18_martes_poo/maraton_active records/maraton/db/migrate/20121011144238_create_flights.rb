class CreateFlights < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
    end

    create_table :decks do |t|
      t.string :name
    end

    create_table :rounds do |t|
      t.belongs_to :user, index: true
      t.belongs_to :deck, index: true
      # t.integer :deck_id
      # t.integer :user_id
    end

    create_table :questions do |t|
      t.belongs_to :deck, index: true
      #t.integer :deck_id
      t.string :question
    end

    create_table :answers do |t|
      t.belongs_to :question, index: true
      #t.integer :question_id
      t.string :answer
      t.boolean :value_answer, default:false
    end

    create_table :round_questions do |t|
      t.belongs_to :round, index: true
      t.belongs_to :question, index: true
      #t.integer :round_id
      #t.integer :question_id
      t.string :answer_user
      t.integer :score
    end

  end
end
