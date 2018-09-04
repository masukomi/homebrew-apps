class Oho < Formula
  desc "Takes your colorful terminal output and converts it to HTML for sharing"
  homepage "https://github.com/masukomi/oho"
  url "https://github.com/masukomi/oho/releases/download/v1.3.1/oho_v1.3.1.tgz"
  sha256 "499452efed57acfe714cdd9278cea4c8f91f1f4f872601e5086e3b8531afbfc0"

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
