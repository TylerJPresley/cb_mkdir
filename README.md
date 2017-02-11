# mkdir Cookbook

Sets up directories with attributes. Hooks into the chef API.

## Attributes

The following attributes mirror the chef API. Check the doc page for chef. [https://docs.chef.io/resource_directory.html]

e.g.
### mkdir::default

`node['mkdir']['path']` - directory path. [String]<br>
`node['mkdir']['group']` - group name. [Integer, String]<br>
`node['mkdir']['inherits']` - inherits right from parent. (default: false) (Win only) [TrueClass, FalseClass]<br>
`node['mkdir']['mode']` - octal mode. [Integer, String]<br>
`node['mkdir']['owner']` - directory owner. [Integer, String]<br>
`node['mkdir']['provider']` - provider. [Chef Class]<br>
`node['mkdir']['recursive']` - recursive (default: false) [TrueClass, FalseClass<br>
`node['mkdir']['rights']` - rights. (Win only) [Integer, String]<br>
`node['mkdir']['path']` - action to take. (values: create, delete, nothing) (default: create)

## Usage

### mkdir::default

Just include `mkdir` in your node's `run_list`: `recipe[mkdir::default]`

In your role file:
```
json
{
  "mkdir": [
    {
      "path": "/var/www",
      "owner": "nginx",
      "group": "nginx",
      "mode": "755"
    }
  ]
}
```

## Contributing

1. Fork the repository on Github<br>
2. Create a named feature branch (like `add_component_x`)<br>
3. Write your change<br>
4. Write tests for your change (if applicable)<br>
5. Run the tests, ensuring they all pass<br>
6. Submit a Pull Request using Github

## License and Authors

MIT License

Authors: Tyler J Presley (tjpresley@gmail.com)
