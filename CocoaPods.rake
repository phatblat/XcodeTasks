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

  desc "Lints a pod in the current directory"
  task :lint => [:cd_to_caller_dir] do
    sh "pod lib lint"
  end
end
