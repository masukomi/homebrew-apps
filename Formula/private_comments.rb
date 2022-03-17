class PrivateComments < Formula
  current_version="v1.2.4"
  desc "A REST server to manage private comments on your code."
  homepage "https://github.com/masukomi/private_comments"
  url "https://github.com/masukomi/private_comments/releases/download/#{current_version}/private_comments_i386_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/private_comments/private_comments_#{current_version}.tgz"
  sha256 "5829c247af5af660dbe944cbd0061b8bd099c8db63afa7cef44b99f4eddcf1d4"

  def install
    bin.install "private_comments"
    bin.install "pc"
  end

end
