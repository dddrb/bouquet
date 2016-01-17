import React, {Component, PropTypes} from 'react'
import Slider from 'react-toolbox/lib/slider'
import Button from 'react-toolbox/lib/button'
import style from './style'

class Counter extends Component {
  state = {
    counter: this.props.counter
  }

  handleChange = (key, value) => {
    this.setState({[key]: value})
    this.props.change(value)
  }

  render() {
    return (
      <div className={style.content}>
        <h1>Counter</h1>
        Pinned and with snaps slider

        <Slider pinned snaps editable
          min={0} max={10} step={1}
          value={this.props.counter}
          onChange={::this.handleChange.bind(this, 'counter')} />

        <div>
          <Button className={style.button}
            floating accent
            icon='add'
            onClick={this.props.increment} />

          <Button className={style.button}
            floating accent
            icon='remove'
            onClick={this.props.decrement} />

          <Button className={style.button}
            floating accent
            label='odd'
            onClick={this.props.incrementIfOdd} />

          <Button className={style.button}
            floating accent
            label='async'
            onClick={() => this.props.incrementAsync()} />
        </div>
      </div>
    )
  }
}

Counter.propTypes = {
  change: PropTypes.func.isRequired,
  increment: PropTypes.func.isRequired,
  incrementIfOdd: PropTypes.func.isRequired,
  incrementAsync: PropTypes.func.isRequired,
  decrement: PropTypes.func.isRequired,
  counter: PropTypes.number.isRequired
}

export default Counter
