import * as types from '../constants/ActionTypes'

const initialState = {
  storages: []
}

export default function(state = initialState, action) {
  switch (action.type) {
  case types.STORAGE_RECEIVE:
    return {
      ...state,
      storages: action.storages
    }
  default:
    return state
  }
}
