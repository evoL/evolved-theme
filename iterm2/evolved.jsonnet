local plist = import '../lib/plist.libsonnet';
local combinedTheme = import './combined-theme.libsonnet';

plist.manifestPlist(combinedTheme)
