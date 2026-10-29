class Nextfarm < Formula
  desc "NextFarm in your terminal: chat with NextFarm AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextfarm.vn/docs/cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.0/nextfarm-darwin-arm64.tar.gz"
      sha256 "eef9c7c36e8895a16945a6ccfc7408e3493fd388db37c0acabe843f04a03aa1d"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.0/nextfarm-darwin-x64.tar.gz"
      sha256 "5c544a002bf3245da4f73e25556078a805a7b2a7ee5b7db65c293022051853b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.0/nextfarm-linux-arm64.tar.gz"
      sha256 "4cfe938555f908a12607423801dc122ab8ba35c68bdeb68d4b1374eb58796cec"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.0/nextfarm-linux-x64.tar.gz"
      sha256 "ccd8554a57d1a5480cd089441df06017a823cb7406273149278b0df4fdde12d8"
    end
  end

  def install
    bin.install "nextfarm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextfarm --version")
  end
end
