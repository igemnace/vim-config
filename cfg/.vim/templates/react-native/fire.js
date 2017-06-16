'use strict';

import React, { PropTypes, Component } from 'react';
import { InteractionManager } from 'react-native';
import SkeletonNameHOC from './skeleton-name.hoc.js';

export default class FierySkeletonName extends Component {
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
      <SkeletonNameHOC
        {...this.props}
      />
    );
  }
}

