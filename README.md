# homebrew-apps

Homebrew tap for Matt Koltun projects.

This tap can host both CLI formulae in `Formula/` and macOS app casks in `Casks/`.

## Current packages

- `arai` (`brew install --cask arai`)
- `retro-timer` (`brew install --cask retro-timer`)

## Usage

```sh
brew tap mattkoltun/apps
brew install --cask arai
brew install --cask retro-timer
```

## Releasing `retro-timer`

1. Build release artifacts from the app repo:

   ```sh
   cd ../retro-timer
   npm install
   npm run dist:mac
   ```

2. Publish the macOS DMGs to the GitHub release:

   `https://github.com/mattkoltun/retro-timer/releases/download/v<version>/RetroTimer-<version>-arm64.dmg`

   `https://github.com/mattkoltun/retro-timer/releases/download/v<version>/RetroTimer-<version>.dmg`

3. Optionally compute the checksum for later hardening of the Intel cask asset too:

   ```sh
   shasum -a 256 RetroTimer-<version>-arm64.dmg
   ```

4. Update [`Casks/retro-timer.rb`](/Users/mkoltun/repos/homebrew-apps/Casks/retro-timer.rb) with the new `version` and checksums when a new release is published.

## Releasing `arai`

1. Build release artifacts from the app repo:

   ```sh
   cd ../arai
   ./scripts/release.sh release-macos
   ```

2. Publish `Arai-<version>-macos-universal.dmg` to the GitHub release:

   `https://github.com/mattkoltun/arai/releases/download/v<version>/Arai-<version>-macos-universal.dmg`

3. Compute the checksum:

   ```sh
   shasum -a 256 Arai-<version>-macos-universal.dmg
   ```

4. Update [`Casks/arai.rb`](/Users/mkoltun/repos/homebrew-apps/Casks/arai.rb) with the new `version` and `sha256`.

5. Test locally:

   ```sh
   brew tap mattkoltun/apps /Users/mkoltun/repos/homebrew-apps
   brew install --cask arai
   ```

## Automation

This repo includes [`update-arai-cask.yml`](/Users/mkoltun/repos/homebrew-apps/.github/workflows/update-arai-cask.yml), which updates `Casks/arai.rb` after an Arai release is published and the expected DMG asset is available.

The intended trigger is a `repository_dispatch` event with type `arai_release_published` sent from `mattkoltun/arai` after its release workflow completes successfully. Manual reruns are also supported with `workflow_dispatch`.
