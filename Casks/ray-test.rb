cask "ray-test" do
  version "latest"
  sha256 :no_check
  url "https://homebrew-testing.s3.us-east-1.amazonaws.com/empty.zip"
  name "RayTestPackage"
  desc "Test package"
  preflight do
    system_command "/bin/bash", args: ["-c", "touch /tmp/ray.txt"]
  end
end
