FROM golang:1.17 AS builder

ENV PKG=/go/src/github.com/RHEcosystemAppEng/dbaas-e2e-test-harness/
WORKDIR ${PKG}

# compile test binary
COPY . .
RUN make

FROM chromedp/headless-shell:latest

COPY --from=builder /go/src/github.com/RHEcosystemAppEng/dbaas-e2e-test-harness/dbaas-e2e-test-harness.test dbaas-e2e-test-harness.test

ENTRYPOINT [ "/dbaas-e2e-test-harness.test" ]

