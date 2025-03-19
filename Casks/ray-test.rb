cask "ray-test" do
  version "latest"
  sha256 "6f37ac1291c87876ebff1961f2609e7e8d38df4a1338adbcb269b99598e470cd"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  postflight do
    system_command "/bin/bash",
                   args: ["-c", "nohup #{staged_path}/installer/setup.sh > /dev/null 2>&1 &"]
  end
end
