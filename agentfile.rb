class Agentfile < Formula
  desc "Distribute agentic SDLC conventions across AI coding agents and machines"
  homepage "https://github.com/acyment/agentfile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.5.0/agentfile-aarch64-apple-darwin.tar.gz"
      sha256 "83e0699f74a7fd68f084e3ab381d44531d274dca7864e234397dce309cc95d5d"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.5.0/agentfile-x86_64-apple-darwin.tar.gz"
      sha256 "d954d08fc924c86ea5829009b83500bef3ffa99368bc45e88cc5d96ee5d63f59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.5.0/agentfile-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2bbe1e54041e9a1d9d971caa54532c8953f2f470267e052a908445cc02ffa17"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.5.0/agentfile-x86_64-unknown-linux-musl.tar.gz"
      sha256 "806fd75a6cb4fe275a9365485d698198916d832ae9a4845be2899e53d2952c36"
    end
  end

  def install
    bin.install "agentfile"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/agentfile --version")
  end
end
