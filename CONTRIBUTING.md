# Git Etiquette

## Branches

All branches use the `swt26-g06/` prefix.

| Branch | Purpose |
|--------|---------|
| `swt26-g06/main` | Always-working, stable code. Never broken. |
| `swt26-g06/develop` | Active development base. |
| `swt26-g06/<type>-<short-description>` | Feature/fix branches. |

**Branch off `swt26-g06/develop`**, not `main`.

Example branch names:
- `swt26-g06/feat-map-search`
- `swt26-g06/fix-marker-overlap`
- `swt26-g06/chore-update-deps`

**Delete branches after merge.**

## Commits

Use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0). Always in English.

```
feat: add search bar to map view
fix: correct marker position on zoom
chore: update leaflet dependency
refactor: extract map utils into helper module
docs: add setup instructions to README
```

**One logical change per commit.** If you haven't pushed yet and want to add changes to the last commit: use amends.

## Pull Requests

- Open a PR for every feature branch into `swt26-g06/develop`
- Require **at least 1 human reviewer** -> assign one explicitly
- Add the **bot reviewer** as a second reviewer when possible
- Merge strategy: **rebase merge** (no merge commits)
- Resolve all review comments before merging
- Delete the branch after merge

**Direct push to `swt26-g06/develop` or `swt26-g06/main`** is not allowed. All changes have to be introduced via a pull request.

