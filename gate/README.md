# Bouquet::Gate

## API

### Purchase Order

```
POST api/purchase_orders

{
  "quantity": 10,
  "arrival_date": "2014-03-21",
  "material_id": 1,
  "supplier_id": 1
}
```

### Sales Order

```
POST api/sales_orders

{
  "quantity": 1,
  "shipment_date": "2014-03-21",
  "product_id": 1,
  "customer_id": 1
}
```
