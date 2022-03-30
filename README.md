# find-folder-whitespace

[![Test](https://github.com/erictleung/find-folder-whitespace/actions/workflows/test.yml/badge.svg)](https://github.com/erictleung/find-folder-whitespace/actions/workflows/test.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Raise error for whitespace in folders

## Example Workflow

```yaml
name: Example

on: pull_request

jobs:
  example:
    name: Find Folders with Whitespace
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: erictleung/find-folder-whitespace@main
```

## Example Pull Requests

Fails: https://github.com/erictleung/find-folder-whitespace/pull/1

Passes: https://github.com/erictleung/find-folder-whitespace/pull/2

## Test Locally

```bash
docker build -t test .
docker run -v $(pwd):/find-folder-whitespace test
```

## Credit

**Motivated by**: https://twitter.com/ASpittel/status/1508939056918396931

**Code inspired by**: https://github.com/harupy/find-trailing-whitespace
