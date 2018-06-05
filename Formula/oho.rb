class Oho < Formula
  desc "Takes your colorful terminal output and converts it to HTML for sharing"
  homepage "https://github.com/masukomi/oho"
  url "https://github.com/masukomi/oho/releases/download/v1.1.1/oho_v1.1.1.tgz"
  sha256 "c1cd3547e482711566e681a7bc01e518b7d8209d31105d8772c98a025f0f5b89"

  depends_on "bdw-gc"
  depends_on "libevent"

  def install
    bin.install "oho"
  end

  test do
    out = pipe_output(bin/"oho", "[35mrain[34mpill[00m")
    style_regexp = %r{<span style="color: fuchsia; ">rain<\/span><span style="color: #3333FF; ">pill<\/span>}
    assert_match(style_regexp, out)
  end
end
