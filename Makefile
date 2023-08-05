all: themes/evolved-light-color-theme.json

themes/evolved-light-color-theme.json: themes/evolved.jsonnet
	jsonnet --multi themes $^

themes/colors.libsonnet: themes/huetone.libsonnet
themes/evolved.jsonnet: themes/colors.libsonnet