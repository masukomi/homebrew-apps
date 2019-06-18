class DaysProgress < Formula
  desc "A simple command line chart of your progress through the day"
  homepage "https://github.com/masukomi/days_progress"
  current_version="v1.0.1"
  url "https://github.com/masukomi/days_progress/releases/download/#{current_version}/days_progress_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/days_progress/days_progress_#{current_version}.tgz"
  sha256 "f96046a80db7d000c5a2e5fa293694bb5afcc011f76d81700db2d686e6d6c350"

  #depends_on "chicken"

  def install
    bin.install "days_progress"
  end

end
