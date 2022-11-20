CLANG ?= clang
CFLAGS ?= -O2 -g -Wall -Werror

EXAMPLES_HEADERS = ./headers

all: generate

generate: export BPF_CLANG=$(CLANG)
generate: export BPF_CFLAGS=$(CFLAGS)
generate: export BPF_HEADERS=$(EXAMPLES_HEADERS)
generate:
	go generate ./...