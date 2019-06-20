class DaysProgress < Formula
  desc "A simple command line chart of your progress through the day"
  homepage "https://github.com/masukomi/days_progress"
  current_version="v1.1.1"
  url "https://github.com/masukomi/days_progress/releases/download/#{current_version}/days_progress_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/days_progress/days_progress_#{current_version}.tgz"
  sha256 "f8d3ca6e54ff1cc3f1650b85bdfe871c2afa2d56d8222d01db3e5a255c2c0c41"

  #depends_on "chicken"

  def install
    bin.install "days_progress"
  end

end
