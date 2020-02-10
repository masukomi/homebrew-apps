class PrivateComments < Formula
  current_version="v1.2.3"
  desc "A REST server to manage private comments on your code."
  homepage "https://github.com/masukomi/private_comments"
  url "https://github.com/masukomi/private_comments/releases/download/#{current_version}/private_comments_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/private_comments/private_comments_#{current_version}.tgz"
  sha256 "dc00630e8547dd7a0f63251f938ea0f4a8ecc607f43a2e1286fb470e2285fe47"

  def install
    bin.install "private_comments"
    bin.install "pc"
  end

end
