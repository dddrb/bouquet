import * as types from '../constants/ActionTypes'

const initialState = {
  materials: [],
  order: {},
  snackbar_active: false
}

export default function(state = initialState, action) {
  switch (action.type) {
  case types.MATERIAL_RECEIVE:
    return {
      ...state,
      materials: action.materials
    }
  case types.MATERIAL_SHOW_ORDER:
    return {
      ...state,
      order: action.order,
      snackbar_active: true
    }
  case types.MATERIAL_HIDE_SNACKBAR:
    return {
      ...state,
      snackbar_active: false
    }
  default:
    return state
  }
}
