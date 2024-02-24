local colors = import '../lib/colors.libsonnet';
local plist = import '../lib/plist.libsonnet';
local theme = import './theme.libsonnet';

plist.manifestPlist(theme { defs:: colors.light })