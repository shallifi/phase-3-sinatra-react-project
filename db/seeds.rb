puts "🌱 Seeding spices..."

# Seed your database here

# faker for name of pieces

2.times do
    ShowPiece.create(
        title: Faker::Emotion.adjective, 
        number_of_performers: rand(1..10),
        length: rand(3..15),
        music_album: Faker::Music.album,
        movement_style: Faker::Music.genre
    )
end

# faker info for audience member info
5.times do
    AudienceMember.create(
        name: Faker::Name.unique.name,
        age: rand(13..100),
        household_income: rand(10000..100000),
        city: Faker::Games::DnD.city,
        first_time: true
    )
end
5.times do
    AudienceMember.create(
        name: Faker::Name.unique.name,
        age: rand(13..100),
        household_income: rand(10000..100000),
        city: Faker::Games::DnD.city,
        first_time: false
    )
end

# faker seed for feedbacks

5.times do
    Feedback.create(
        score: rand(1..10),
        what_did_you_enjoy: Faker::Lorem.sentence,
        what_needs_improvement: Faker::Lorem.sentence,
        would_you_watch_again: Faker::Boolean.boolean, 
        comment: Faker::Lorem.paragraph,
        how_did_you_hear_about_the_show: Faker::Lorem.words(number: 4),
        created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
        show_piece_id: rand(1..5),
        audience_member_id: rand(1..5)
    )
end



puts "✅ Done seeding!"
