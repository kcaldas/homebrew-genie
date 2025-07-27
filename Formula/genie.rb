class Genie < Formula
  desc "AI-powered coding assistant with CLI and TUI interfaces"
  homepage "https://github.com/kcaldas/genie"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcaldas/genie/releases/download/v0.1.6/genie_0.1.6_darwin_arm64.tar.gz"
    else
      url "https://github.com/kcaldas/genie/releases/download/v0.1.6/genie_0.1.6_darwin_amd64.tar.gz"
    end
    sha256 "replace_with_actual_sha256"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kcaldas/genie/releases/download/v0.1.6/genie_0.1.6_linux_arm64.tar.gz"
    else
      url "https://github.com/kcaldas/genie/releases/download/v0.1.6/genie_0.1.6_linux_amd64.tar.gz"
    end
    sha256 "replace_with_actual_sha256"
  end

  def install
    bin.install "genie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/genie --version")
  end
end
