# homebrew-apps

Homebrew tap for Matt Koltun projects.

This tap can host both CLI formulae in `Formula/` and macOS app casks in `Casks/`.

## Current packages

- `arai` (`brew install --cask arai`)

## Usage

```sh
brew tap mattkoltun/apps
brew install --cask arai
```

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
