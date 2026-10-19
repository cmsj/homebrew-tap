cask "matrix-drift" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/cmsj/MatrixDrift/releases/download/v#{version}/MatrixDrift-#{version}.zip"
  name "Matrix Drift"
  desc "Screensaver recreating Apple's Drift with streams of Matrix code"
  homepage "https://github.com/cmsj/MatrixDrift"

  depends_on macos: ">= :sonoma"

  screen_saver "MatrixDrift.saver"

  zap trash: "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/net.tenshu.MatrixDrift.*.plist"
end
