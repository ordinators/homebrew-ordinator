# Homebrew Tap for Ordinator

This is the Homebrew tap for [Ordinator](https://github.com/ordinators/ordinator), a CLI tool for managing macOS dotfiles, system settings, and secrets.

## Installation

```bash
# Install Ordinator
brew install ordinators/ordinator/ordinator

# Or tap and install
brew tap ordinators/ordinator
brew install ordinator
```

## What is Ordinator?

Ordinator is a powerful CLI tool written in Rust that helps you:

- **Manage dotfiles** with Git-based version control
- **Secure secrets** using Mozilla SOPS + age encryption
- **Bootstrap environments** with profile-based configurations
- **Automate system setup** with dry-run capabilities
- **Integrate with Homebrew** for package management

## Features

- ✅ Dotfiles management with symlink handling
- ✅ Profile-based configurations (work, personal, laptop)
- ✅ Secrets encryption and management
- ✅ Git-inspired CLI commands
- ✅ macOS-specific optimizations
- ✅ Dry-run mode for safe previews

## Quick Start

```bash
# Install
brew install ordinators/ordinator/ordinator

# Initialize
ordinator init

# Add files
ordinator add ~/.zshrc

# Apply configuration
ordinator apply
```

## Documentation

For more information, visit the [main repository](https://github.com/ordinators/ordinator).

## License

MIT License - see the [main repository](https://github.com/ordinators/ordinator) for details.
