# Homebrew Tap for nexus-ai

This is a [Homebrew](https://brew.sh) tap for [nexus-ai](https://github.com/N3SSQwiK/agent-tools), a TUI installer for AI assistant CLI tools.

## Installation

```bash
# Add this tap
brew tap N3SSQwiK/nexus-ai

# Install nexus-ai
brew install nexus-ai
```

Or install directly with one command:

```bash
brew install N3SSQwiK/nexus-ai/nexus-ai
```

## Usage

After installation, run:

```bash
nexus-ai
```

This launches a TUI where you can select which AI assistant tools to configure:
- **Claude Code** (Anthropic)
- **Gemini CLI** (Google)
- **Codex CLI** (OpenAI)

## Updating

```bash
brew upgrade nexus-ai
```

## Uninstalling

```bash
brew uninstall nexus-ai
brew untap N3SSQwiK/nexus-ai
```

## About

nexus-ai helps you configure multiple AI assistant CLI tools with shared features like:
- Session continuity tracking
- Multi-agent orchestration (Maestro)

For more information, see the [main repository](https://github.com/N3SSQwiK/agent-tools).
