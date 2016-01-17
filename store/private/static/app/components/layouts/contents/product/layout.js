import React, {Component} from 'react'
import {Card, CardMedia, CardTitle, CardText, CardActions} from 'react-toolbox/lib/card'
import Button from 'react-toolbox/lib/button'
import Snackbar from 'react-toolbox/lib/snackbar'
import style from './style'

class Layout extends Component {
  componentDidMount() {
    this.props.searchProducts()
  }

  handleOrderClick(id) {
    this.props.salesOrder(id)
  }

  handleSnackbarTimeout = (event, instance) => {
    this.props.hideSnackbar()
  }

  productNodes () {
    const nodes = this.props.products.map((product, index) => {
      return (
        <Card key={index} className={style.product}>
          <CardTitle title={product.name} />
          <CardText>Sales</CardText>
          <CardActions>
            <Button label="Order"
              onClick={::this.handleOrderClick.bind(this, product.id)} />
          </CardActions>
        </Card>
      )
    })

    return nodes
  }

  render() {
    return (
      <div className={style.content}>
        <h1>Product</h1>

        <ul className={style.products}>
          {this.productNodes()}
        </ul>

        <Snackbar
          type='accept'
          action='Success'
          label='Sales Order'
          icon='card_giftcard'
          active={this.props.snackbar_active}
          timeout={2000}
          onTimeout={this.handleSnackbarTimeout} />
      </div>
    )
  }
}

export default Layout
