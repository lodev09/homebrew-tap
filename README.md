# lodev09/homebrew-tap

[Homebrew](https://brew.sh) tap for apps by [@lodev09](https://github.com/lodev09).

## Install

```sh
brew install --cask lodev09/tap/<cask>
```

Installing by full name taps this repo and trusts the cask in one step. To use
short names (`brew install --cask <cask>`), tap and trust once:

```sh
brew tap lodev09/tap
brew trust lodev09/tap
```

Upgrade with `brew upgrade --cask <cask>`. Uninstall with
`brew uninstall --cask <cask>` (add `--zap` to also remove app data).

## Casks

| Cask | Description |
| --- | --- |
| [`animenyu`](Casks/animenyu.rb) | [AniMenyu](https://github.com/lodev09/animenyu): menu bar app for tracking airing anime on AniList (Apple Silicon, macOS 14+) |
| [`neotorrent`](Casks/neotorrent.rb) | [NeoTorrent](https://github.com/lodev09/neotorrent): native torrent client (Apple Silicon, macOS 15+) |

## Adding a cask

1. Add `Casks/<cask>.rb` and a row to the table above.
2. Check it (CI runs the same on every push and PR):
   ```sh
   brew style lodev09/tap
   brew audit --cask --strict --online lodev09/tap/<cask>
   ```
3. To bump on each release, copy the `bump-cask` job from
   [NeoTorrent's release workflow](https://github.com/lodev09/neotorrent/blob/main/.github/workflows/release.yml)
   and add `HOMEBREW_TAP_TOKEN` to the app repo's secrets (a fine-grained PAT
   with Contents read/write on this repo).

## License

[MIT](LICENSE)
