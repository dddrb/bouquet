import React, {Component, PropTypes} from 'react';
import {Card, CardMedia, CardTitle, CardText, CardActions} from 'react-toolbox/lib/card';
import Button from 'react-toolbox/lib/button';
import style from './style';

class Catalog extends Component {
  componentDidMount() {
    this.props.searchComments();
  }

  render() {
    const productNodes = this.props.products.map((product, index) => {
      return (
        <Card key={index} className={style.product}>
          <CardTitle title={product.name} />
          <CardText>Text</CardText>
          <CardActions>
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
