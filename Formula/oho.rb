class Oho < Formula
  desc "Takes your colorful terminal output and converts it to HTML for sharing"
  homepage "https://github.com/masukomi/oho"
  current_version="v1.3.3"
  url "https://github.com/masukomi/oho/releases/download/#{current_version}/oho_#{current_version}-source.tgz"
  # url "file:///Users/masukomi/workspace/oho/oho_#{current_version}.tgz"
  sha256 "a3fe9159722d6ea4dd18f57581ffb238f3c57271f1149e83bf4652059f048295"

  depends_on "bdw-gc"
  depends_on "libevent"
  depends_on "crystal"

  def install
    system "crystal", "build", "--release", "src/oho.cr"
    bin.install "oho"
  end

  test do
    out = pipe_output(bin/"oho", "[35mno[34mfascism[00m")
    style_regexp = %r{<span style="color: fuchsia; ">no<\/span><span style="color: #3333FF; ">fascism<\/span>}
    assert_match(style_regexp, out)
  end
end
