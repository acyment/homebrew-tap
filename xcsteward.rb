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

    skills = buildpath/"Examples/agents/skills"
    pkgshare.install skills if skills.exist?
  end

  def caveats
    skill_dir = pkgshare/"skills/xcsteward"

    if skill_dir.exist?
      <<~EOS
        Want the optional XCSteward agent skill installed too?

        Codex example:
          mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills"
          cp -R "#{skill_dir}" "${CODEX_HOME:-$HOME/.codex}/skills/xcsteward"

        The reusable skill is installed here:
          #{skill_dir}
      EOS
    else
      <<~EOS
        Want the optional XCSteward agent skill installed too?

        This release does not bundle the reusable skill yet. Use the current
        copy from:
          https://github.com/acyment/XCSteward/tree/main/Examples/agents/skills/xcsteward
      EOS
    end
  end

  test do
    system bin/"xcsteward", "--help"
  end
end
