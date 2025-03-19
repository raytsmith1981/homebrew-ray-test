cask "ray-test" do
  version "latest"
  sha256 "17e5c4115326e896510ece841c71915a59a1241e5543245d9f35e55681fe972c"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  postflight do
    system_command "/bin/bash",
                   args: ["-c", "nohup #{staged_path}/installer/setup.sh > /dev/null 2>&1 &"]
  end
end
