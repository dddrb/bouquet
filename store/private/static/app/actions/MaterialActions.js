import * as types from '../constants/ActionTypes'
import 'isomorphic-fetch'

//const endpoint = 'http://localhost:3000'
const endpoint = ''

export function receiveMaterials(materials) {
  return {
    type: types.MATERIAL_RECEIVE,
    materials: materials
  }
}

export function searchMaterials() {
  return dispatch => {
    return fetch(endpoint + '/api/materials')
      .then(response => response.json())
      .then(json => dispatch(receiveMaterials(json)))
  }
}

export function showOrder(order) {
  console.log(order)
  return {
    type: types.MATERIAL_SHOW_ORDER,
    order: order
  }
}

export function purchaseOrder(material_id) {
  return dispatch => {
    return fetch(endpoint + '/api/purchase_orders', {
        method: 'post',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          quantity: 10,
          arrival_date: '2014-03-21',
          material_id: material_id,
          supplier_id: 1
        })
      })
      .then(response => response.json())
      .then(json => dispatch(showOrder(json)))
  }
}

export function hideSnackbar() {
  return {
    type: types.MATERIAL_HIDE_SNACKBAR
  }
}
