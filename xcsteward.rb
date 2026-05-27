class Xcsteward < Formula
  desc "Coordinate iOS simulator test jobs across projects and coding agents"
  homepage "https://github.com/acyment/XCSteward"
  url "https://github.com/acyment/XCSteward/archive/refs/tags/v0.1.0-alpha.tar.gz"
  sha256 "cb9ee7a81b63dd3d1c012ad624c8f6163b377e55f6cb4a5ed2df53baac9123d7"
  license "Apache-2.0"
  head "https://github.com/acyment/XCSteward.git", branch: "main"

  depends_on xcode: ["16", :build]
  depends_on macos: :ventura

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/xcsteward"
  end

  test do
    system bin/"xcsteward", "--help"
  end
end
