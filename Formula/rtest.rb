# frozen_string_literal: true

class Rtest < Formula
  desc 'An RSpec wrapper that reduces noise eases rerunning tests'
  homepage 'https://github.com/masukomi/rtest'
  current_version = 'v1.3.0'
  url "https://github.com/masukomi/rtest/releases/download/#{current_version}/rtest_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/rtest/rtest_#{current_version}.tgz"
  sha256 '11cd0f867da69ba77c258dff4aa23609928b0d6d43282a1eec7c11761403e335'

  def install
    bin.install 'rtest'
  end
end
