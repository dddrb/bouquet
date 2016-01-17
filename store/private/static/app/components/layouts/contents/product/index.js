import {bindActionCreators} from 'redux'
import {connect} from 'react-redux'
import layout from './layout'
import * as ProductActions from '../../../../actions/ProductActions'

function mapStateToProps(state) {
  return {
    products: state.product.products,
    order: state.product.order,
    snackbar_active: state.product.snackbar_active
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(ProductActions, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(layout)
