import React, {Component} from 'react'
import {List, ListItem, ListSubHeader} from 'react-toolbox/lib';
import style from './style'

class Layout extends Component {
  render() {
    return (
      <div className={style.content}>
        <h1>Main</h1>

        React and Redux Boilerplate

        <List>
          <ListItem leftIcon='check_circle'
            to='https://facebook.github.io/react/'
            caption='React' />
          <ListItem leftIcon='check_circle'
            to='http://redux.js.org/'
            caption='Redux' />
          <ListSubHeader caption='Features' />
          <ListItem leftIcon='check_circle'
            to='https://babeljs.io/'
            caption='Babel' />
          <ListItem leftIcon='check_circle'
            to='http://react-toolbox.com/'
            caption='React Toolbox' />
          <ListItem leftIcon='check_circle'
            to='https://webpack.github.io/'
            caption='Webpack' />
        </List>
      </div>
    )
  }
}

export default Layout
