import {bindActionCreators} from 'redux';
import {connect} from 'react-redux';
import Sample from '../components/layouts/main/components/contents/sample';
import * as HomeActions from '../actions/HomeActions';

function mapStateToProps(state) {
  return {
    title: state.sample.title
  };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(HomeActions, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(Sample);
