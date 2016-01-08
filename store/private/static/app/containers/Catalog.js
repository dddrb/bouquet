import {bindActionCreators} from 'redux';
import {connect} from 'react-redux';
import Catalog from '../components/layouts/main/components/contents/catalog';
import * as ProductActions from '../actions/ProductActions';

function mapStateToProps(state) {
  return {
    title: state.sample.title,
    products: state.product.products
  };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(ProductActions, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(Catalog);
