class Dinghy < Formula
  desc "faster, friendlier Docker on OS X"
  homepage "https://github.com/octovis/dinghy"
  url "https://github.com/octovis/dinghy.git", :tag => "v5.1.0", :revision => "006f6a44926383ceabb4f3a656fd0f793bd104bf"
  head "https://github.com/octovis/dinghy.git", :branch => :master

  depends_on "unfs3"
  depends_on "dnsmasq"

  def install
    bin.install "bin/dinghy"
    bin.install "bin/_dinghy_command"
    prefix.install "cli"
  end

  def caveats; <<-EOS.undent
    Run `dinghy create` to create the VM, then `dinghy up` to bring up the VM and services.
    EOS
  end

  test do
    system "dinghy", "version"
  end
end
