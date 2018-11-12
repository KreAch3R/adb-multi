SCRIPTS_TO_TEST := adb-multi

test:
		@shellcheck --exclude=2030,2031 ${SCRIPTS_TO_TEST}

installhook:
		@cp -v shellcheck-hook .git/hooks/pre-commit
		@chmod +x .git/hooks/pre-commit
