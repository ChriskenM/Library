# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Book.create!([
  { title: "The River Between", author: "Ngugi wa Thiongo", isbn: "9780435900175"},
  { title: "Chaka", author: "Thomas Mofolo", isbn: "9780124365"},
  { title: "The Hobbit", author: "J.R.R. Tolkien", isbn: "9780547928227" },
  { title: "Things Fall Apart", author: "Chinua Achebe", isbn: "9780385474542"},
  { title: "1984", author: "George Orwell", isbn: "9780451524935" },
  { title: "To Kill a Mockingbird", author: "Harper Lee", isbn: "9780446310789" },
  { title: "Gulliver's Travels", author: "Demetris Stockley", isbn: "933942913"},
  { title: "Brown's Requiem", author: "Silvana Palomba", isbn: "811369068"},
  { title: "Me You Them (Eu, Tu, Eles)", author: "Jackqueline Gillooly", isbn: "842082670-7" },
  { title: "Destination Moon", author: "Jayne Wheelwright", isbn: "338881082-6" },
  { title: "Last Days of Mussolini (Mussolini: Ultimo atto)", author: "Giraldo Haspineall", isbn: "657310467-6" },
  { title: "Daleks' Invasion Earth: 2150 A.D.", author: "Darrick Lincke", isbn: "829911395-4" },
  { title: "Gold of Naples, The (L'oro di Napoli)", author: "Reggie Powder", isbn: "099331602-6" },
  { title: "King Creole", author: "Franklin Foulis", isbn: "560022407-9" },
  { title: "Women Aren't Funny", author: "Brigitta Phinnis", isbn: "265368032-7" },
  { title: "Slight Case of Murder, A", author: "Gearalt Dwerryhouse", isbn: "411345795-6" },
  { title: "Living Will...", author: "Andromache Scarborough", isbn: "008286707-0" },
  { title: "Just Like Me (Igualita a Mi)", author: "Ad Moatt", isbn: "004518455-0" },
  { title: "City Streets", author: "Jody Brion", isbn: "594010730-3" },
  { title: "Notorious C.H.O.", author: "Alison Dobrowolny", isbn: "095333753-7" }
])