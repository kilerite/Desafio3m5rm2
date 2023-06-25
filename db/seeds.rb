# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Crear 100 registros en cada modelo


Movie.destroy_all
Cerie.destroy_all
Documentaryfilm.destroy_all

100.times do
    Cerie.create!(
      name: Faker::Movie.title,
      synopsis: Faker::Lorem.paragraph(sentence_count: 3),
      director: Faker::Name.name
    )
  end
  
  100.times do
    Documentaryfilm.create!(
      name: Faker::Movie.title,
      synopsis: Faker::Lorem.paragraph(sentence_count: 3),
      director: Faker::Name.name
    )
  end
  
  100.times do
    Movie.create!(
      name: Faker::Movie.title,
      synopsis: Faker::Lorem.paragraph(sentence_count: 3),
      director: Faker::Name.name
    )
  end
  
  # Agregar al menos una película con cada letra del alfabeto
  ('A'..'Z').each do |letter|
    Movie.create!(
      name: "Movie with letter #{letter}",
      synopsis: Faker::Lorem.paragraph(sentence_count: 3),
      director: Faker::Name.name
    )
  end