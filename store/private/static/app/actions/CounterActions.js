import * as types from '../constants/ActionTypes'

export function change(counter) {
  return {
    type: types.CHANGE_COUNTER,
    counter
  }
}

export function increment() {
  return {
    type: types.INCREMENT_COUNTER
  }
}

export function decrement() {
  return {
    type: types.DECREMENT_COUNTER
  }
}

export function incrementIfOdd() {
  return (dispatch, getState) => {
    const { counter } = getState()

    if (counter % 2 === 0) {
      return
    }

    dispatch(increment())
  }
}

export function incrementAsync(delay = 1000) {
  return dispatch => {
    setTimeout(() => {
      dispatch(increment())
    }, delay)
  }
}
