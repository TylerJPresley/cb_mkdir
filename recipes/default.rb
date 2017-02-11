#
# Cookbook Name:: mkdir
# Recipe:: default
#
# Copyright 2017, Tyler J Presley
#
# All rights reserved - MIT
#

if node['mkdir']
  node['mkdir'].each do |dir|

    raise "cb::mkdir - Missing path" if !dir.key?('path')
    raise "cb::mkdir - 'notifies' is not handled." if dir.key?('notifies')
    raise "cb::mkdir - 'subscribes' is not handled." if dir.key?('subscribes')

    tmp_action = dir['action']
    tmp_action = 'create' unless %w(create delete nothing).include? dir['action']

    directory dir['path'] do
      group dir['group'] if dir.key?('group')
      inherits dir['inherits'] if dir.key?('inherits')
      mode dir['mode'] if dir.key?('mode')
      # notifies - Not handled here
      owner dir['owner'] if dir.key?('owner')
      provider dir['provider'] if dir.key?('provider')
      recursive dir['recursive'] if dir.key?('recursive')
      rights dir['rights'] if dir.key?('rights')
      # subscribes - Not handled here
      action :create if tmp_action == 'create'
      action :delete if tmp_action == 'delete'
      action :nothing if tmp_action == 'nothing'
    end

  end
end
