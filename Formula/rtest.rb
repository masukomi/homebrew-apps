class Rtest < Formula
  desc "An RSpec wrapper that reduces noise eases rerunning tests"
  homepage "https://github.com/masukomi/rtest"
  current_version="v1.0.1"
  url "https://github.com/masukomi/rtest/releases/download/#{current_version}/rtest_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/rtest/rtest_#{current_version}.tgz"
  sha256 "294c980a3e0183e5afee66bcfc517c4da57aef7d14e101f6cbf0a1aefde2d4ff"

  def install
    bin.install "rtest"
  end

end
