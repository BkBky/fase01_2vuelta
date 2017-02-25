# Este archivo sirve para crear registros de prueba
flight1 = Flight.create(num_flight: '96384', date: '2015-06-15', depart:'11:17:16 UTC', from:'Western Sahara', to:'Saudi Arabia', duration:'7:00:00', cost:'829.50', passengers:'8')
flight2 = Flight.create(num_flight: '35472', date: '2015-06-15', depart:'13:36:40', from:'Western Sahara', to:'Saudi Arabia', duration:'7:00:00', cost:'748.45', passengers:'10')
flight3 = Flight.create(num_flight: '63669', date: '2015-06-15', depart:'14:47:27', from:'Western Sahara', to:'Saudi Arabia', duration:'7:00:00', cost:'4434.0', passengers:'23')


user1 = User.create(name: 'Bet', email: 'bek@gmail.com', admin:'true', password:'123')
user2 = User.create(name: 'Ivan', email: 'ivan@gmail.com', admin:'false', password:'')
user3 = User.create(name: 'Marcela', email: 'm@gmail.com', admin:'false', password:'')

bookg1 = Booking.create(num_booking:'001', total:'1', flight_id: '1')
bookg2 = Booking.create(num_booking:'002', total:'1', flight_id: '2')


user_book1 = UserBooking.create(user_id: user2.id, booking_id: bookg1.id)
user_book2 = UserBooking.create(user_id: user3.id, booking_id: bookg2.id)

UserFlight.create(user_id: user2.id, flight_id: flight1.id)
UserFlight.create(user_id: user2.id, flight_id: flight1.id)


