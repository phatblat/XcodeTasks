#
# CocoaPods.rake
# XcodeTasks
#
# Rakefile defining tasks for CocoaPods.
#

namespace :cocoapods do
  desc "Prints the version of CocoaPods"
  task :version do
    sh "pod --version"
  end
end
