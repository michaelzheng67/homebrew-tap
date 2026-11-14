# Homebrew formula for k10s. Generated from packaging/homebrew/k10s.rb.in by
# packaging/homebrew/render-formula.sh; lives in github.com/michaelzheng67/homebrew-tap.
class K10s < Formula
  desc "Kubernetes cluster viewer that draws your cluster as a village"
  homepage "https://github.com/michaelzheng67/k10s"
  url "https://github.com/michaelzheng67/k10s/releases/download/v0.1.0/k10s-0.1.0-macos-universal.tar.gz"
  sha256 "04e8080d95afcf0291a04c275e3942547dfa967874fa2ca81f3843c24aafca37"
  version "0.1.0"

  depends_on macos: :ventura

  def install
    bin.install "k10s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/k10s --version")
  end
end
