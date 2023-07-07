import React, { PropTypes, Component } from 'react';
import SkeletonName from './skeleton-name.component.js';

export default class SkeletonNameHOC extends Component {
  constructor(props) {
    super(props);
  }

  static propTypes = {}

  render() {
    return (
      <SkeletonName
        {...this.props}
      />
    );
  }
}
