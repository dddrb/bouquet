import * as types from '../constants/ActionTypes'

export function changeAccount(account) {
  return {
    type: types.CHANGE_ACCOUNT,
    account
  }
}
