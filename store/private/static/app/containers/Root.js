import React, {Component, PropTypes} from 'react';
import App from 'react-toolbox/lib/app';

class Root extends Component {
  render() {
    return (
      <App>
        {this.props.children}
        {
          (() => {
            if (process.env.NODE_ENV === 'development') {
              const DevTools = require('../utils/DevTools');
              return <DevTools />;
            }
          })()
        }
      </App>
    );
  }
}

Root.propTypes = {
  children: PropTypes.element.isRequired
};

export default Root;
