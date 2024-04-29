# github.com/anbraten/dotfiles

Anbraten's dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

Inspired by: https://github.com/twpayne/dotfiles

Install them with:

```bash
chezmoi init anbraten
```

## Reset state

```bash
# reset state of run_onchange_ scripts
chezmoi state delete-bucket --bucket=entryState

# reset state of run_once__ scripts
chezmoi state delete-bucket --bucket=scriptState
```
