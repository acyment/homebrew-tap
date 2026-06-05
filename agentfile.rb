class Agentfile < Formula
  desc "Distribute agentic SDLC conventions across AI coding agents and machines"
  homepage "https://github.com/acyment/agentfile"
  version "0.1.0"
  license "MIT"

  # Prebuilt binary hosted on this public tap (source repo is private).
  on_macos do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.1.0/agentfile-aarch64-apple-darwin.tar.gz"
      sha256 "b6f3d1b0f6fedc7a240795a7f21941d0bfc98500300882cb098d11694ed35c72"
    end
  end

  def install
    bin.install "agentfile"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/agentfile --version")
  end
end
