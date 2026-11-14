cask "roo" do
  version "0.2.1"
  sha256 "9d1a6fbe65b97869ef3446789224df787ac4a4916a74230210ee400bb144d109"

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
