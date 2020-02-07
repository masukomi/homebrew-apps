class PrivateComments < Formula
  current_version="v1.2.2"
  desc "A REST server to manage private comments on your code."
  homepage "https://github.com/masukomi/private_comments"
  url "https://github.com/masukomi/private_comments/releases/download/#{current_version}/private_comments_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/private_comments/private_comments_#{current_version}.tgz"
  sha256 "98e1132c91728551c2600440f180160796d9d209241f4c91fd7d648344222c9a"

  def install
    bin.install "private_comments"
    bin.install "pc"
  end

end
