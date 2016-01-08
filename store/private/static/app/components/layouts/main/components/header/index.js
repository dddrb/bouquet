import React, {Component, PropTypes} from 'react';
import {Link} from 'react-router';
import AppBar from 'react-toolbox/lib/app_bar';
import FontIcon from 'react-toolbox/lib/font_icon';
import style from './style';

class Header extends Component {
  render() {
    return (
      <AppBar className={style.appbar} flat>
        <Link to='/'>
          <FontIcon value='home' />
        </Link>
        <h1 className={style.title}>Title</h1>
      </AppBar>
    );
  }
}

export default Header;
