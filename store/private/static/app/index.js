import React from 'react'
import ReactDOM from 'react-dom'
import {Provider} from 'react-redux'
import {Router} from 'react-router'
import {syncReduxAndRouter} from'redux-simple-router'
import {createHistory, useBasename} from 'history'
import routes from './routes'
import configureStore from './store/configureStore'

const store = configureStore()
const history = useBasename(createHistory)({basename: '/store'})
syncReduxAndRouter(history, store)

ReactDOM.render(
  <Provider store={store}>
    <Router history={history}>
      {routes}
    </Router>
  </Provider>,
  document.getElementById('main')
)
