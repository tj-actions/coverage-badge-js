[![CI](https://github.com/tj-actions/coverage-badge-js/actions/workflows/test.yml/badge.svg)](https://github.com/tj-actions/coverage-badge-js/actions/workflows/test.yml) [![Update release version.](https://github.com/tj-actions/coverage-badge-js/actions/workflows/sync-release-version.yml/badge.svg)](https://github.com/tj-actions/coverage-badge-js/actions/workflows/sync-release-version.yml) <a href="https://github.com/search?q=tj-actions+coverage-badge-js+path%3A.github%2Fworkflows+language%3AYAML&type=code" target="_blank" title="Public workflows that use this action."><img src="https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-git-master.endbug.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fcoverage-badge-js%26badge%3Dtrue" alt="Public workflows that use this action."></a>

coverage-badge-js
-----------------

Generate [coverage badge](https://www.npmjs.com/package/make-coverage-badge) like this ![coverage badge](./test-app/coverage/badge.svg) using Istanbul's JSON summary reporter without uploading results to a 3rd party site.

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
| output_path   |  `string`    |    `true`    |     `coverage/badge.svg`              | Writes the coverage badge to the given path  |
| report_path   |  `string`    |    `true`    |     `coverage/coverage-summary.json`  | Path to a coverage report file               |


## Example

Generate a coverage badge after running your test and create a Pull request with those changes.

```yaml
...
      - name: Generate coverage badge
        uses: tj-actions/coverage-badge-js@v1.3
        with:
          path: test-app

      - name: Verify Changed files
        uses: tj-actions/verify-changed-files@v6
        id: verify_changed_files
        with:
          files: |
            coverage/badge.svg

      - name: Create Pull Request
        if: steps.verify_changed_files.outputs.files_changed == 'true'
        uses: peter-evans/create-pull-request@v3
        with:
          base: "main"
          title: "Updated coverage badge"
          branch: "chore/update-coverage-badge"
          commit-message: "Updated coverage badge."
          body: "Updated coverage badge."
          token: ${{ github.token }}

```


* Free software: [MIT license](LICENSE)

Features
--------

* Generate a coverage badge from a coverage report.


Credits
-------

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).



Report Bugs
-----------

Report bugs at https://github.com/tj-actions/coverage-badge-js/issues.

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your workflow that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.
