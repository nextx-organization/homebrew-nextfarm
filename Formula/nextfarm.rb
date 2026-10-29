class Nextfarm < Formula
  desc "Command-line client for NextFarm AI: chat, API, keys and webhooks"
  homepage "https://developers.nextfarm.vn/docs/cli"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.2/nextfarm-darwin-arm64.tar.gz"
      sha256 "fb57270125eec24a4b4cdbb5978a91fc47585bca7a40a82644a582ed2f6d70d4"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.2/nextfarm-darwin-x64.tar.gz"
      sha256 "824720922f4a1bbfb4a3e6e1b9e2f3b7f1331eda89c689c936d426d0406027cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.2/nextfarm-linux-arm64.tar.gz"
      sha256 "7c2d25965c90c993afb0485009bb74cb6c13d7754149b00149cccd478a0daf34"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.2/nextfarm-linux-x64.tar.gz"
      sha256 "97d2e836ef70cc471ca5ec8a975b83f1b7c4e9e21bd8832c07ccd4d013377e14"
    end
  end

  def install
    bin.install "nextfarm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextfarm --version")
  end
end
