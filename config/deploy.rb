# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'test_jenkins_to_deploy'
set :repo_url, 'git@github.com:JulienBreux/test-jenkins-to-deploy.git'

# Default value for :log_level is :debug
# set :log_level, :debug

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
