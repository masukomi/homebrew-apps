class DaysProgress < Formula
  desc "A simple command line chart of your progress through the day"
  homepage "https://github.com/masukomi/days_progress"
  current_version="v1.0.0"
  url "https://github.com/masukomi/days_progress/releases/download/#{current_version}/days_progress_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/days_progress/days_progress_#{current_version}.tgz"
  sha256 "020a612472b76b0e2896ecf3bf61bd04c3d451937b8542c7fa67715df6394db8"

  depends_on "chicken"

  def install
# commented out because Homebrew says
# install: /usr/local/Cellar/chicken/5.0.0/lib/chicken/9/filepath.o: Operation not permitted
# which may be macOS and may be homebrew. Not sure... 
# going to instruct people to run this manually in the README
#    system "chicken-install", "filepath"
#    system "chicken-install", "simple-loops"
#    system "chicken-install", "ansi-escape-sequences"
    bin.install "days_progress"
  end

end
