# require './db/seeds'

# 製品加工
product = Bouquet::Product.create_with(price: 1).find_or_create_by(name: :p1)
material = Bouquet::Material.create_with(expiration_days: 2, order_lead_time: 4, order_quantity: 6).find_or_create_by(name: :m1)
assembly = Bouquet::Assembly.create_with(quantity: 1).find_or_create_by(product_id: product.id, material_id: material.id)

# 倉庫
location = Bouquet::Location.create_with(capacity: 100).find_or_create_by(name: :l1)

# 仕入れ
supplier = Bouquet::Supplier.create_with(email: 's1@example.com').find_or_create_by(name: :s1)
purchase_order = Bouquet::PurchaseOrder.create_with(quantity: 1).find_or_create_by(supplier_id: supplier.id, material_id: material.id)
arrival = Bouquet::Arrival.create_with(quantity: 1).find_or_create_by(purchase_order_id: purchase_order.id)
stock = Bouquet::Stock.create_with(quantity: 1).find_or_create_by(location_id: location.id, arrival_id: arrival.id)
stock.storages.create(quantity: 1) if stock.storages.count == 0

# 販売
customer = Bouquet::Customer.create_with(email: 'c1@example.com').find_or_create_by(name: :c1)
sales_order = Bouquet::SalesOrder.create_with(quantity: 1).find_or_create_by(customer_id: customer.id, product_id: product.id)
shipment = Bouquet::Shipment.create_with(quantity: 1).find_or_create_by(sales_order_id: sales_order.id)
delivery = Bouquet::Delivery.create_with(quantity: 1).find_or_create_by(location_id: location.id, shipment_id: shipment.id)
delivery.storages.create(quantity: 1) if delivery.storages.count == 0
