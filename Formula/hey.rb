class Hey < Formula
  desc "Hey allows you to track your interruptions as they occur."
  homepage "https://interrupttracker.com"
  current_version="2.0.0-a2"
  # url
  # "https://github.com/masukomi/hey/releases/download/v#{current_version}/hey_v#{current_version}.tgz"
  url "https://github.com/masukomi/hey_2/releases/download/v#{current_version}/hey_v#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/hey_2/hey_v#{current_version}.tgz"
  sha256 "ac761861290efd4c9a848b06746662f551b7717dc1501c08fe54f3469c038222"

  depends_on "bdw-gc"
  depends_on "libevent"
  depends_on "sqlite3"

  def install
    bin.install "hey"
  end

end
