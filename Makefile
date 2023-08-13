COMMON_SRCS = lib/huetone.libsonnet lib/colors.libsonnet

all: vscode/*.json

vscode/*.json: $(COMMON_SRCS) vscode/theme.libsonnet vscode/evolved.jsonnet
	jsonnet --multi vscode vscode/evolved.jsonnet