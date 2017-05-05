'use strict';

import React, { PropTypes, Component } from 'react';
import NameHOC from './name.hoc.js';
import { connect } from 'react-redux';

const mapStateToProps = state => ({});

const mapDispatchToProps = dispatch => ({});

const DuckyName = connect(
  mapStateToProps,
  mapDispatchToProps
)(NameHOC);

export default DuckyName
