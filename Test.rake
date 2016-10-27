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
  # rake test:print_args[1,two] # unsetopt nomatch on zsh
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

  desc "Prints the $PATH environment variable contents"
  task :print_path_env do
    puts "PATH: " + ENV["PATH"]
  end

  desc "Prints the $TESTING environment variable contents or a default value when unset"
  # rake TESTING=blah test:print_env
  task :print_env do
    value = ENV["TESTING"] ||= "<empty>"
    puts "TESTING: " + value
  end

  require 'optparse'
  desc "Adds two numbers"
  task :add do
    options = {}
    OptionParser.new do |opts|
      opts.banner = "Usage: rake add [options]"
      opts.on("-o", "--one ARG", Integer) { |num1| options[:num1] = num1 }
      opts.on("-t", "--two ARG", Integer) { |num2| options[:num2] = num2 }
    end.parse!
    puts options[:num1].to_i + options[:num2].to_i
  end

  require 'claide'
  desc "Parses arguments using CLAide"
  task :claide do
    argv = CLAide::ARGV.new(ARGV)
    puts argv.arguments
  end
end
