class Freitunit < Formula
    desc "Freitunit"
    homepage "https://github.com/andersonfds/freitunit"
    version "v0.1.0-alpha"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/andersonfds/freitunit/releases/download/v0.1.0-alpha/apple-arm.tar.gz"
        sha256 "fcffee9e5be87576139e7ce9f22eece3801aad580c605314617e0acd507e6182"
      elsif Hardware::CPU.intel?
        url "https://github.com/andersonfds/freitunit/releases/download/v0.1.0-alpha/apple-x64.tar.gz"
        sha256 "fe079de72be5f9ca53c7cf1931be809c62e4ad530e49b3a503d591d08375883f"
      end
    end
  
    def install
      bin.install "freitunit"
    end
  
    test do
      system "#{bin}/freitunit", "--version"
    end
  end
  
