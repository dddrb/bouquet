
# 製品加工
product = Bouquet::Product.create_with(price: 1).find_or_create_by(name: :p1)
material = Bouquet::Material.create_with(expiration_days: 1, order_lead_time: 2, order_quantity: 3).find_or_create_by(name: :m1)
assembly = Bouquet::Assembly.create_with(quantity: 1).find_or_create_by(product_id: product.id, material_id: material.id)

# 場所
location = Bouquet::Location.create_with(capacity: 100).find_or_create_by(name: :l1)

# 仕入れ
supplier = Bouquet::Supplier.create_with(email: 's1@example.com').find_or_create_by(name: :s1)
purchase_order = Bouquet::PurchaseOrder.create_with(quantity: 1).find_or_create_by(supplier_id: supplier.id, material_id: material.id)
arrival = Bouquet::Arrival.create_with(quantity: 1).find_or_create_by(purchase_order_id: purchase_order.id)
stock = Bouquet::Stock.create_with(quantity: 1).find_or_create_by(location_id: location.id, arrival_id: arrival.id)
storage = Bouquet::Storage.create_with(quantity: 1).find_or_create_by(stock_id: stock.id)

# 販売
customer = Bouquet::Customer.create_with(email: 'c1@example.com').find_or_create_by(name: :c1)
sales_order = Bouquet::SalesOrder.create_with(quantity: 1).find_or_create_by(customer_id: customer.id, product_id: product.id)
shipment = Bouquet::Shipment.create_with(quantity: 1).find_or_create_by(sales_order_id: sales_order.id)
delivery = Bouquet::Delivery.create_with(quantity: 1).find_or_create_by(location_id: location.id, shipment_id: shipment.id)
retrieval = Bouquet::Retrieval.create_with(quantity: 1).find_or_create_by(storage_id: storage.id, delivery_id: delivery.id)
