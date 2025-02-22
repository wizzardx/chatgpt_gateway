# ChatGPT Gateway

A Crystal service that extends ChatGPT's capabilities by providing a secure gateway to execute custom actions. Built using Test-Driven Development (TDD), this service runs on DigitalOcean and allows ChatGPT to perform operations beyond its standard web browsing capabilities.

## Features

- Health check endpoint
- More features coming soon...

## Installation

1. Install Crystal (>= 1.15.1)
2. Clone this repository:
   ```bash
   git clone https://github.com/wizzardx/chatgpt_gateway.git
   cd chatgpt_gateway
   ```
3. Install dependencies:
   ```bash
   shards install
   ```
4. Build the project:
   ```bash
   crystal build src/chatgpt_gateway.cr
   ```

## Usage

1. Start the server:
   ```bash
   ./chatgpt_gateway
   ```
2. Test the health endpoint:
   ```bash
   curl http://localhost:3000/health
   ```

More documentation coming soon as features are developed.

## Development

This project follows Test-Driven Development practices. To get started with development:

1. Install development dependencies:
   ```bash
   shards install
   ```
2. Run the test suite:
   ```bash
   crystal spec
   ```
3. Start development server:
   ```bash
   crystal run src/chatgpt_gateway.cr
   ```

### Development Tools

The `utils/` directory contains helpful development scripts:
- `run.sh` - Builds and deploys the service
- `shellcheck.sh` - Checks shell scripts for issues
- `meta-run.sh` - Creates development snapshots

## Contributing

1. Fork it (<https://github.com/wizzardx/chatgpt_gateway/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [David Purdy](https://github.com/wizzardx) - creator and maintainer

## License

This project is licensed under the MIT License - see the LICENSE file for details
