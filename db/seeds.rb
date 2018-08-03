# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
products_data = [
  { name: 'Love Trust And Fairy Dust Vault (Limited Edition)', sold_out: false, category: 'makeup', price: 1000 },
  { name: 'Plenty of Pout Plumping Lipstick', sold_out: false, category: 'skincare', price: 2000 },
  { name: 'Luna Mini 2', sold_out: false, category: 'skincare', price: 3000 },
  { name: 'No Frizz Instant De-Frizzer', sold_out: false, category: 'hair', price: 4000 },
  { name: 'Beach Club Texture Spray', sold_out: false, category: 'hair', price: 5000 },
  { name: 'Cleansing Purifying Scrub with Sea Salt', sold_out: false, category: 'hair', price: 6000 }
]

products_data.each do |data|
  Product.create!(data)
end
