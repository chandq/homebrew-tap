# chandq/homebrew-tap

Homebrew tap for command-line tools published by [chandq](https://github.com/chandq).

Add the tap **once**, then any tool in it can be installed by name:

```bash
brew tap chandq/tap
brew install <tool>
```

## Requirements

- [Homebrew](https://brew.sh) on macOS or Linux
- [Node.js](https://nodejs.org) (`>= 18`) — each tool installs it automatically as a dependency

## Available formulae

| Formula | Description |
| --- | --- |
| [`mock-service-cli`](mock-service-cli.rb) | Local Mock/Static/SPA server, HTTP request proxy, API overview page and File explorer |
| [`mock-service-cli-ultra`](mock-service-cli-ultra.rb) | Light edition plus RAR/7z/bzip2/xz archive support |

> This table grows as new tools are added. Run `brew update && brew upgrade` to pick up new and updated formulae.

### Example: mock-service-cli

```bash
brew install mock-service-cli
mock-service-cli --help
```

Per-tool documentation lives in each tool's own repository:

- [chandq/mock-service-cli](https://github.com/chandq/mock-service-cli)

## Upgrade / Uninstall

```bash
brew update
brew upgrade <tool>          # upgrade one tool

brew uninstall <tool>
brew untap chandq/tap        # optional: remove the tap itself
```

## Troubleshooting

- **`No available formula with the name "<tool>"`** — run `brew tap chandq/tap` first; Homebrew only searches taps you have added.
- **`Refusing to load formula ... from untrusted tap`** — newer Homebrew versions require trusting third-party taps first:

  ```bash
  brew trust chandq/tap
  ```

## Maintainers

This tap is updated automatically, not by hand. Each tool is released to npm, and the tool's own `sync-package-managers` workflow mirrors the fresh npm tarball into a formula here — version, `url` and `sha256` always match the published package.

Adding a new tool means adding its `<name>.rb` (produced by that tool's release pipeline) **and** a row in the table above. The tap name and layout never change.

## License

Third-party tap. Formulae describe the upstream projects, each under its own license (e.g. mock-service-cli under MIT), and are provided as-is.
