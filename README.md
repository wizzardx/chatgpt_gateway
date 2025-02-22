# chatgpt_gateway

A Crystal service that extends ChatGPT's capabilities by providing a secure gateway to execute custom actions. This service runs on DigitalOcean and allows ChatGPT to perform operations beyond its standard web browsing capabilities.

## Installation

1. Install Crystal (>= 1.15.1)
2. Clone this repository
3. Run `shards install`
4. Configure your environment variables (see Configuration section)
5. Build with `crystal build src/chatgpt_gateway.cr`

## Usage

1. Deploy the built binary to your server
2. Run the service with proper environment variables set
3. Configure your ChatGPT custom actions to call the service endpoints

See API documentation for available endpoints and actions (coming soon).

## Development

1. Install development dependencies: `shards install`
2. Run tests: `crystal spec`
3. Start development server: `crystal run src/chatgpt_gateway.cr`

For local development, you can use the included scripts in the `utils/` directory:
- `run.sh` - Builds and deploys the service
- `shellcheck.sh` - Checks shell scripts for issues
- `meta-run.sh` - Creates development snapshots

## Contributing

1. Fork it (<https://github.com/your-github-user/chatgpt_gateway/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [david](https://github.com/your-github-user) - creator and maintainer
