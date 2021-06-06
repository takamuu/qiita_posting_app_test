user1 = User.create!(name: "akagi", email: "akagi@example.com", password: "password")
user2 = User.create!(name: "uozumi", email: "uozumi@example.com", password: "password")
user3 = User.create!(name: "anzai", email: "anzai@example.com", password: "password")

puts "userデータの投入に成功しました！"

product1 = Product.create!(product_name: "サッカーボール", product_price: 10000)
product2 = Product.create!(product_name: "バスケットボール", product_price: 15000)

puts "productデータの投入に成功しました！"

Contract.create!(user_id: user1.id, product_id: product1.id, product_name: product1.product_name, contract_money: 500000, contract_status: 0)
Contract.create!(user_id: user2.id, product_id: product2.id, product_name: product2.product_name, contract_money: 1000000, contract_status: 1)
Contract.create!(user_id: user1.id, product_id: product2.id, product_name: product2.product_name, contract_money: 500000, contract_status: 0)

puts "Contractデータの投入に成功しました！"
