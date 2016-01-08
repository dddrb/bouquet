import {bindActionCreators} from 'redux';
import {connect} from 'react-redux';
import Counter from '../components/layouts/main/components/contents/counter';
import * as CounterActions from '../actions/CounterActions';

function mapStateToProps(state) {
  return {
    counter: state.counter,
    title: state.sample.title
  };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(CounterActions, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(Counter);
