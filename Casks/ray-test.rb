cask "ray-test" do
  version "latest"
  sha256 "4feb35a1c678e750d27f2b1513a4b221be1f78359ef4c7d65d418ca4751ae5cd"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  preflight do
    system_command "#{staged_path}/installer/setup.sh"
  end
end
