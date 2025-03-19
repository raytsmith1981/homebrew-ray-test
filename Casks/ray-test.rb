cask "ray-test" do
  version "latest"
  sha256 "97608d6262c4a81297473251fcdb1c59c7486d6b5719f7aab743fe076de739d1"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  postflight do
    system_command "#{staged_path}/installer/setup.sh"
  end
end
