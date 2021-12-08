[![Codacy Badge](https://api.codacy.com/project/badge/Grade/b4fc86d7f0864c08839a578cf04d0df5)](https://app.codacy.com/gh/tj-actions/coverage-badge-js?utm_source=github.com&utm_medium=referral&utm_content=tj-actions/coverage-badge-js&utm_campaign=Badge_Grade_Settings)
[![CI](https://github.com/tj-actions/coverage-badge-js/actions/workflows/test.yml/badge.svg)](https://github.com/tj-actions/coverage-badge-js/actions/workflows/test.yml) [![Update release version.](https://github.com/tj-actions/coverage-badge-js/actions/workflows/sync-release-version.yml/badge.svg)](https://github.com/tj-actions/coverage-badge-js/actions/workflows/sync-release-version.yml) [![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-tj-actions1.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fcoverage-badge-js%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+coverage-badge-js+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

## coverage-badge-js

Generate [coverage badge](https://www.npmjs.com/package/make-coverage-badge) like this ![coverage badge](./test-app/coverage/badge.svg) using [Istanbul's JSON summary reporter](https://github.com/istanbuljs/nyc) without uploading results to a 3rd party site.

# Usage

*   Configure [Istanbul's JSON summary reporter](https://github.com/tlvince/make-coverage-badge#usage)

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Generate coverage badge
        uses: tj-actions/coverage-badge-js@v1.3
```

## Inputs

|   Input       |    type    |  required      |  default                              |  description  |
|:-------------:|:-----------:|:-------------:|:-------------------------------------:|:-------------:|
| path          |  `string`    |    `true`    |          `.`                          | Path to the application                      |
| output\_path   |  `string`    |    `true`    |     `coverage/badge.svg`              | Writes the coverage badge to the given path  |
| report\_path   |  `string`    |    `true`    |     `coverage/coverage-summary.json`  | Path to a coverage report file               |

## Example

Generate a coverage badge after running your test and create a Pull request with those changes.

```yaml
...
      - name: Generate coverage badge
        uses: tj-actions/coverage-badge-js@v1.3
        with:
          path: test-app

      - name: Verify Changed files
        uses: tj-actions/verify-changed-files@v6.1
        id: verify-changed-files
        with:
          files: |
             test-app/coverage/badge.svg

      - name: Create Pull Request
        if: steps.verify-changed-files.outputs.files_changed == 'true'
        uses: peter-evans/create-pull-request@v3
        with:
          base: "main"
          title: "Updated coverage badge"
          branch: "chore/update-coverage-badge"
          commit-message: "Updated coverage badge."
          body: "Updated coverage badge."
          token: ${{ github.token }}

```

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Features

*   Generate a coverage badge from a coverage report.

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).

## Report Bugs

Report bugs at https://github.com/tj-actions/coverage-badge-js/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
