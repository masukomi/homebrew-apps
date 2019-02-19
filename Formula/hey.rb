class Hey < Formula
  desc "Hey allows you to track your interruptions as they occur."
  homepage "https://interrupttracker.com"
  current_version="2.0.0-a1"
  # url
  # "https://github.com/masukomi/hey/releases/download/v#{current_version}/hey_v#{current_version}.tgz"
  url "https://github.com/masukomi/hey_2/releases/download/v#{current_version}/hey_v#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/hey_2/hey_v#{current_version}.tgz"
  sha256 "42fbfd26a60a5c7c90701dde2f72f3c70463c26148b474d4d92aae03d428d97f"

  depends_on "bdw-gc"
  depends_on "libevent"
  depends_on "sqlite3"

  def install
    bin.install "hey"
  end

end
