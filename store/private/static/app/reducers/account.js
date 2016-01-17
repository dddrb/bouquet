import * as types from '../constants/ActionTypes'

const initialState = {
  username: 'foo',
  password: 'pass'
}

export default function(state = initialState, action) {
  switch (action.type) {
    case types.CHANGE_ACCOUNT:
      return {
        ...state,
        username: action.account.username,
        password: action.account.password
      }
    default:
      return state
  }
}
