import {bindActionCreators} from 'redux';
import {connect} from 'react-redux';
import Catalog from '../components/layouts/main/components/contents/catalog';
import * as CatalogActions from '../actions/CatalogActions';

function mapStateToProps(state) {
  return {
    title: state.sample.title,
    products: state.product.products
  };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(CatalogActions, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(Catalog);
