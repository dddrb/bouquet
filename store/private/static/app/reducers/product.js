import * as types from '../constants/ActionTypes'

const initialState = {
  products: [],
  order: {},
  snackbar_active: false
}

export default function(state = initialState, action) {
  switch (action.type) {
  case types.PRODUCT_RECEIVE:
    return {
      ...state,
      products: action.products
    }
  case types.PRODUCT_SHOW_ORDER:
    return {
      ...state,
      order: action.order,
      snackbar_active: true
    }
  case types.PRODUCT_HIDE_SNACKBAR:
    return {
      ...state,
      snackbar_active: false
    }
  default:
    return state
  }
}
