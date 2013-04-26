
desc 'Run tests'
task :test do
  sh "node --stack-trace-limit=2 test/node/node_modules/nodeunit/bin/nodeunit --reporter skip_passed test/node/node_test.coffee"
end

task :default => :test
