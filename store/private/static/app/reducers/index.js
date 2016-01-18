import {combineReducers} from 'redux'
import {routeReducer as routing} from 'redux-simple-router'
import account from './account'
import product from './product'
import material from './material'
import inventory from './inventory'
import counter from './counter'

const rootReducer = combineReducers({
  routing,
  account,
  product,
  material,
  inventory,
  counter
})

export default rootReducer
