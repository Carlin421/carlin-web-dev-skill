#!/usr/bin/env bash
set -euo pipefail

# Convenience verifier. Run from the target project's root.
# It detects common existing toolchains and runs only scripts/commands
# the project already declares. Project-specific CI remains authoritative.

run() {
  printf '\n==> %s\n' "$*"
  "$@"
}

if [[ -f package.json ]]; then
  if command -v node >/dev/null 2>&1; then
    PM=""
    if [[ -f pnpm-lock.yaml ]] && command -v pnpm >/dev/null 2>&1; then PM="pnpm"
    elif [[ -f yarn.lock ]] && command -v yarn >/dev/null 2>&1; then PM="yarn"
    elif [[ -f bun.lockb || -f bun.lock ]] && command -v bun >/dev/null 2>&1; then PM="bun"
    elif command -v npm >/dev/null 2>&1; then PM="npm"
    fi

    if [[ -n "$PM" ]]; then
      for script in lint typecheck test build; do
        if node -e "const p=require('./package.json'); process.exit(p.scripts?.['$script'] ? 0 : 1)" 2>/dev/null; then
          if [[ "$PM" == "npm" ]]; then run npm run "$script"; else run "$PM" "$script"; fi
        fi
      done
    fi
  fi
fi

if compgen -G "*.sln" >/dev/null || compgen -G "*.slnx" >/dev/null || compgen -G "*.csproj" >/dev/null; then
  if command -v dotnet >/dev/null 2>&1; then
    run dotnet build
    run dotnet test --no-build
  fi
fi

if [[ -f pyproject.toml || -f requirements.txt ]]; then
  if command -v ruff >/dev/null 2>&1; then run ruff check .; fi
  if command -v pytest >/dev/null 2>&1; then run pytest; fi
fi

printf '\nVerification complete. Project-specific CI may require additional checks.\n'
