class NexusAi < Formula
  include Language::Python::Virtualenv

  desc "TUI installer for AI assistant CLI tools (Claude Code, Gemini CLI, Codex CLI)"
  homepage "https://github.com/N3SSQwiK/agent-tools"
  url "https://github.com/N3SSQwiK/agent-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a551dc2b66ed453e49cfa6c7d0fcd83310ccb49430654401dd30ac5b20f7227d"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Create virtualenv and install with pip (handles all dependencies)
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "nexus-ai", shell_output("#{bin}/nexus-ai --help")
    assert_match version.to_s, shell_output("#{bin}/nexus-ai --version")
  end
end
