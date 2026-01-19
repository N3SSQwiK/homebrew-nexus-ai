class NexusAi < Formula
  include Language::Python::Virtualenv

  desc "TUI installer for AI assistant CLI tools (Claude Code, Gemini CLI, Codex CLI)"
  homepage "https://github.com/N3SSQwiK/agent-tools"
  url "https://github.com/N3SSQwiK/agent-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a551dc2b66ed453e49cfa6c7d0fcd83310ccb49430654401dd30ac5b20f7227d"
  license "MIT"

  depends_on "python@3.11"

  resource "textual" do
    url "https://files.pythonhosted.org/packages/source/t/textual/textual-1.0.0.tar.gz"
    sha256 "bec9fe63547c1c552569d1b75d309038b7d456c03f86dfa3706ddb099b151399"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "nexus-ai", shell_output("#{bin}/nexus-ai --help")
    assert_match version.to_s, shell_output("#{bin}/nexus-ai --version")
  end
end
