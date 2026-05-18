class MinCommander < Formula
  desc "Keyboard-driven terminal file manager inspired by Norton Commander"
  homepage "https://github.com/sternrassler/commander-1"
  url "https://github.com/sternrassler/commander-1/archive/refs/tags/v2.1.3.tar.gz"
  sha256 "9b26b9475d4dceefe0f5d50627c29e1411615ef8319a34f1235d1f9a57a22b0c"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_predicate bin/"min-commander", :executable?
  end
end
