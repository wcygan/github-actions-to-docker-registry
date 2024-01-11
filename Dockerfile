FROM lukemathwalker/cargo-chef:latest-rust-1.72 as builder

COPY . .

RUN cargo build --bin github-actions-to-docker-registry

FROM debian:bookworm

COPY --from=builder /target/debug/github-actions-to-docker-registry /usr/local/bin
ENTRYPOINT ["/usr/local/bin/github-actions-to-docker-registry"]