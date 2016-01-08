import React from 'react';
import ReactDOM from 'react-dom';
import Header from './components/header';
import Navigation from './components/navigation';
import style from './style';

class Main extends React.Component {
  render() {
    return (
      <div>
        <Header />
        <Navigation className={style.navigation} />
        <div className={style.content}>
          {this.props.children}
        </div>
      </div>
    );
  }
}

export default Main;
