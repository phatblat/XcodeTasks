#
# Directories.rake
# XcodeTasks
#
# Rakefile defining common tasks for working with directories.
#

# task dependencies don't like two colons in task name [:dir:caller]
# namespace :dir do

desc "Changes the current directory to that of the caller"
task :cd_to_caller_dir do
  Dir.chdir(Rake::original_dir)
end

# end
