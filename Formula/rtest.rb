# frozen_string_literal: true

class Rtest < Formula
  desc 'An RSpec wrapper that reduces noise eases rerunning tests'
  homepage 'https://github.com/masukomi/rtest'
  current_version = 'v1.2.0'
  url "https://github.com/masukomi/rtest/releases/download/#{current_version}/rtest_#{current_version}.tgz"
  # url "file:///Users/masukomi/workspace/rtest/rtest_#{current_version}.tgz"
  sha256 '67047f3034e6cf9cc0db540343f684e7e0b04d42a4dad13f6941117c248b69a4'

  def install
    bin.install 'rtest'
  end
end
