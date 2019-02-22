require_relative('../models/bluray.rb')
require_relative('../models/supplier.rb')


Supplier.delete_all()
BluRay.delete_all()

supplier_1 = Supplier.new(
  {
    'name' => 'Lasgo Chrysalis',
    'email' => 'sales@lasgo.com',
    'telephone' => '0208 459 8800',
    'website' => 'https://www.lasgo.com'
  }
)

supplier_2 = Supplier.new(
  {
    'name' => 'Wholesale Clearance Uk',
    'email' => 'sales@wholesaleclearance.co.uk',
    'telephone' => '0330 113 1636',
    'website' => 'https://www.wholesaleclearance.co.uk'
  }
)

supplier_3 = Supplier.new(
  {
    'name' => 'Moovies Distribution',
    'email' => 'cs@moovies.co.uk',
    'telephone' => '0190 948 0480',
    'website' => 'https://moovies.uk'
  }
)

supplier_1.save()
supplier_2.save()
supplier_3.save()

bluray1 = BluRay.new(
  {
    'name' => 'Shawshank Redemption',
    'description' => 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
    'stock_quantity' => '50',
    'cost_price' => '2.99',
    'selling_price' => '4.99',
    'genre' => 'Drama',
    'imdb_rating' => '9.2',
    'supplier_id' => "#{supplier_1.id}"
  }
)

bluray2 = BluRay.new(
  {
    'name' => 'The Godfather',
    'description' => 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',
    'stock_quantity' => '25',
    'cost_price' => '3.50',
    'selling_price' => '5.99',
    'genre' => 'Crime',
    'imdb_rating' => '9.2',
    'supplier_id' => "#{supplier_1.id}"
  }
)

bluray3 = BluRay.new(
  {
    'name' => 'The Godfather: Part 2',
    'description' => 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',
    'stock_quantity' => '80',
    'cost_price' => '3.25',
    'selling_price' => '6.99',
    'genre' => 'Crime',
    'imdb_rating' => '9.0',
    'supplier_id' => "#{supplier_3.id}"
  }
)


bluray4 = BluRay.new(
  {
    'name' => 'The Dark Knight',
    'description' => 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
    'stock_quantity' => '60',
    'cost_price' => '4.80',
    'selling_price' => '6.99',
    'genre' => 'Action',
    'imdb_rating' => '9.0',
    'supplier_id' => "#{supplier_2.id}"
  }
)

bluray5 = BluRay.new(
  {
    'name' => 'Schindler\'s List',
    'description' => 'Oskar Schindler is a vainglorious and greedy German businessman who becomes an unlikely humanitarian amid the barbaric German Nazi reign when he feels compelled to turn his factory into a refuge for Jews. Based on the true story of Oskar Schindler who managed to save about 1100 Jews from being gassed at the Auschwitz concentration camp, it is a testament to the good in all of us.',
    'stock_quantity' => '30',
    'cost_price' => '1.60',
    'selling_price' => '5.25',
    'genre' => 'Drama',
    'imdb_rating' => '8.9',
    'supplier_id' => "#{supplier_3.id}"
  }
)

bluray6 = BluRay.new(
  {
    'name' => 'The Lord of the Rings: The Return of the King',
    'description' => 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
    'stock_quantity' => '10',
    'cost_price' => '2.85',
    'selling_price' => '6.99',
    'genre' => 'Fantasy',
    'imdb_rating' => '8.9',
    'supplier_id' => "#{supplier_1.id}"
  }
)


bluray7 = BluRay.new(
  {
    'name' => 'Fight Club',
    'description' => 'A nameless first person narrator (Edward Norton) attends support groups in attempt to subdue his emotional state and relieve his insomniac state. When he meets Marla (Helena Bonham Carter), another fake attendee of support groups, his life seems to become a little more bearable. However when he associates himself with Tyler (Brad Pitt) he is dragged into an underground fight club and soap making scheme. Together the two men spiral out of control and engage in competitive rivalry for love and power. When the narrator is exposed to the hidden agenda of Tyler\'s fight club, he must accept the awful truth that Tyler may not be who he says he is.',
    'stock_quantity' => '0',
    'cost_price' => '1.25',
    'selling_price' => '4.99',
    'genre' => 'Drama',
    'imdb_rating' => '8.8',
    'supplier_id' => "#{supplier_2.id}"
  }
)

