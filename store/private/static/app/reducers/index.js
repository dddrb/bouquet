import {combineReducers} from 'redux';
import {routeReducer} from 'redux-simple-router';
import counter from './counter';
import sample from './sample';

const rootReducer = combineReducers({
  routing: routeReducer,
  counter,
  sample
});

export default rootReducer;
