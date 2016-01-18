import * as types from '../constants/ActionTypes'
import 'isomorphic-fetch'

//const endpoint = 'http://localhost:3000'
const endpoint = ''

export function receiveStorages(storages) {
  return {
    type: types.STORAGE_RECEIVE,
    storages: storages
  }
}

export function searchStorages() {
  return dispatch => {
    return fetch(endpoint + '/api/storages')
      .then(response => response.json())
      .then(json => dispatch(receiveStorages(json)))
  }
}
