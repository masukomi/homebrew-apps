class PrivateComments < Formula
  current_version="v1.3.0"
  architecture=`arch`.strip
  puts "installing for #{architecture} architecture"
  arm_hash="2b136d21195ff6f4be808e31873352263fe183a47093b4292e22ff8553672e0f"
  intel_hash="1bc4e5d7fa05811b54a71e085163e079ff3054a83ef6d7031f0b3ef63f3b47d1"
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
