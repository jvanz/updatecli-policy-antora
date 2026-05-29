.PHONY: publish
publish: ## Publish Antora versioning policy
	.ci/release.bash

.PHONY: show
show: ## Show generated Updatecli manifest
	updatecli manifest show --experimental --config policy/updatecli.d --values policy/values.d/kubewarden.yaml

.PHONY: test
test: ## Test policy by running updatecli diff
	updatecli diff --experimental --config policy/updatecli.d --values policy/values.d/kubewarden.yaml

.PHONY: help
help: ## Show this Makefile's help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
