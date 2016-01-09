import React, {Component, PropTypes} from 'react';
import Input from 'react-toolbox/lib/input';
import Button from 'react-toolbox/lib/button';
import style from './style';

class Sample extends Component {
  state = {name: ''};

  handleSubmit() {
    const {changeTitle} = this.props;
    changeTitle(this.state.name)
    return
  };

  handleChange = (name, value) => {
    this.setState({...this.state, [name]: value});
  };

  render() {
    const {title, changeTitle} = this.props;
    return (
      <div className={style.content}>
        <h1 className={style.text}>Welcome {title}</h1>
        <section>
          <Input type='text' label='Name' name='name' value={this.state.name} onChange={this.handleChange.bind(this, 'name')} />
        </section>

        <Button raised primary onClick={::this.handleSubmit}>
            Update Name
        </Button>
      </div>
    );
  }
}

export default Sample;
