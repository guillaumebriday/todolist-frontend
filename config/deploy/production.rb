server '192.168.50.4', user: 'vagrant', roles: %w{app db web}

after 'deploy:updated', 'docker:compose'
after 'deploy:updated', 'docker:env'

after 'deploy:updated', 'node:install'
after 'deploy:updated', 'node:build'

after 'deploy:updated', 'docker:nginx'
