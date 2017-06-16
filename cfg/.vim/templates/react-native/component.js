'use strict';

import React, { PropTypes, Component } from 'react';
import { View } from 'react-native';
import { styles } from './skeleton-name.styles.js';

export default class SkeletonName extends Component {
  constructor(props) {
    super(props);
  }

  static propTypes = {}

  render() {
    return (
      <View>
      </View>
    );
  }
}
