import {bindActionCreators} from 'redux'
import {connect} from 'react-redux'
import layout from './layout'
import * as AccountActions from '../../../../actions/AccountActions'

function mapStateToProps(state) {
  return {
    account: state.account
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(AccountActions, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(layout)
