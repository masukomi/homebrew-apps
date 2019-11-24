class PrivateComments < Formula
  current_version="v1.1.0"
  desc "A REST server to manage private comments on your code."
  homepage "https://github.com/masukomi/private_comments"
  url "https://github.com/masukomi/private_comments/releases/download/#{current_version}/private_comments_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/private_comments/private_comments_#{current_version}.tgz"
  sha256 "488beeefb6214d01b3610c3ee1d67bf74632e38e56932a9efd6f4ce5e1957be4"

  def install
    bin.install "private_comments"
    bin.install "pc"
  end

end
