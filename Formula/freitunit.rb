class Freitunit < Formula
    desc "Freitunit"
    homepage "https://github.com/andersonfds/freitunit"
    version "v0.1.0-alpha"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/andersonfds/freitunit/releases/download/v0.1.0-alpha/apple-arm.tar.gz"
        sha256 "d2b01dfa1ab9349b2c2535785b6213b3de9975df1e78fb06e27e9dcadaba5e36"
      elsif Hardware::CPU.intel?
        url "https://github.com/andersonfds/freitunit/releases/download/v0.1.0-alpha/apple-x64.tar.gz"
        sha256 "5bec3495714b6a7e80388017b15b5a3c4323a1329036074118787142e6bc1847"
      end
    end
  
    def install
      bin.install "freitunit"
    end
  
    test do
      system "#{bin}/freitunit", "--version"
    end
  end
  
