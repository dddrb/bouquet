import React, {Component} from 'react'
import {Card, CardMedia, CardTitle, CardText, CardActions} from 'react-toolbox/lib/card'
import Button from 'react-toolbox/lib/button'
import Snackbar from 'react-toolbox/lib/snackbar'
import style from './style'

class Layout extends Component {
  componentDidMount() {
    this.props.searchMaterials()
  }

  handleOrderClick(id) {
    this.props.purchaseOrder(id)
  }

  handleSnackbarTimeout = (event, instance) => {
    this.props.hideSnackbar()
  }

  materialNodes () {
    const nodes = this.props.materials.map((material, index) => {
      return (
        <Card key={index} className={style.material}>
          <CardTitle title={material.name} />
          <CardText>Purchase</CardText>
          <CardActions>
            <Button label="Order"
              onClick={::this.handleOrderClick.bind(this, material.id)} />
          </CardActions>
        </Card>
      )
    })

    return nodes
  }

  render() {
    return (
      <div className={style.content}>
        <h1>Material</h1>

        <ul className={style.materials}>
          {this.materialNodes()}
        </ul>

        <Snackbar
          type='accept'
          action='Success'
          label='Purchase Order'
          icon='local_florist'
          active={this.props.snackbar_active}
          timeout={2000}
          onTimeout={this.handleSnackbarTimeout} />
      </div>
    )
  }
}

export default Layout
