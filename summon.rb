# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Summon < Formula
  desc "CLI that provides on-demand secrets access for common DevOps tools."
  homepage "https://github.com/cyberark/summon"
  version "0.8.4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cyberark/summon/releases/download/v0.8.4/summon-darwin-amd64.tar.gz"
    sha256 "c3d63c467f72863275af118fdd50a202cbe6f8614d224f39ce86e86731311ac5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cyberark/summon/releases/download/v0.8.4/summon-linux-amd64.tar.gz"
    sha256 "dd3ed7712fe9614e3b85e0f6dc782ac5a92b5cdbc1be36d339ba660c79b772da"
  end

  def install
    bin.install "summon"
  end

  test do
    system "#{bin}/summon", "-v"
  end
end
