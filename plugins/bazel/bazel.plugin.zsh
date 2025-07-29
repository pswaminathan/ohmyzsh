# Aliases for bazel
alias bzb='bazel build'
alias bzt='bazel test'
alias bzr='bazel run'
alias bzq='bazel query'
alias bzcq='bazel cquery'

sri-hash() {
    openssl dgst -sha256 -binary $1 | openssl base64 -A | sed 's/^/sha256-/'
}

sri-hash-uri() {
    curl -fnsSL "$1" | openssl dgst -sha256 -binary - | openssl base64 -A | sed 's/^/sha256-/'
}
