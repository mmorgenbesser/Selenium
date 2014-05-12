### Terminal Commands
======================

##### Specify Browser

`browser='chrome' rspec -r ./config.rb`

##### Don't specify browser

`rspec --require ./config.rb`

Use -r in place of require

`rspec --r ./config.rb`

#### Include tag by type
Ex: `:type => 'special`

`rspec . --tag type:special --r ./config.rb`

#### Run parallel tests (2)

`parallel_rspec --test-options 'r ./config.rb' spec`

##### Increase number of parallel tests

`parallel_rspec -n 5`

#### Order random

`parralel_rspec --test-options '-r ./config_cloud.rb --order random'`

####Rake Tasks

Run a task
`rake task name`

Run a task within the local namespace
`rake local:chrome`

Run a task within the cloud namespace
`rake cloud:ie['9']`

Specify parallel processes in an environment variable before the `rake` command
`processes='5' rake cloud:ie['9']`

Specify operating system
`rake cloud:ie['Windows 7','9']`



