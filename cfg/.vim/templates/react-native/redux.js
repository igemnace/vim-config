import React, { PropTypes, Component } from 'react';
import SkeletonNameHOC from './skeleton-name.hoc.js';
import { connect } from 'react-redux';

const mapStateToProps = state => ({});

const mapDispatchToProps = dispatch => ({});

const DuckySkeletonName = connect(
  mapStateToProps,
  mapDispatchToProps
)(SkeletonNameHOC);

export default DuckySkeletonName
