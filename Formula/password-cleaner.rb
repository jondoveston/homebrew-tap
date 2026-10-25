class PasswordCleaner < Formula
  desc "Filter stdin, dropping lines that contain secrets"
  homepage "https://github.com/jondoveston/password-cleaner"
  version "0.1.0"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/jondoveston/password-cleaner/releases/download/v0.1.0/password-cleaner-0.1.0-darwin-aarch64.tar.gz"
    sha256 "e224b59e7c49b76b6614d98235384d8e5a919259881700f25ed29e29cbcb5477"
  end

  on_linux do
    on_arm do
      url "https://github.com/jondoveston/password-cleaner/releases/download/v0.1.0/password-cleaner-0.1.0-linux-aarch64.tar.gz"
      sha256 "109b3e482e4c673e8576cb189c1df57440d0f3aaf718198b440e01fe67899043"
    end
    on_intel do
      url "https://github.com/jondoveston/password-cleaner/releases/download/v0.1.0/password-cleaner-0.1.0-linux-x86_64.tar.gz"
      sha256 "c71a31eabdcf03e65e7a01de3b04f35394f96e9c73d62d231d1ad88309cdd2a3"
    end
  end

  def install
    bin.install "password-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/password-cleaner --version")
  end
end
