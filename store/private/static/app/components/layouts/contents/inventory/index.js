import {bindActionCreators} from 'redux'
import {connect} from 'react-redux'
import layout from './layout'
import * as InventoryActions from '../../../../actions/InventoryActions'

function mapStateToProps(state) {
  return {
    storages: state.inventory.storages
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(InventoryActions, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(layout)
