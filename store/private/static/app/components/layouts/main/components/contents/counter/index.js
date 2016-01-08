import React, {Component, PropTypes} from 'react';
import Button from 'react-toolbox/lib/button';
import style from './style';

class Counter extends Component {
  render() {
    const {increment, incrementIfOdd, incrementAsync, decrement, counter, title} = this.props;
    return (
      <div className={style.content}>
        {title}
        <div className={style.counter}>
          {counter}
        </div>
        <div className={style.btnGroup}>
          <Button className={style.btn} icon='add' floating accent onClick={increment} />
          <Button className={style.btn} icon='remove' floating accent onClick={decrement} />
          <Button className={style.btn} label='odd' floating accent onClick={incrementIfOdd} />
          <Button className={style.btn} label='async' floating accent onClick={() => incrementAsync()} />
        </div>
      </div>
    );
  }
}

Counter.propTypes = {
  increment: PropTypes.func.isRequired,
  incrementIfOdd: PropTypes.func.isRequired,
  incrementAsync: PropTypes.func.isRequired,
  decrement: PropTypes.func.isRequired,
  counter: PropTypes.number.isRequired
};

export default Counter;
