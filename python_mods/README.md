Python modifications you might apply:
- Add a thin wrapper that exposes a function `scan(targets: list) -> dict` which returns JSON result.
- Avoid heavy concurrency; use streaming results to stdout for lower memory peak.
