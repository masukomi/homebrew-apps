class DaysProgress < Formula
  desc "An RSpec wrapper that reduces noise eases rerunning tests"
  homepage "https://github.com/masukomi/rtest"
  current_version="v1.0.0"
  url "https://github.com/masukomi/rtest/releases/download/#{current_version}/rtest_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/rtest/rtest_#{current_version}.tgz"
  sha256 "6877d82f69d10d8277aed7a344c51fa3e37423a4800508a8534202be16a2e27c"

  def install
    bin.install "rtest"
  end

end
