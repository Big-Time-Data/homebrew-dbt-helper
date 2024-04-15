# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DbtHelper < Formula
  desc "dbt-helper"
  homepage "https://github.com/Big-Time-Data/dbt-helper"
  version "0.0.20"
  depends_on :macos

  url "https://github.com/Big-Time-Data/homebrew-dbt-helper/releases/download/v0.0.20/dbt-helper_darwin_amd64.tar.gz"
  sha256 "44978c0497ddd14724f8c60575d033cbd8cd1c1e20b10be21c799a21b696c256"

  def install
    bin.install "dbt-helper"
  end

  if Hardware::CPU.arm?
    def caveats
      <<~EOS
        The darwin_arm64 architecture is not supported for the DbtHelper
        formula at this time. The darwin_amd64 binary may work in compatibility
        mode, but it might not be fully supported.
      EOS
    end
  end
end
