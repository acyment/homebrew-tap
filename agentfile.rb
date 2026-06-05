class Agentfile < Formula
  desc "Distribute agentic SDLC conventions across AI coding agents and machines"
  homepage "https://github.com/acyment/agentfile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.3.0/agentfile-aarch64-apple-darwin.tar.gz"
      sha256 "b9c5b98e91291a709644951615c750404c3f9b4a03c8279a8c523e8cb3974f7f"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.3.0/agentfile-x86_64-apple-darwin.tar.gz"
      sha256 "7b336837003751b748da8259239c1438251c21b29ed8ff3f4cd27722f3d64a39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.3.0/agentfile-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f84891c4e94d39a7ca954b91463751c82752f5597d0126729a075cf21651f777"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.3.0/agentfile-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b686dc4dc2589ed5ee072e858213f4444b5298a9b9e5f05144a98231895d4e93"
    end
  end

  def install
    bin.install "agentfile"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/agentfile --version")
  end
end
