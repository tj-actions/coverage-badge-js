[![Codacy Badge](https://app.codacy.com/project/badge/Grade/637cb6499b3741f0af66d6e66414be65)](https://app.codacy.com/gh/tj-actions/coverage-badge-js/dashboard?utm_source=gh\&utm_medium=referral\&utm_content=\&utm_campaign=Badge_grade)
[![CI](https://github.com/tj-actions/coverage-badge-js/actions/workflows/test.yml/badge.svg)](https://github.com/tj-actions/coverage-badge-js/actions/workflows/test.yml)
[![Update release version.](https://github.com/tj-actions/coverage-badge-js/actions/workflows/sync-release-version.yml/badge.svg)](https://github.com/tj-actions/coverage-badge-js/actions/workflows/sync-release-version.yml)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fcoverage-badge-js%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+coverage-badge-js+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

## coverage-badge-js

Generate [coverage badge](https://www.npmjs.com/package/make-coverage-badge) like this ![coverage badge](./test-app/coverage/badge.svg) using [Istanbul's JSON summary reporter](https://github.com/istanbuljs/nyc) without uploading results to a 3rd party site.

# Usage

*   Configure [Istanbul's JSON summary reporter](https://github.com/tlvince/make-coverage-badge#usage)

```yaml
...
    steps:
      - uses: actions/checkout@v4
      - name: Generate coverage badge
        uses: tj-actions/coverage-badge-js@v1.3
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                               INPUT                               |  TYPE  | REQUIRED |              DEFAULT               |                   DESCRIPTION                    |
|-------------------------------------------------------------------|--------|----------|------------------------------------|--------------------------------------------------|
| <a name="input_output_path"></a>[output\_path](#input_output_path) | string |   true   |       `"coverage/badge.svg"`       | Writes the coverage badge to <br>the given path  |
|           <a name="input_path"></a>[path](#input_path)            | string |   true   |               `"."`                |             Path to the application              |
| <a name="input_report_path"></a>[report\_path](#input_report_path) | string |   true   | `"coverage/coverage-summary.json"` |       Path to a coverage report <br>file         |

<!-- AUTO-DOC-INPUT:END -->

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

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->

<!-- prettier-ignore-start -->

<!-- markdownlint-disable -->

<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://home.boidol.dev/"><img src="https://avatars.githubusercontent.com/u/652404?v=4?s=100" width="100px;" alt="Raphael Boidol"/><br /><sub><b>Raphael Boidol</b></sub></a><br /><a href="https://github.com/tj-actions/coverage-badge-js/commits?author=boidolr" title="Documentation">📖</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->

<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
