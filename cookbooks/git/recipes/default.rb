#
# Cookbook Name:: git
# Recipe:: default
#

# Copy the current HEAD into a REVISION file
# like cap does
execute "create-revision-file" do
  command "git log -n 1 | grep commit | cut -f 2 -d ' ' > REVISION"
end
