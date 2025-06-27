# Change Log

All notable changes to the "evolved-theme" extension will be documented in this file.

Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.

## [0.3.0]

### Added

- Color theme for [Zed](https://zed.dev/).
- Combined light and dark color theme for iTerm2.
- Added background and text colors for VCS-related colors (e.g. added, removed, modified)
- Build outputs are now published in the repository in the `dist/` directory.

### Changed

- **Major change:** Changed the neutral color palette to be less saturated.
- Tweaked the current line color in light themes.
- Changed ANSI bright black color to be brighter in light themes.
- Changed ANSI red and cyan colors to be brighter in light themes.

### Fixed

- Improved colors for indent guides.


## [0.2.5]

### Added

- Color theme for [Ghostty](https://ghostty.org/).

## [0.2.4]

### Fixed

- Syntax highlighting for YAML and Markdown in Sublime Text.

## [0.2.3]

### Added

- Color scheme for [Sublime Text](https://sublimetext.com).

### Changed

- Refactored TextMate rules out of the VSCode theme. The rules are now shared between VSCode and Sublime Text themes.
- Shadow color in dark themes is more pronounced.

### Fixed

- Gutter line in dark theme is no longer invisible.

## [0.2.2]

### Added

- Hover and active states in the VSCode status bar are now themed.

### Changed

- Made the light theme background one tone darker.
- Based terminal (ANSI) colors off text color roles. This allows them to differ between light and dark modes. The only exceptions are white and black, which are adjusted manually.
- Tweaked various selection colors.

## [0.2.1]

### Added

- An [iTerm2](https://iterm2.com) theme.

### Changed

- Improved contrast for terminal (ANSI) colors.

## [0.2.0]

### Changed

- New color palette generated with [evolved palettes](https://evolved.systems/palettes). The new palette allows for more fine-grained contrast control. Changes are mostly around background colors.
- Tone names have been changed, there are also more of them.
- Refined some color mappings. Most notably, `elevatedUi` is used more consistently.

### Fixed

- Type names for Protobufs are now correctly marked.
- The border for matching brackets is now visible in the dark theme.

## [0.1.2]

### Added

- Specified colors for VS Code panel sections
### Changed

- Inherited classes are now marked the same way as types.
- Made notifications and the Peek View Editor brighter in light theme.
- Made whitespace indicators less pronounced. This is mostly noticeable when they're visible outside of the selection.

### Fixed

- Made the ruler visible in dark theme.
- Set the minimap selection color to match the editor selection color.

## [0.1.1]

### Added

- [Icon](./icon.png) to show in the Marketplace listing.

### Fixed

- "evolved dark" is now correctly categorized as dark theme.

## [0.1.0]

- Initial release
