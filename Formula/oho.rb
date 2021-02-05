class Oho < Formula
  desc "Takes your colorful terminal output and converts it to HTML for sharing"
  homepage "https://github.com/masukomi/oho"
  current_version="v1.3.4"
  url "https://github.com/masukomi/oho/releases/download/#{current_version}/oho_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/oho/oho_#{current_version}.tgz"
  sha256 "154f4dc3e689758185ce330d22d8db9d3008f67481fdc222577691ae780089a7"


  depends_on "bdw-gc"
  depends_on "libevent"

  def install
    bin.install "oho"
  end

  test do
    out = pipe_output(bin/"oho", "[35mno[34mfascism[00m")
    style_regexp = %r{<span style="color: fuchsia; ">no<\/span><span style="color: #3333FF; ">fascism<\/span>}
    assert_match(style_regexp, out)
  end
end
