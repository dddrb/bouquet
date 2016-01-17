import React, { Component } from 'react'
import Input from 'react-toolbox/lib/input'
import Button from 'react-toolbox/lib/button'
import style from './style'

class Layout extends Component {
  state = {
    username: this.props.account.username,
    password: this.props.account.password
  }

  handleChange = (key, value) => {
    this.setState({[key]: value})
  }

  handleSubmit() {
    this.props.changeAccount({
      username: this.state.username,
      password: this.state.password
    })
  }

  render() {
    return (
      <div className={style.content}>
        <h1>Account</h1>

        <div className={style.form}>
          <Input
            type='text'
            name='username'
            label='Username'
            value={this.state.username}
            onChange={::this.handleChange.bind(this, 'username')} />

          <Input
            type='password'
            name='password'
            label='Password'
            value={this.state.password}
            onChange={::this.handleChange.bind(this, 'password')} />

          <Button raised primary
            label='Save changes'
            onClick={::this.handleSubmit} />
        </div>
      </div>
    )
  }
}

export default Layout
