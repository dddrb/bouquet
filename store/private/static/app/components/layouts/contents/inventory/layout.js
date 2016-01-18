import React, {Component} from 'react'
import Table from 'react-toolbox/lib/table'
import style from './style'

class Layout extends Component {
  state = {
    selected: [],
    source: this.props.storages
  }

  componentDidMount() {
    this.props.searchStorages()
  }

  handleSelect = (selected) => {
    this.setState({selected})
  }

  render() {
    const storageModel = {
      material_name: {type: String},
      date: {type: Date},
      quantity: {type: Number}
    }

    return (
      <div className={style.content}>
        <h1>Inventory</h1>

        <Table
          model={storageModel}
          selectable
          selected={this.state.selected}
          source={this.props.storages}
          onSelect={this.handleSelect} />
      </div>
    )
  }
}

export default Layout
