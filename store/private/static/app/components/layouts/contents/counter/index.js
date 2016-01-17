import {bindActionCreators} from 'redux'
import {connect} from 'react-redux'
import layout from './layout'
import * as CounterActions from '../../../../actions/CounterActions'

function mapStateToProps(state) {
  return {
    counter: state.counter
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(CounterActions, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(layout)
