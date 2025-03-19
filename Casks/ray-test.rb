cask "ray-test" do
  version "latest"
  sha256 "5b2ae41b4f36d763ec953017b1ecbc19b4e6aa4daa2738f9642d53f6f7bc0b71"
  url "http://localhost:8080/empty.zip"
  name "RayTestPackage"
  desc "Test package"
  preflight do
    system_command "/bin/bash", args: ["-c", "touch /tmp/ray.txt"]
  end
end
