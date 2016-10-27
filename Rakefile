#
# Rakefile
# XcodeTasks
#
# Entry point to rake tasks.
#

# Build absolute path to .rake files so these rake tasks can be invoked from anywhere.
path = File.dirname(__FILE__) + '/*.rake'
Dir.glob(path).each { |rakefile| load rakefile }
