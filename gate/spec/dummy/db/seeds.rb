Bouquet::Product.create_with(name: :p1).find_or_create_by(name: :p1)
Bouquet::Product.create_with(name: :p2).find_or_create_by(name: :p2)