bluray8 = BluRay.new(
  {
    'name' => 'Life of Pi',
    'description' => 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.',
    'stock_quantity' => '0',
    'cost_price' => '1.40',
    'selling_price' => '3.99',
    'genre' => 'Fantasy',
    'imdb_rating' => '7.9',
    'supplier_id' => "#{supplier_3.id}"
  }
)

bluray9 = BluRay.new(
  {
    'name' => 'The Green Mile',
    'description' => 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder, yet who has a mysterious gift.',
    'stock_quantity' => '15',
    'cost_price' => '1.00',
    'selling_price' => '3.99',
    'genre' => 'Crime',
    'imdb_rating' => '8.5',
    'supplier_id' => "#{supplier_2.id}"
  }
)

bluray10 = BluRay.new(
  {
    'name' => 'Mission: Impossible - Fallout',
    'description' => '
    Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong.',
    'stock_quantity' => '84',
    'cost_price' => '3.65',
    'selling_price' => '7.99',
    'genre' => 'Action',
    'imdb_rating' => '7.9',
    'supplier_id' => "#{supplier_3.id}"
  }
)


bluray11 = BluRay.new(
  {
    'name' => 'Creed 2',
    'description' => 'Under the tutelage of Rocky Balboa, heavyweight contender Adonis Creed faces off against Viktor Drago, son of Ivan Drago.',
    'stock_quantity' => '20',
    'cost_price' => '4.50',
    'selling_price' => '8.99',
    'genre' => 'Drama',
    'imdb_rating' => '7.9',
    'supplier_id' => "#{supplier_1.id}"
  }
)

bluray12 = BluRay.new(
  {
    'name' => 'Aquaman',
    'description' => 'Arthur Curry learns that he is the heir to the underwater kingdom of Atlantis, and must step forward to lead his people and be a hero to the world.',
    'stock_quantity' => '90',
    'cost_price' => '5.55',
    'selling_price' => '10.00',
    'genre' => 'Fantasy',
    'imdb_rating' => '8.4',
    'supplier_id' => "#{supplier_3.id}"
  }
)

bluray13 = BluRay.new(
  {
    'name' => 'The Lord of the Rings: The Fellowship of the Ring',
    'description' => 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',
    'stock_quantity' => '50',
    'cost_price' => '1.99',
    'selling_price' => '5.99',
    'genre' => 'Fantasy',
    'imdb_rating' => '8.8',
    'supplier_id' => "#{supplier_1.id}"
  }
)

bluray14 = BluRay.new(
  {
    'name' => 'Forrest Gump',
    'description' => 'The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.',
    'stock_quantity' => '5',
    'cost_price' => '1.99',
    'selling_price' => '3.99',
    'genre' => 'Drama',
    'imdb_rating' => '8.8',
    'supplier_id' => "#{supplier_2.id}"
  }
)


bluray14 = BluRay.new(
  {
    'name' => 'Avatar',
    'description' => 'A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.',
    'stock_quantity' => '45',
    'cost_price' => '2.35',
    'selling_price' => '5.99',
    'genre' => 'Fantasy',
    'imdb_rating' => '7.8',
    'supplier_id' => "#{supplier_3.id}"
  }
)


bluray15 = BluRay.new(
  {
    'name' => 'Terminator',
    'description' => 'A seemingly indestructible android is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all costs.',
    'stock_quantity' => '7',
    'cost_price' => '1.00',
    'selling_price' => '3.99',
    'genre' => 'Sci-Fi',
    'imdb_rating' => '8.0',
    'supplier_id' => "#{supplier_1.id}"
  }
)
bluray1.save
bluray2.save
bluray3.save
bluray4.save
bluray5.save
bluray6.save
bluray7.save
bluray8.save
bluray9.save
bluray10.save
bluray11.save
bluray12.save
bluray13.save
bluray14.save
bluray15.save
