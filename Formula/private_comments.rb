class PrivateComments < Formula
  current_version="v1.2.1"
  desc "A REST server to manage private comments on your code."
  homepage "https://github.com/masukomi/private_comments"
  url "https://github.com/masukomi/private_comments/releases/download/#{current_version}/private_comments_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/private_comments/private_comments_#{current_version}.tgz"
  sha256 "a4593bc96893a85010bcec1b1cebb1e919b716193c64faebf6f22b4d6a7ed3ef"

  def install
    bin.install "private_comments"
    bin.install "pc"
  end

end
