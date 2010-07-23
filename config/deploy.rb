default_run_options[:pty] = true

set :user, "aybarra"
set :password, "aA187759!"
set :deploy_via, :remote_cache


set :application, "sample"
set :repository,  "git@github:aybarra/sample.git"
set :use_sudo, false
set :run_method, :run
set :scm, :git
set :scm_username, "aybarra"
set :scm_password, "aA187759!"
et :branch, "master"
set :deploy_to, "/usr2/aybarra/deployed/#{application}"
set :mongrel_port, "4444"                           # Mongrel port that was assigned to you
set :mongrel_nodes, "1"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "localhost"                          # Your HTTP server, Apache/etc
role :app, "localhost"                          # This may be the same as your `Web` server
role :db,  "localhost", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end


