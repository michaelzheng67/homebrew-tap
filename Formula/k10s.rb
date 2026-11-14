# Homebrew formula for k10s. Generated from packaging/homebrew/k10s.rb.in by
# packaging/homebrew/render-formula.sh; lives in github.com/michaelzheng67/homebrew-tap.
class K10s < Formula
  desc "Kubernetes cluster viewer that draws your cluster as a village"
  homepage "https://github.com/michaelzheng67/k10s"
  url "https://github.com/michaelzheng67/k10s/releases/download/v0.1.1/k10s-0.1.1-macos-universal.tar.gz"
  sha256 "9e034c99a6750ecdda4c8b9ffb6bcb4645082cecf197fb3e4310230ddf2f6278"
  version "0.1.1"

  depends_on macos: :ventura

  def install
    bin.install "k10s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/k10s --version")
  end
end
