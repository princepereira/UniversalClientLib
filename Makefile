GIT       ?= git


.PHONY: push
push:
	@echo
	@echo "==> Pushing changes <=="
	@$(GIT) pull
	@$(GIT) add -u
	@$(GIT) commit -m "Adding more changes"
	@$(GIT) push -f
	@$(GIT) status
	@echo "==> Pushing changes completed <=="	

.PHONY: push-all
push-all:
	@echo
	@echo "==> Pushing changes <=="
	@$(GIT) pull
	@$(GIT) add .
	@$(GIT) commit -m "Adding more changes"
	@$(GIT) push -f
	@echo "==> Pushing changes completed <=="	
