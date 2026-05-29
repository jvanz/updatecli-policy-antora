# README

This repository contains an Updatecli policy to automate Antora documentation versioning for Kubewarden.

When a new Kubewarden release is detected, the policy creates a new version directory in the Antora docs site by copying the latest existing version and writing a fresh `antora.yml`.

Running `make help` lists all common tasks with this repository.

## Requirements

* [Updatecli](https://www.updatecli.io/docs/prologue/installation/) [>=0.63.0]

## How To

This policy is designed to work from GitHub action workflows. Before running any Updatecli command, the following environment variables must be set:

* `GITHUB_TOKEN`: Set to a personal access token
* `GITHUB_ACTOR`: Set to the username associated with the `GITHUB_TOKEN`

Instructions to retrieve your PAT are documented at [managing-your-personal-access-tokens](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens).

**Show update policy description**

```
updatecli manifest show --experimental ghcr.io/jvanz/updatecli/policies/antora:<version>
```

**Execute Updatecli in dryrun mode**

```
updatecli diff --experimental ghcr.io/jvanz/updatecli/policies/antora:<version>
```

**Execute Updatecli in apply mode**

Please note that to run the following command, your PAT must have enough permission on the target documentation repository.

```
updatecli apply --experimental ghcr.io/jvanz/updatecli/policies/antora:<version>
```

## Release

Push a git tag matching the version of the Policy defined by the field "version" in policy/Policy.yaml.

## Contributing

Feel free to:
* report any Updatecli bugs on https://github.com/updatecli/updatecli
* start discussion about potential Updatecli workflow on https://github.com/orgs/updatecli/discussions

## Links

* [Updatecli Documentation](https://www.updatecli.io)
* [Antora Documentation](https://docs.antora.org)
