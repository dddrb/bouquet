import React from 'react';
import {Route, IndexRoute} from 'react-router';
import Root from '../containers/Root';
import Counter from '../containers/Counter';
import Sample from '../containers/Sample';
import Catalog from '../containers/Catalog';
import Home from '../components/layouts/home';
import Main from '../components/layouts/main';
import About from '../components/layouts/main/components/contents/about';

export default (
  <Route component={Root}>
    <Route path="/" component={Home} />
    <Route path="/components" component={Main}>
      <Route path="counter" component={Counter} />
      <Route path="sample" component={Sample} />
      <Route path="catalog" component={Catalog} />
      <Route path="about" component={About} />
    </Route>
    <IndexRoute component={Home}/>
  </Route>
);
