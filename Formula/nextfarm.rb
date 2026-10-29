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
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.3/nextfarm-darwin-arm64.tar.gz"
      sha256 "d2f1cd1fab7f17a5a03a2ed384ab69c1b052f40a015de283ca5c6850e7ddb115"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.3/nextfarm-darwin-x64.tar.gz"
      sha256 "0e5ffc5254857e2ef70e109445da7b70c77b4bd61908673170175cac92d7215b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.3/nextfarm-linux-arm64.tar.gz"
      sha256 "92066c9776a02d0f178ffb6f4b167a8cb8863b9f4b2a50273b579e4f588362cc"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.3/nextfarm-linux-x64.tar.gz"
      sha256 "d779e16f943107c98bb0c4b038ced8ca23b9b5572c875b8be63a003e937e4d4b"
    end
  end

  def install
    bin.install "nextfarm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextfarm --version")
  end
end
