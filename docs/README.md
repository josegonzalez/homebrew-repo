# Documentation

## Installation

Add the tap to Homebrew:

```bash
brew tap josegonzalez/repo
```

Install any formula:

```bash
brew install josegonzalez/repo/<formula>
```

## Available Tools

### Git Tools

- **git-pushall** - Push branches prefixed with current year
- **git-delete-useless** - Delete all branches except main/master/release

### Shell Utilities

- **auto-retry** - Retry commands with exponential backoff
- **ssh-auto-retry** - Auto-retry SSH connections
- **ll** - Better ls output (ls -alhG)
- **untar** - Simple tar extraction wrapper

### Development Tools

- **generate-formula** - Generate Homebrew formula from script
- **generate-help-markdown** - Generate markdown help from script metadata
- **venv** - Create/activate virtualenv with requirements.txt support
- **subl** - Open Sublime Text with .sublime-project auto-detection

### AWS

- **mssh** - EC2 Instance Connect wrapper for Ubuntu servers

### External Projects

- **claude-worktree** - Manage git worktrees with Claude Code integration
- **sm** - Secret management tool (separate Go project)

## Adding New Tools

1. Create a script in `bin/` with required metadata comments:

   ```bash
   #!/bin/bash
   # short-description: Brief description of what the tool does
   # version: 1.0.0
   ```

2. Run `generate-formula` to create the Homebrew formula:

   ```bash
   generate-formula bin/your-script >Formula/your-script.rb
   ```

3. Test the installation locally:

   ```bash
   brew install --build-from-source ./Formula/your-script.rb
   ```

## Local Development

To install a formula locally for testing:

```bash
HOMEBREW_DEVELOPER="true" brew install ./Formula/<formula>.rb
```

To reinstall after making changes:

```bash
HOMEBREW_DEVELOPER="true" brew reinstall ./Formula/<formula>.rb
```

To uninstall:

```bash
brew uninstall <formula>
```

## Testing

Formula installations are automatically tested via GitHub Actions on every push to `main` and on pull requests.

The CI workflow:

1. Discovers all formulas in the `Formula/` directory
2. Registers the checked-out repository as a Homebrew tap
3. Installs each formula via `brew install josegonzalez/repo/<formula>`
4. Verifies successful installation with `brew list`

This tests the tap-based installation path (not local development) to ensure formulas work correctly for end users.
