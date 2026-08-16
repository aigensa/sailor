set shell := ["bash", "-uc"]

default:
    @just --list

[group('quality')]
typecheck:
    cd app && npm run typecheck

[group('quality')]
lint:
    cd app && npm run lint

[group('quality')]
fmt:
    cd app && npm run format

[group('quality')]
fmt-check:
    cd app && npm run format:check

[group('quality')]
contracts:
    pip install -r scripts/requirements.txt
    bash scripts/validate-all

# Expo/RN app: no EAS project config available headlessly, so this exports a
# JS bundle for a single platform rather than an installable artifact — good
# enough as a CI build gate for now.
[group('build')]
build:
    cd app && npx expo export --platform android

[group('composite')]
check: typecheck lint fmt-check contracts
