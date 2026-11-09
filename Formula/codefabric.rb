class Codefabric < Formula
  desc "Control plane for coding agents running on your own machines"
  homepage "https://github.com/Autarquico/codefabric"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Autarquico/codefabric/releases/download/v0.2.0/cf_0.2.0_darwin_arm64.tar.gz"
      sha256 "faaddf030cebc7cdd668fd368aca873e3537a8827ebcd3c300d3ad7347419a11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Autarquico/codefabric/releases/download/v0.2.0/cf_0.2.0_linux_arm64.tar.gz"
      sha256 "166182d9d7be7e58ed83000f01a331054c5688f99272370ebd61aeac23a8d478"
    end
    on_intel do
      url "https://github.com/Autarquico/codefabric/releases/download/v0.2.0/cf_0.2.0_linux_amd64.tar.gz"
      sha256 "e0f4815c5e144215a9ab25b51627bf9cb0b15b7af834523fb02cc364ecfabc2e"
    end
  end

  def install
    bin.install "cf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cf version")
  end
end
