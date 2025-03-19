cask "ray-test" do
  version "latest"
  sha256 "1e98546b204a9834513c7347c740c1dbf70f0337429c3a4dd071abeca4d3ec75"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  preflight do
    system_command "#{staged_path}/installer/setup.sh"
  end
end
