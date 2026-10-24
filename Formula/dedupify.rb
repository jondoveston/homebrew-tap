class Dedupify < Formula
  desc "Find duplicate files by content hash"
  homepage "https://github.com/jondoveston/dedupify"
  version "0.1.0"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/jondoveston/dedupify/releases/download/v0.1.0/dedupify-0.1.0-darwin-aarch64.tar.gz"
    sha256 "85c0855f689e3816b52d7d3cbdd3035f45df2a3afd08213b3fd06a1a0a96d2c1"
  end

  on_linux do
    on_arm do
      url "https://github.com/jondoveston/dedupify/releases/download/v0.1.0/dedupify-0.1.0-linux-aarch64.tar.gz"
      sha256 "57c18e3f97cc76e911ef509200fb47975e1e541b77d1290dfb53eff1d3cbe5e5"
    end
    on_intel do
      url "https://github.com/jondoveston/dedupify/releases/download/v0.1.0/dedupify-0.1.0-linux-x86_64.tar.gz"
      sha256 "c0e56a02c89b14f3dc3a0864f3b7f7f02bf07b6b8adb8d7951a5d3f8090a81cd"
    end
  end

  def install
    bin.install "dedupify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedupify --version")
  end
end
