import React from 'react';
import {render} from 'react-dom';
import {Provider} from 'react-redux';
import {Router} from 'react-router';
import {syncReduxAndRouter} from'redux-simple-router';
import {useBasename, createHistory} from 'history';
import configureStore from './store/configureStore';
import routes from './routes';

const store = configureStore();
const history = useBasename(createHistory)({basename: '/store'});
syncReduxAndRouter(history, store);

render(
  <Provider store={store}>
    <Router history={history}>
      {routes}
    </Router>
  </Provider>,
  document.getElementById('main')
);
