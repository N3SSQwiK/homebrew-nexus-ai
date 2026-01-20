class NexusAi < Formula
  include Language::Python::Virtualenv

  desc "TUI installer for AI assistant CLI tools (Claude Code, Gemini CLI, Codex CLI)"
  homepage "https://github.com/N3SSQwiK/agent-tools"
  url "https://github.com/N3SSQwiK/agent-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a551dc2b66ed453e49cfa6c7d0fcd83310ccb49430654401dd30ac5b20f7227d"
  license "AGPL-3.0-or-later"

  depends_on "python@3.11"

  def install
    virtualenv_create(libexec, "python3.11")
    system libexec/"bin/python", "-m", "pip", "install", "--upgrade", "pip"
    system libexec/"bin/python", "-m", "pip", "install", buildpath
    bin.install_symlink libexec/"bin/nexus-ai"
  end

  test do
    assert_match "nexus-ai", shell_output("#{bin}/nexus-ai --help")
    assert_match version.to_s, shell_output("#{bin}/nexus-ai --version")
  end
end
