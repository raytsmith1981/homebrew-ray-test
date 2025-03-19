cask "ray-test" do
  version "latest"
  sha256 "c1169f890e881913b796258345e1a3d11eb7f1d489ab45b6d99af39f46ee2994"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  preflight do
    system_command "#{staged_path}/ray-test/install.sh"
  end
end
