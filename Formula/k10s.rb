# Homebrew formula for k10s. Generated from packaging/homebrew/k10s.rb.in by
# packaging/homebrew/render-formula.sh; lives in github.com/michaelzheng67/homebrew-tap.
class K10s < Formula
  desc "Kubernetes cluster viewer that draws your cluster as a village"
  homepage "https://github.com/michaelzheng67/k10s"
  url "https://github.com/michaelzheng67/k10s/releases/download/v0.1.3/k10s-0.1.3-macos-universal.tar.gz"
  sha256 "63f8bd88b7d3c0e1d5388a060832b3102a57bbde48e82746e22747f5feb9ddb9"
  version "0.1.3"

  depends_on macos: :ventura

  def install
    bin.install "k10s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/k10s --version")
  end
end
