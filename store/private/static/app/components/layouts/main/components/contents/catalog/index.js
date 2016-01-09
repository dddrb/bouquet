import React, {Component, PropTypes} from 'react';
import {Card, CardMedia, CardTitle, CardText, CardActions} from 'react-toolbox/lib/card';
import Button from 'react-toolbox/lib/button';
import style from './style';

class Catalog extends Component {
  componentDidMount() {
    this.props.searchProducts();
  };

  handleClick(id) {
    const {createOrders} = this.props;
    createOrders(id);
    return
  };

  render() {
    const productNodes = this.props.products.map((product, index) => {
      return (
        <Card key={index} className={style.product}>
          <CardTitle title={product.name} />
          <CardText>Text</CardText>
          <CardActions>
            <Button label="Order" onClick={e => this.handleClick(product.id)} />
          </CardActions>
        </Card>
      );
    });

    return (
      <div className={style.content}>
        <h1>Catalog</h1>
        <ul className={style.products}>
          {productNodes}
        </ul>
      </div>
    );
  }
}

export default Catalog;
