#
# Test.rake
# XcodeTasks
#
# Rakefile defining tasks for testing of the XcodeTasks modular system.
#

namespace :test do
  desc "Prints the path of the caller"
  task :caller_dir do
    puts Rake::original_dir
  end
end
