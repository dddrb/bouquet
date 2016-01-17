import React from 'react'
import {Route, IndexRoute} from 'react-router'
import {Root, Home} from '../containers'
import * as Contents from '../components/layouts/contents'

export default (
  <Route component={Root}>
    <Route path="/" component={Home}>
      <IndexRoute component={Contents.Main} />
      <Route path="/account" component={Contents.Account} />
      <Route path="/products" component={Contents.Product} />
      <Route path="/materials" component={Contents.Material} />
      <Route path="/counter" component={Contents.Counter} />
      <Route path="/about" component={Contents.About} />
    </Route>
  </Route>
)
