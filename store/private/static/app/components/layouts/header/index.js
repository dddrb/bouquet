import React, {Component} from 'react'
import {Link} from 'react-router'
import AppBar from 'react-toolbox/lib/app_bar'
import FontIcon from 'react-toolbox/lib/font_icon'
import Button from 'react-toolbox/lib/button'
import style from './style'

class Header extends Component {
  render() {
    return (
      <AppBar className={style.appbar} flat>
        <Link to="/">
          <FontIcon value='home' />
        </Link>

        <h1 className={style.title}>
          Freres Memoire Example
        </h1>

        <Button className={style.button} floating accent
          icon="favorite_border" />
      </AppBar>
    )
  }
}

export default Header
