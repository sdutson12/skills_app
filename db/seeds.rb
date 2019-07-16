# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(
  {
  first_name: 'Alberta',
  last_name: 'Lowe',
  password: 123456754,
  email: 'alberta@mail.com',
  photo: 'https://avatars0.githubusercontent.com/u/50481949?v=4'
  }
)

User.create!(
  {
  first_name: 'Lisa',
  last_name: 'Chinn',
  password: 123456,
  email: 'lisa@mail.com',
  photo: 'https://avatars1.githubusercontent.com/u/50211536?v=4'
  }
)

User.create!(
  {
  first_name: 'Sam',
  last_name: 'Dutson',
  password: 1234567,
  email: 'sam@mail.com',
  photo: 'https://avatars3.githubusercontent.com/u/27783841?v=4'
  }
)

User.create!(
  {
  first_name: 'Leo',
  last_name: 'Iamele',
  password: 12345678,
  email: 'leo@mail.com',
  photo: 'https://avatars1.githubusercontent.com/u/39697541?v=4'
  }
)

User.create!(
  {
  first_name: 'Sebas',
  last_name: 'Buffo',
  password: 123456789,
  email: 'sebas@mail.com',
  photo: 'https://avatars0.githubusercontent.com/u/18401014?s=460&v=4'
  }
)

User.create!(
  {
  first_name: 'Samu',
  last_name: 'Levy',
  password: 12233445,
  email: 'samu@mail.com',
  photo: 'https://avatars0.githubusercontent.com/u/21371991?s=460&v=4'
  }
)

Skill.destroy_all
Skill.create!(
  {
    title: 'Learn to play hockey with Alberta!' ,
    description: 'Hi! I\'m Alberta, and I\'ve been playing hockey for 8 years teaching it for 3 years. I would love to share my skills with you! Hope to meet you soon :)',
    sport: 'hockey',
    price: 30,
    photo: 'https://avatars0.githubusercontent.com/u/50481949?v=4',
    user_id: 1
  }
)

Skill.create!(
  {
    title: 'Learn to play golf with Alberta!' ,
    description: 'Hi! I\'m Alberta, and I\'ve been teaching golf for 7 years. I would love to share my skills with you! Hope to meet you soon :)',
    sport: 'golf',
    price: 65,
    photo: 'https://avatars0.githubusercontent.com/u/50481949?v=4',
    user_id: 1
  }
)

Skill.create!(
  {
    title: 'Learn to do yoga with Alberta!',
    description: 'Hi! I\'m Alberta, and I\'ve been doing yoga my whole life! I would love to share my skills with you! Hope to meet you soon :)',
    sport: 'yoga',
    price: 30,
    photo: 'https://avatars0.githubusercontent.com/u/50481949?v=4',
    user_id: 1
  }
)

Skill.create!(
  {
    title: 'Come play ball with Sam',
    description: 'Hey there! I\'m Sam, and I\'ve love playing \'ball! I\'ll turn you into the next Uncle Drew, and if you don\'t know who that is, don\'t bother messaging me! :)',
    sport: 'basketball',
    price: 45,
    photo: 'https://avatars3.githubusercontent.com/u/27783841?v=4',
    user_id: 3
  }
)

Skill.create!(
  {
    title: 'Climbing lesson with Sam!',
    description: 'Hola! I\'ve been climbing for a few years, and I\'ve ' ,
    sport: 'climbing',
    price: 75,
    photo: 'https://avatars3.githubusercontent.com/u/27783841?v=4',
    user_id: 3
  }
)

Skill.create!(
  {
    title: 'Swimming lessons with Leo!',
    description: 'I\'m an avid swimmer. Let\'s have fun swimming together!',
    sport: 'swimming',
    price: 35,
    photo: 'https://avatars1.githubusercontent.com/u/39697541?v=4',
    user_id: 4
  }
)

# do I need user_id?

Booking.destroy_all
Booking.create!(
  {
    status: 'accepted',
    start_date: Date.today,
    end_date: Date.today,
    skill_id: 1,
    user_id: 2
  }
)

Booking.create!(
  {
    status: 'pending',
    start_date: Date.today,
    end_date: Date.today,
    skill_id: 4,
    user_id: 2
  }
)

Booking.create!(
  {
    status: 'accepted',
    start_date: Date.today,
    end_date: Date.today,
    skill_id: 6,
    user_id: 2
  }
)

Booking.create!(
  {
    status: 'pending',
    start_date: Date.today,
    end_date: Date.tomorrow,
    skill_id: 3,
    user_id: 6
  }
)

Booking.create!(
  {
    status: 'cancelled',
    start_date: Date.today,
    end_date: Date.tomorrow,
    skill_id: 5,
    user_id: 6
  }
)

Booking.create!(
  {
    status: 'accepted',
    start_date: Date.today,
    end_date: Date.tomorrow,
    skill_id: 2,
    user_id: 6
  }
)

Booking.create!(
  {
    status: 'accepted',
    start_date: Date.today,
    end_date: Date.tomorrow,
    skill_id: 1,
    user_id: 5
  }
)

Booking.create!(
  {
    status: 'accepted',
    start_date: Date.today,
    end_date: Date.tomorrow,
    skill_id: 2,
    user_id: 5
  }
)

Booking.create!(
  {
    status: 'accepted',
    start_date: Date.today,
    end_date: Date.tomorrow,
    skill_id: 3,
    user_id: 5
  }
)

Booking.create!(
  {
    status: 'accepted',
    start_date: Date.today,
    end_date: Date.tomorrow,
    skill_id: 4,
    user_id: 1
  }
)

Review.create!(
  {
    title: 'Best instructor ever !',
    content: 'Can\'t believe how much better I am after just one session! Highly recommend!',
    stars: 5,
    booking_id: 1
  }
)
Review.create!(
  {
    title: 'Bestest instructor ever ever!',
    content: 'Can\'t believe how much better I am after just one session! Very much recommend!',
    stars: 4,
    booking_id: 2
  }
)
Review.create!(
  {
    title: 'Best best instructor ever!',
    content: 'Can\'t believe how much better I am after just one session! I definitely recommend!',
    stars: 5,
    booking_id: 3
  }
)
Review.create!(
  {
    title: 'Most amazing instructor ever!',
    content: 'Can\'t believe how much better I am after just one session! I recommend!',
    stars: 4,
    booking_id: 4
  }
)
Review.create!(
  {
    title: 'Wonderful instructor!',
    content: 'Can\'t believe how much better I am after just one session! Most def recommend!',
    stars: 5,
    booking_id: 5
  }
)
Review.create!(
  {
    title: 'Great teacher!',
    content: 'Can\'t believe how much better I am after just one session!',
    stars: 4,
    booking_id: 6
  }
)
Review.create!(
  {
    title: 'Best teacher ever!',
    content: 'Can\'t believe how much better I am after just one session!!!!',
    stars: 5,
    booking_id: 7
  }
)
Review.create!(
  {
    title: 'Best maestro ever!',
    content: 'Can\'t believe how much better I am after just one session! Highly recommend!!!',
    stars: 4,
    booking_id: 8
  }
)
Review.create!(
  {
    title: 'Awesome teacher!',
    content: 'Can\'t believe how much better I am after just one session! Highly recommend!!!!!!',
    stars: 5,
    booking_id: 9
  }
)
Review.create!(
  {
    title: 'Best teacher I have ever had!',
    content: 'Can\'t believe how much better I am after just one session! You should definitely take a lesson!!!!',
    stars: 4,
    booking_id: 10
  }
)
