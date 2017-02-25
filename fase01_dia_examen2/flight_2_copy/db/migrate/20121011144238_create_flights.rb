class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :num_flight
      t.date :date
      t.time :depart
      t.string :from
      t.string :to
      t.time :duration
      t.float :cost
      t.integer :passengers
    end

    create_table :users do |t|
    	t.string :name
      t.string :email
      t.string :admin 
      t.string :password
    end

    create_table :bookings do |t|
      t.integer :num_booking 
      t.integer :total 
      t.belongs_to :flight, index: true
    end
    
    create_table :user_bookings do |t|
      t.belongs_to :user, index: true
      t.belongs_to :booking, index: true
     
    end

    create_table :user_flights do |t|
      t.belongs_to :user, index: true
      t.belongs_to :flight, index: true
    end

  end
end
