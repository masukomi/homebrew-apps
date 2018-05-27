class Oho < Formula
  desc "Takes your colorful terminal output and converts it to HTML for sharing"
  homepage "https://github.com/masukomi/oho"
  url "https://github.com/masukomi/oho/releases/download/v1.1.0/oho_v1.1.0.tgz"
  sha256 "ccad6901ba81e19c2e46125826b06281fbe4b01f2f1518d5dcac98fc4da528b7"

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
