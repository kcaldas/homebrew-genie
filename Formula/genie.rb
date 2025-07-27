class Genie < Formula
  desc "AI-powered coding assistant with CLI and TUI interfaces"
  homepage "https://github.com/kcaldas/genie"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcaldas/genie/releases/download/v0.1.6/genie_0.1.6_darwin_arm64.tar.gz"
      sha256 "262ff180ba5727a75515f9cc4a3779073647ffb3a3cacb6eaf7e24bbbf6d7b40"
    else
      url "https://github.com/kcaldas/genie/releases/download/v0.1.6/genie_0.1.6_darwin_amd64.tar.gz"
      sha256 "46388295e8c7c979c199c9b7a9a27437253e35eff970e8ef07308debbdea8093"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kcaldas/genie/releases/download/v0.1.6/genie_0.1.6_linux_arm64.tar.gz"
      sha256 "fecf44f93d2d046aaacead87b4889f4ed04d4fc35c483ecf15c88fc32b350301"
    else
      url "https://github.com/kcaldas/genie/releases/download/v0.1.6/genie_0.1.6_linux_amd64.tar.gz"
      sha256 "214ebfaee92b70342a4cdf311543ebc4cb7a343c025a07dbf7340f323f567573"
    end
  end

  def install
    bin.install "genie"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/genie --version")
  end
end
