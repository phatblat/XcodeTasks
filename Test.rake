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

  desc "Prints arguments passed to task"
  task :print_args, [:arg1, :arg2] do |task, args|
    args.with_defaults(:arg1 => :default_1, :arg2 => :default_2)
    puts "Task name: #{task}"
    puts "Arguments: #{args}"
    puts "arg1: #{args[:arg1]}"
  end

  desc "Invokes the :print_args task with two arguments"
  task :pass_args do
    # This form doesn't work with namespaced tasks
    # Rake::Task[:test:print_args].invoke(1, 2)
    Rake.application.invoke_task("test:print_args[1, 2]")
  end
end
