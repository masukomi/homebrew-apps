class Oho < Formula
  desc "Takes your colorful terminal output and converts it to HTML for sharing"
  homepage "https://github.com/masukomi/oho"
  url "https://github.com/masukomi/oho/releases/download/v1.0.0/oho_v1.0.0.tgz"
  sha256 "3ca1b91503e301d47c11d93d34634ab43f8e32c0e570556af0d96cc27cd4e95c"

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
