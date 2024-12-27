COMMON_SRCS = lib/colors.libsonnet lib/huetone.libsonnet

ghostty/%: ghostty/%.jsonnet ${COMMON_SRCS} ghostty/config.libsonnet ghostty/theme.libsonnet
	jsonnet --string --output-file $@ $<

%.itermcolors: %.jsonnet ${COMMON_SRCS} iterm2/theme.libsonnet 
	jsonnet --string --output-file $@ $<

%.sublime-color-scheme: %.jsonnet ${COMMON_SRCS} lib/textmate.libsonnet sublime-text/theme.libsonnet
	jsonnet --output-file $@ $<

vscode/%-color-theme.json: vscode/%.jsonnet $(COMMON_SRCS) lib/textmate.libsonnet vscode/theme.libsonnet 
	jsonnet --output-file $@ $<

all: ghostty/evolved-dark ghostty/evolved-light
all: iterm2/evolved-dark.itermcolors iterm2/evolved-light.itermcolors
all: sublime-text/evolved-dark.sublime-color-scheme sublime-text/evolved-light.sublime-color-scheme
all: vscode/evolved-dark-color-theme.json vscode/evolved-light-color-theme.json
