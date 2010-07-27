
set :application, "sample2"
set :repository,  "git@github.com:aybarra/sample2.git"
set :deploy_to, "/usr2/aybarra/deployed/#{application}"
set :deploy_via, :remote_cache
set :user, "aybarra"
set :use_sudo, false
ssh_options[:port] = 222

role :app, "000.00.00.000"
role :web, "000.00.00.000"
role :db,  "000.00.00.000", :primary => true

after 'deploy:update_code', 'deploy:upload_database_yml'
after 'deploy:update_code', 'deploy:create_symlinks'

namespace :deploy do
  task :restart do
    run "/usr/bin/mongrel_rails cluster::stop -C #{deploy_to}/shared/config/mongrel_cluster.yml"
    run "/usr/bin/mongrel_rails cluster::start -C #{deploy_to}/shared/config/mongrel_cluster.yml"
  end
end

namespace :deploy do
  task :upload_database_yml do
    put(File.read('config/database.yml'), "#{release_path}/config/database.yml", :mode => 0444)
  end
end

namespace :deploy do
  task :create_symlinks do
    %w{avatars files headers}.each do |share|
      run "rm -rf #{release_path}/public/#{share}"
      run "mkdir -p #{shared_path}/system/#{share}"
      run "ln -nfs #{shared_path}/system/#{share} #{release_path}/public/#{share}"
    end
  end
end

