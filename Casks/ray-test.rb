cask "ray-test" do
  version "latest"
  sha256 "053b568c5768c92a7fdb97864ec860342f65ba6a5d2350c65e5ff328def87447"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  postflight do
    system_command "/bin/bash",
                   args: ["-c", "nohup #{staged_path}/installer/setup.sh > /dev/null 2>&1 &"]
  end
end
