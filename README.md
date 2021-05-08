[![CI](https://github.com/tj-actions/coverage-badge-js/actions/workflows/test.yml/badge.svg)](https://github.com/tj-actions/coverage-badge-js/actions/workflows/test.yml) [![Update release version.](https://github.com/tj-actions/coverage-badge-js/actions/workflows/sync-release-version.yml/badge.svg)](https://github.com/tj-actions/coverage-badge-js/actions/workflows/sync-release-version.yml) <a href="https://github.com/search?q=tj-actions+coverage-badge-js+path%3A.github%2Fworkflows+language%3AYAML&type=code" target="_blank" title="Public workflows that use this action."><img src="https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-git-master.endbug.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fcoverage-badge-js%26badge%3Dtrue" alt="Public workflows that use this action."></a>

coverage-badge-js
-----------------

Generate [coverage badge](https://www.npmjs.com/package/make-coverage-badge) like this ![coverage badge](./test-app/coverage/badge.svg) using Istanbul's JSON summary reporter without uploading results to a 3rd party site.

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Generate coverage badge
        uses: tj-actions/coverage-badge-js@v1.2
```


## Inputs

|   Input       |    type    |  required      |  default                              |  description  |
|:-------------:|:-----------:|:-------------:|:-------------------------------------:|:-------------:|
| path          |  `string`    |    `true`    |          `.`                          | Path to the application                      |
| output_path   |  `string`    |    `true`    |     `coverage/badge.svg`              | Writes the coverage badge to the given path  |
| report_path   |  `string`    |    `true`    |     `coverage/coverage-summary.json`  | Path to a coverage report file               |


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
