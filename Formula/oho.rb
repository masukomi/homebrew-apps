class Oho < Formula
  desc "Takes your colorful terminal output and converts it to HTML for sharing"
  homepage "https://github.com/masukomi/oho"
  url "https://github.com/masukomi/oho/releases/download/v1.2.0/oho_v1.2.0.tgz"
  sha256 "337273a9e48b075b8e7963c8a601268c023b7f4fc5f30a185a406beee256a98f"

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
