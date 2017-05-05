'use strict';

import React, { PropTypes, Component } from 'react';
import { InteractionManager } from 'react-native';
import NameHOC from './name.hoc.js';

export default class FieryName extends Component {
  constructor(props) {
    super(props);
  }

  static propTypes = {
    db: PropTypes.object,
  }

  static defaultProps = {
    db: {},
  }

  render() {
    return (
      <NameHOC
        {...this.props}
      />
    );
  }
}

