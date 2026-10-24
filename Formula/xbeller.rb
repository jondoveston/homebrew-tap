class Xbeller < Formula
  desc "List and edit bookmarks in XBEL files"
  homepage "https://github.com/jondoveston/xbeller"
  version "0.1.0"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/jondoveston/xbeller/releases/download/v0.1.0/xbeller-0.1.0-darwin-aarch64.tar.gz"
    sha256 "719053717799355bd4e05e3766cce01027c1177a722c975f10093b0214c2aa27"
  end

  on_linux do
    on_arm do
      url "https://github.com/jondoveston/xbeller/releases/download/v0.1.0/xbeller-0.1.0-linux-aarch64.tar.gz"
      sha256 "fd9a2e8228b3338acbe3794728e0a0e55a3bfeff788dbaabf73701f3c39d2982"
    end
    on_intel do
      url "https://github.com/jondoveston/xbeller/releases/download/v0.1.0/xbeller-0.1.0-linux-x86_64.tar.gz"
      sha256 "6b600c53509811d95c4cdf599f5bb3a4ec1c9d40c2f55e312721ca199f0ca10b"
    end
  end

  def install
    bin.install "xbeller"
    bin.install_symlink "xbeller" => "xb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xb --version")
  end
end
