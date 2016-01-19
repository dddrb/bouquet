import * as types from '../constants/ActionTypes'
import 'isomorphic-fetch'

//const endpoint = 'http://localhost:3000'
const endpoint = ''

export function receiveProducts(products) {
  return {
    type: types.PRODUCT_RECEIVE,
    products: products
  }
}

export function searchProducts() {
  return dispatch => {
    return fetch(endpoint + '/api/products')
      .then(response => response.json())
      .then(json => dispatch(receiveProducts(json)))
  }
}

export function showOrder(order) {
  console.log(order)
  return {
    type: types.PRODUCT_SHOW_ORDER,
    order: order
  }
}

export function salesOrder(product_id) {
  return dispatch => {
    return fetch(endpoint + '/api/sales_orders', {
        method: 'post',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          quantity: 10,
          shipment_date: '2014-03-21',
          product_id: product_id,
          customer_id: 1
        })
      })
      .then(response => response.json())
      .then(json => dispatch(showOrder(json)))
  }
}

export function hideSnackbar() {
  return {
    type: types.PRODUCT_HIDE_SNACKBAR
  }
}
