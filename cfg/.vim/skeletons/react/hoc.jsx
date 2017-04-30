import React, { PropTypes, Component } from 'react';
import Name from './name.component.js';

export default class NameHOC extends Component {
  constructor(props) {
    super(props);
  }

  static propTypes = {}

  render() {
    return (
      <Name
        {...this.props}
      />
    );
  }
}
