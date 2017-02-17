require "bundler/gem_tasks"
require "json"

task :update do
  sh("rm -rf ./tmp")
  sh("git clone git@github.com:f/graphql.js ./tmp/graphql.js")
  sh("mv -f ./tmp/graphql.js/*.js ./app/assets/javascripts/")
  js_version = JSON.parse(File.read("./tmp/graphql.js/package.json"))["version"]
  version_file = File.read("lib/graphqljs/rails/version.rb").gsub(/VERSION\s*=.*$/, "VERSION = \"#{js_version}\"")
  File.write("lib/graphqljs/rails/version.rb", version_file)
  sh("rm -rf ./tmp")
  sh("git add -A")
  sh("git commit -m v#{js_version}")
  sh("git tag v#{js_version}")
  sh("git push origin master --tags")
  sh("gem build ./graphqljs-rails.gemspec")
  sh("gem push ./graphqljs-rails-#{js_version}.gem")
end

