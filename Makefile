all: themes/evolved-light-color-theme.json

themes/evolved-light-color-theme.json: themes/evolved.jsonnet
	jsonnet --multi themes $^

themes/evolved.jsonnet: themes/palette.libsonnet