#
# Carthage.rake
# XcodeTasks
#
# Rakefile defining tasks for Carthage.
#

namespace :carthage do
  desc "Prints the version of Carthage"
  task :version do
    sh "carthage version"
  end
end
