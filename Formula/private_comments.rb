class PrivateComments < Formula
  current_version="v1.0.0"
  desc "A REST server to manage private comments on your code."
  homepage "https://github.com/masukomi/private_comments"
  url "https://github.com/masukomi/private_comments/releases/download/#{current_version}/private_comments_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/private_comments/private_comments_#{current_version}.tgz"
  sha256 "ebf100b2dddff28dcdf94478a5b61de96f14f3e8b52fa56a3251372395c66d68"

  def install
    bin.install "private_comments"
  end

end
