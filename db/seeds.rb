# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Playlist.destroy_all
Word.destroy_all



investment = Playlist.create(
  category: "Investment/Financial")

Word.create([
  {englishword: "invent", otherword: "投资", pinyin: "touzi", playlist: investment},
  {englishword: "market", otherword: "市场", pinyin: "shichang", playlist: investment}
  ])
