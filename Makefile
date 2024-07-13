.PHONY: build run release clean help

build:
	cargo build

run:
	cargo run

release:
	cargo build --release

clean:
	cargo clean

help:
	@echo "Available commands:"
	@echo "  make build    - Build the project"
	@echo "  make run      - Build and run the project"
	@echo "  make release  - Build with release optimizations"
	@echo "  make clean    - Remove build artifacts"
	@echo "  make help     - Show this help message"
