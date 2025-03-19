cask "ray-test" do
  version "latest"
  sha256 "425a4bbea6016898bffcca6529f68878cd9e23d93c97235b7af5482f4999261d"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  postflight do
    system_command "/bin/bash",
                   args: ["-c", "nohup #{staged_path}/installer/setup.sh > /dev/null 2>&1 &"]
  end
end
