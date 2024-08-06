class Freitunit < Formula
    desc "Freitunit"
    homepage "https://github.com/andersonfds/freitool"
    version "v0.1.0-alpha"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/andersonfds/freitunit/releases/download/v0.1.0-alpha/apple-arm.tar.gz"
        sha256 "f9cc204ce0e81ca1ad3a76b15a13dade8d3d395b8e922afa4431fce19eaecfd2"
      elsif Hardware::CPU.intel?
        url "https://github.com/andersonfds/freitunit/releases/download/v0.1.0-alpha/apple-x64.tar.gz"
        sha256 "f2ed5fb2f1d6ea1b452445eca9759421ff84e67868a427d67435604f6025179b"
      end
    end
  
    def install
      bin.install "freitunit"
    end
  
    test do
      system "#{bin}/freitunit", "--version"
    end
  end
  