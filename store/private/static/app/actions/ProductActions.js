import * as types from '../constants/ActionTypes';
import request from 'superagent';

export function receiveProducts(products) {
  return {
    type: types.RECEIVE_PRODUCTS,
    products: products
  }
}

export function searchComments() {
  return dispatch => {
    request
      .get('http://localhost:3000/api/products')
      .end((err, res) => {
        if (err) {
          return new Error(err);
        }
        console.log(res.body)
        dispatch(receiveProducts(res.body))
      })
  }
}
