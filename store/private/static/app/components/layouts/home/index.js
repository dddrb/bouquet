import React, {Component} from 'react'
import Header from '../header'
import Sidebar from '../sidebar'
import style from './style'

class Home extends Component {
  render() {
    return (
      <div>
        <Header />
        <Sidebar className={style.sidebar} />
        <div className={style.content}>
          {this.props.children}
        </div>
      </div>
    )
  }
}

export default Home
