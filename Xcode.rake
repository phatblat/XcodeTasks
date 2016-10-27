#
# Xcode.rake
# XcodeTasks
#
# Rakefile defining tasks for Xcode.
#

namespace :xcode do
  desc "Prints the version of Xcode"
  task :version do
    sh "xcodebuild -version"
  end
end
