cask "roo" do
  version "0.2.2"
  sha256 "db2b8947553c06cd96c3d89d50dd6d200cc80674037c65b676e11e5311348fd1"

  url "https://github.com/Jack-Kroll/homebrew-tap/releases/download/roo-#{version}/roo-#{version}.zip"
  name "roo"
  desc "Fast, private, keyboard-first web browser"
  homepage "https://github.com/Jack-Kroll/homebrew-tap"

  depends_on macos: :sequoia

  app "roo.app"

  # roo is signed but not notarized by Apple yet. With the quarantine flag left on,
  # macOS refuses to open it the first time.
  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/roo.app"],
        must_succeed: false,
        print_stderr: false
  end

  zap trash: [
    "~/Library/Application Scripts/com.jackkroll.roo",
    "~/Library/Containers/com.jackkroll.roo",
  ]
end
