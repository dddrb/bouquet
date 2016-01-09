import * as types from '../constants/ActionTypes';
import request from 'superagent';

export function receiveProducts(products) {
  return {
    type: types.RECEIVE_PRODUCTS,
    products: products
  }
}

export function searchProducts() {
  return dispatch => {
    request
      .get('http://localhost:3000/api/products')
      .end((err, res) => {
        if (err) {
          return new Error(err);
        }
        dispatch(receiveProducts(res.body))
      })
  }
}

export function createOrders(product_id) {
  console.log("createOrders " + product_id);
  return {
    type: types.CREATE_ORDER
  }
}
