puts "Deleting all data..."
Workout.destroy_all
Workout.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence
Instructor.destroy_all
Instructor.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
TakenClass.destroy_all
TakenClass.reset_pk_sequence

puts "Creating workouts..."
40.times do
    Workout.create(
        category_id: rand(1..7),
        instructor_id: rand(1..10),
        length: rand(5..61),
        video_url: Faker::Internet.url(host: 'example.com')
    )
end

puts "Creating categories..."
strength = Category.create(name: "Strength")
yoga = Category.create(name: "Yoga")
cardio = Category.create(name: "Cardio")
meditation = Category.create(name: "Meditation")
running = Category.create(name: "Running")
cycling = Category.create(name: "Cycling")
stretching = Category.create(name: "Stretching")

puts "Creating instructors..."
10.times do
    Instructor.create(
        name: Faker::Movies::LordOfTheRings.character
    )
end

puts "Creating users..."
20.times do
    User.create(
        name: Faker::TvShows::GameOfThrones.character,
        username: Faker::Internet.username
    )
end

puts "Creating taken_classes..."
30.times do
    TakenClass.create(
        workout_id: rand(1..40),
        user_id: rand(1..20)
    )
end

puts "Seeding done!"