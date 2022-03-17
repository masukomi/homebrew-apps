class PrivateCommentsArm < Formula
  current_version="v1.2.4"
  desc "A REST server to manage private comments on your code."
  homepage "https://github.com/masukomi/private_comments"
  url "https://github.com/masukomi/private_comments/releases/download/#{current_version}/private_comments_arm64_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/private_comments/private_comments_#{current_version}.tgz"
  sha256 "ba81a17b20573e1bced8e035e3a0e6577b792d283139b3fcf191f0ddd9de0380"

  def install
    bin.install "private_comments"
    bin.install "pc"
  end

end
