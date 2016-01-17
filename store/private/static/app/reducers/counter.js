import * as types from '../constants/ActionTypes'

export default function(state = 0, action) {
  switch (action.type) {
    case types.CHANGE_COUNTER:
      return action.counter
    case types.INCREMENT_COUNTER:
      return state + 1
    case types.DECREMENT_COUNTER:
      return state - 1
    default:
      return state
  }
}
