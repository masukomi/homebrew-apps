class PrivateComments < Formula
  current_version="v1.2.4"
  architecture=`arch`.strip
  puts "installing for #{architecture} architecture"
  arm_hash="ba81a17b20573e1bced8e035e3a0e6577b792d283139b3fcf191f0ddd9de0380"
  intel_hash="5829c247af5af660dbe944cbd0061b8bd099c8db63afa7cef44b99f4eddcf1d4"
  desc "A REST server to manage private comments on your code."
  homepage "https://github.com/masukomi/private_comments"
  url "https://github.com/masukomi/private_comments/releases/download/#{current_version}/private_comments_#{architecture}_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/private_comments/private_comments_#{architecture}_#{current_version}.tgz"
  sha256 architecture == "arm64" ? arm_hash : intel_hash

  def install
    bin.install "private_comments"
    bin.install "pc"
  end

end
