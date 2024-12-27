local colors = import '../lib/colors.libsonnet';
local config = import './config.libsonnet';
local theme = import './theme.libsonnet';

config.manifestGhosttyConfig(theme { defs:: colors.light })
