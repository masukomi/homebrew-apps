class Oho < Formula
  desc "Takes your colorful terminal output and converts it to HTML for sharing"
  homepage "https://github.com/masukomi/oho"
  current_version="v1.3.6"
  url "https://github.com/masukomi/oho/releases/download/#{current_version}/oho_#{current_version}-source.tgz"
  # url "file:///Users/masukomi/workspace/oho/oho_#{current_version}-src.tgz"
  sha256 "3a0e0931057ec1b49ef342ad4eda62f268650c5584da521ae144ab6a037ebf95"

  depends_on "bdw-gc"
  depends_on "crystal"
  depends_on "libev"
  depends_on "libevent"
  depends_on "llvm"
  depends_on "pcre"

  def install
    system "crystal", "build", "--release", "src/oho.cr"
    bin.install "oho"
  end

  test do
    out = pipe_output(bin/"oho", "[35mno[34mfascism[00m")
    style_regexp = %r{<span style="color: fuchsia; ">no</span><span style="color: #3333FF; ">fascism</span>}
    assert_match(style_regexp, out)
  end
end
