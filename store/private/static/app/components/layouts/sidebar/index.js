import {connect} from 'react-redux'
import layout from './layout'

function mapStateToProps(state) {
  return {
    router: state.routing,
    account: state.account
  }
}

export default connect(mapStateToProps)(layout)
