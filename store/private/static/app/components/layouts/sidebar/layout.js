import React, {Component, PropTypes} from 'react'
import {Link} from 'react-router'
import {List, ListItem} from 'react-toolbox/lib'
import Avatar from 'react-toolbox/lib/avatar'
import {Button} from 'react-toolbox/lib/button'
import style from './style'

class Layout extends Component {
  items = [
    {caption: 'Account',  icon: 'person',        to: 'account'},
    {caption: 'Product',  icon: 'card_giftcard', to: 'products'},
    {caption: 'Material', icon: 'local_florist', to: 'materials'},
    {caption: 'Counter',  icon: 'plus_one',      to: 'counter'},
    {caption: 'About',    icon: 'domain',        to: 'about'}
  ]

  itemNodes () {
    const nodes = this.items.map((item, index) => {
      let className = style.item
      if (item.to === this.props.router.path) {
        className += ` ${style.active}`
      }

      return (
        <Link to={item.to} key={index} >
          <ListItem className={className}
            selectable
            caption={item.caption}
            leftIcon={item.icon} />
        </Link>
      )
    })

    return nodes
  }

  render () {
    let className = style.root
    if (this.props.className) {
      className += ` ${this.props.className}`
    }

    return (
      <dev className={className}>
        <List className={style.list} selectable ripple>
          {this.itemNodes()}
        </List>
        <footer className={style.footer}>
          <div className={style.relative}>
            <Avatar style={{backgroundColor: 'deepskyblue'}}
              icon='person' />

            <Button className={style.absolute}
              label={this.props.account.username} />
          </div>
        </footer>
      </dev>
    )
  }
}

export default Layout
