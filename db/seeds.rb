# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

articles = Article.create([{title: 'New photography', content: 'In a new exhibition at the Royal Botanic Garden Edinburgh, famous photographer explores the astonishing diversity of nature.', author: 'Oscar Davies', category: 'Nature', published_at: '2020-01-10'}])