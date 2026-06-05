class Agentfile < Formula
  desc "Distribute agentic SDLC conventions across AI coding agents and machines"
  homepage "https://github.com/acyment/agentfile"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.4.0/agentfile-aarch64-apple-darwin.tar.gz"
      sha256 "934574641ccb9c4c363aa0a39b100b359e4cc31dd18cd8117f4cbbf82d9a121b"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.4.0/agentfile-x86_64-apple-darwin.tar.gz"
      sha256 "fe553ec2fd809d6ffeef6645ebfa18bd48303579a594fb2d5c71cb21bbddfb0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.4.0/agentfile-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a56653fa8b2da22be7312eeb2d0c96b0422882846002cc3f96127ba814297f7"
    end
    on_intel do
      url "https://github.com/acyment/homebrew-tap/releases/download/agentfile-v0.4.0/agentfile-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1e973bb14e59f7a6ca83bb37575398544ef705d782a2cf88b61b5755818feb1"
    end
  end

  def install
    bin.install "agentfile"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/agentfile --version")
  end
end
