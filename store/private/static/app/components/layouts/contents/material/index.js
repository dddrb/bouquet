import {bindActionCreators} from 'redux'
import {connect} from 'react-redux'
import layout from './layout'
import * as MaterialActions from '../../../../actions/MaterialActions'

function mapStateToProps(state) {
  return {
    materials: state.material.materials,
    order: state.material.order,
    snackbar_active: state.material.snackbar_active
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(MaterialActions, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(layout)
