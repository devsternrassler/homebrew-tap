class MinCommander < Formula
  desc "Keyboard-driven terminal file manager inspired by Norton Commander"
  homepage "https://github.com/sternrassler/commander-1"
  url "https://github.com/sternrassler/commander-1/archive/refs/tags/v2.1.4.tar.gz"
  sha256 "bf1d10439cbbd458d9d0f4074f5c48548e9abb64acaddc5a2fb22eec04e9cb9d"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_predicate bin/"min-commander", :executable?
  end
end
