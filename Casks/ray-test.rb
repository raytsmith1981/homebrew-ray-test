cask "ray-test" do
  version "latest"
  sha256 "46658dae5ae9b0344b761fb81eb7977c9a627fcfcc9378e1854e07ac66e31653"
  url "http://localhost:8080/installer.zip"
  name "RayTestPackage"
  desc "Test package"
  preflight do
    system_command "#{staged_path}/installer/setup.sh"
  end
end
