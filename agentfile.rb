class Agentfile < Formula
  desc "Distribute agentic SDLC conventions across AI coding agents and machines"
  homepage "https://github.com/acyment/agentfile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.2.0/agentfile-aarch64-apple-darwin.tar.gz"
      sha256 "d12b8224620bdc1fc856887255fc73c10a1717d823c505b0f67b0f17b7d14291"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.2.0/agentfile-x86_64-apple-darwin.tar.gz"
      sha256 "03a109d768681ef03e96b52775e7d607e7bea9dcab88369679562648bebbaee6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.2.0/agentfile-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b62463ac2617364c8782c18750c7ccf03676fa65cb1cf052e15f80281eaea72"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.2.0/agentfile-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4985aa5d302dc9d54cde8bbe2eafe5ad256421941a78ff2bf878309c7225f5d"
    end
  end

  def install
    bin.install "agentfile"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/agentfile --version")
  end
end
