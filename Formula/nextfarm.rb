class Nextfarm < Formula
  desc "NextFarm in your terminal: chat with NextFarm AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextfarm.vn/docs/cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.1/nextfarm-darwin-arm64.tar.gz"
      sha256 "7d85de35e6508ede9f8a0644ba560d738cb52372da3ca9b783abf3931cc7f4c2"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.1/nextfarm-darwin-x64.tar.gz"
      sha256 "6bcfc3b2513f9453ff9b678c7bfe1571cc3855e372c3d01e9af3d3b8eff35624"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.1/nextfarm-linux-arm64.tar.gz"
      sha256 "de0f1996ba54b086f276134f3336734ae229e282865c3f0077c3eca9ed35e07f"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.3.1/nextfarm-linux-x64.tar.gz"
      sha256 "975666ee244a6f8c3924c7ed538365560d8cbfac8d5a0417eba0fab8edef2188"
    end
  end

  def install
    bin.install "nextfarm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextfarm --version")
  end
end
