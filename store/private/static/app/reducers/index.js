import {combineReducers} from 'redux';
import {routeReducer} from 'redux-simple-router';
import counter from './counter';
import sample from './sample';
import product from './product';

const rootReducer = combineReducers({
  routing: routeReducer,
  counter,
  sample,
  product
});

export default rootReducer;
