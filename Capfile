load 'deploy' if respond_to?(:namespace) # cap2 differentiator
Dir['vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }

load 'config/deploy' # remove this line to skip loading any of the default tasks


#========================
# For Mongrel Cluster Apps
# ========================

# namespace :deploy do
#
#   task :start, :roles => :app do
#     run "cd #{current_path} && mongrel_rails cluster::configure -e production -p #{mongrel_port}0 -N #{mongrel_nodes} -c #{current_path} --user #{user} --group #{user}"
#     run "cd #{current_path} && mongrel_rails cluster::start"
#     run "rm -rf /home/#{user}/public_html;ln -s #{current_path}/public /home/#{user}/public_html"
#     run "mkdir -p #{deploy_to}/shared/config"
#     run "mv #{current_path}/config/mongrel_cluster.yml #{deploy_to}/shared/config/mongrel_cluster.yml"
#     run "ln -s #{deploy_to}/shared/config/mongrel_cluster.yml #{current_path}/config/mongrel_cluster.yml"
#   end
#
#   task :restart, :roles => :app do
#     run "ln -s #{deploy_to}/shared/config/mongrel_cluster.yml #{current_path}/config/mongrel_cluster.yml"
#     run "cd #{current_path} && mongrel_rails cluster::restart"
#   end

# end
