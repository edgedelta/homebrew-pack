# typed: false
# frozen_string_literal: true

# This file is auto-managed by GoReleaser (see .goreleaser.yaml in
# edgedelta/edx) and is overwritten on every release. The values below are
# placeholders so the tap structure is reviewable before the first release;
# the version and sha256 sums become real on the first `vX.Y.Z` tag.
# DO NOT EDIT BY HAND.
class Edx < Formula
  desc "Edge Delta command-line interface"
  homepage "https://github.com/edgedelta/edx"
  version "0.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/edgedelta/edx/releases/download/v0.0.0/edx_0.0.0_Darwin_x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      define_method(:install) do
        bin.install "edx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/edgedelta/edx/releases/download/v0.0.0/edx_0.0.0_Darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      define_method(:install) do
        bin.install "edx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/edgedelta/edx/releases/download/v0.0.0/edx_0.0.0_Linux_x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      define_method(:install) do
        bin.install "edx"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/edgedelta/edx/releases/download/v0.0.0/edx_0.0.0_Linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      define_method(:install) do
        bin.install "edx"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edx version")
  end
end
