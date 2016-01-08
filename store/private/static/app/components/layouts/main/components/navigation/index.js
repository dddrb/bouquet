import React, {Component, PropTypes} from 'react';
import {Link} from 'react-router'
import {List, ListItem} from 'react-toolbox/lib';
import style from './style.scss';

class Navigation extends Component {
  items = [
    {caption: 'Account', icon: 'person', to: '/components/sample'},
    {caption: 'Catalog', icon: 'card_giftcard', to: '/components/catalog'},
    {caption: 'Counter', icon: 'plus_one', to: '/components/counter'},
    {caption: 'About', icon: 'domain', to: '/components/about'}
  ];

  itemNodes = this.items.map((item, index) => {
    let className = style.item;

    return (
      <Link to={item.to} key={index} >
        <ListItem
          caption={item.caption}
          leftIcon={item.icon}
          className={className}
          selectable
        />
      </Link>
    );
  });

  render () {
    let className = style.root;
    if (this.props.className) className += ` ${this.props.className}`;

    return (
      <aside className={className}>
        <List className={style.list} selectable ripple>
          {this.itemNodes}
        </List>
        <footer className={style.footer}>
          <span>Footer</span>
        </footer>
      </aside>
    );
  }
}

Navigation.propTypes = {
  active: React.PropTypes.bool,
  className: React.PropTypes.string
};

export default Navigation;
