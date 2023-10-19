TOOLS_PACKAGE_PATH := Tools
TOOLS_PATH := ${TOOLS_PACKAGE_PATH}/.build/release


.PHONY: gyb
gyb:
	@Scripts/run-gyb.sh

.PHONY: build-tools
build-tools:
	@swift build -c release --package-path ${TOOLS_PACKAGE_PATH} --product lexicon-gen

.PHONY: lexicon-gen
lexicon-gen:
	@${TOOLS_PATH}/lexicon-gen \
		--source-directory atproto/lexicons \
		--output-file Sources/ATProtoAPI/Lexicons.generated.swift

.PHONY: build
build:
	@swift build

.PHONY: test
test:
	@swift test

.PHONY: clean
clean:
	@rm -rf \
		./.build

