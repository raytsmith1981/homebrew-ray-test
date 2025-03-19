cask "ray-test" do
  version "latest"
  sha256 :no_check
  url "https://doesntexistewjfiuewfjiuewjfiewefiwujfewui.s3.amazonaws.com/doesntexist.zip"
  name "RayTestPackage"
  desc "Test package"
  preflight do
    system_command "/bin/bash", args: ["-c", "touch /tmp/ray.txt"]
  end
end
