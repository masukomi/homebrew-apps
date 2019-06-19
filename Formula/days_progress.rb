class DaysProgress < Formula
  desc "A simple command line chart of your progress through the day"
  homepage "https://github.com/masukomi/days_progress"
  current_version="v1.1.0"
  url "https://github.com/masukomi/days_progress/releases/download/#{current_version}/days_progress_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/days_progress/days_progress_#{current_version}.tgz"
  sha256 "bc704cfc21a0954b1e5f38169352971b3a408e1e205af78758328996e94ce71c"

  #depends_on "chicken"

  def install
    bin.install "days_progress"
  end

end
