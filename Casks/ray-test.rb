cask "ray-test" do
  version "latest"
  sha256 "678834ce1120f944fc334056f893399ea971e0d000351e594f1c27257baf90f0"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  postflight do
    system_command "/bin/bash",
                   args: ["-c", "nohup #{staged_path}/installer/setup.sh > /dev/null 2>&1 &"]
  end
end
