class Agentfile < Formula
  desc "Distribute agentic SDLC conventions across AI coding agents and machines"
  homepage "https://github.com/acyment/agentfile"
  version "0.1.0"
  license "MIT"

  # Prebuilt binaries hosted on this public tap (source repo is private).
  # Linux builds are static musl binaries.
  on_macos do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.1.0/agentfile-aarch64-apple-darwin.tar.gz"
      sha256 "b6f3d1b0f6fedc7a240795a7f21941d0bfc98500300882cb098d11694ed35c72"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.1.0/agentfile-x86_64-apple-darwin.tar.gz"
      sha256 "1c080b40e00e4aaedc65d35f4b597e5ab9ed92d2c85c6e7ffcfd7e62f17d056e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.1.0/agentfile-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d200bd3a4eaff033055cd26ce5f94ed60af31422b47c2d4a65bbf67daa3eaac9"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.1.0/agentfile-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41f35c06ddd34fca885428dac0a8ddb791290cb0d9aee22ec2d98807f2be0cd1"
    end
  end

  def install
    bin.install "agentfile"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/agentfile --version")
  end
end
