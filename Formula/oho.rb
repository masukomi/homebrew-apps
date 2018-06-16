class Oho < Formula
  desc "Takes your colorful terminal output and converts it to HTML for sharing"
  homepage "https://github.com/masukomi/oho"
  url "https://github.com/masukomi/oho/releases/download/v1.3.0/oho_v1.3.0.tgz"
  sha256 "8bc0942045f9c657189e8ed6e2973021b4b311a08a9f900e9d1d03295bb39485"

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
