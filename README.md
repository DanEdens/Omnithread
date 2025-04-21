# Omnithread 🌀

**Your Information Conductor for the Madness_Interactive Ecosystem**

Welcome to **Omnithread**


## Omnithread Integration

Swarmonomicon now integrates with [Omnithread](../Omnithread), a tool for conducting information via MQTT in the Madness_Interactive ecosystem.

The `omnithread` module provides an `Omnithread` struct that wraps the core Omnithread functionality:

- Connecting to an MQTT broker
- Publishing messages to a topic
- Subscribing to a topic
- Receiving messages from subscribed topics

### Usage

```rust
use swarmonomicon::omnithread::{Omnithread, MqttConfig};

let config = MqttConfig {
    host: "localhost".to_string(), 
    port: 1883,
    client_id: "swarmonomicon".to_string(),
};

let omnithread = Omnithread::new(config)?;

omnithread.subscribe("swarmonomicon/test")?;
omnithread.publish("swarmonomicon/test", "Hello, Swarmonomicon!", true)?;

let msg = omnithread.receive_message()?;
println!("Received: {}", msg);
```

This integration allows Swarmonomicon to seamlessly interact with the MQTT bus used by other tools in the Madness_Interactive ecosystem.


## Installation 🔧

### From Source

```bash
# Clone the repository
git clone https://github.com/DanEdens/Omnithread
cd Omnithread

# Build Rust binary
cargo build --release

# Install Python package (optional)
pip install .

# Add CLI command to PATH (Linux/Mac)
echo 'export PATH="$PATH:$(pwd)/target/release"' >> ~/.bashrc
source ~/.bashrc
```

```powershell
REM Clone the repository
git clone https://github.com/DanEdens/Omnithread
cd Omnithread

REM Build Rust binary
cargo build --release

REM Install Python package (optional)
pip install .

REM Add CLI command to PATH (Windows)
setx PATH "%PATH%;%cd%\target\release"
```

### Environment Variables

- `AWSIP`: MQTT broker host (default: "localhost")
- `AWSPORT`: MQTT broker port (default: 1883)
- `DENA`: Client ID (default: "omnithread")

## Usage 🚀

### Command Line Interface

```bash
# Get a variable
omnithread get --name <name> --topic <topic>

# Set a variable
omnithread set --name <name> --value <value> [--retain]

# Subscribe to a topic
omnithread subscribe --topic <topic> --path <output_path>
```

<!-- ### Python API

```python
from omnithread import MqttClient

# Create client
client = MqttClient(host="localhost", port=1883, client_id="my-client")

# Publish message
client.publish("my/topic", "Hello, World!", retain=True)

# Subscribe to topic
client.subscribe("my/topic")
``` -->

## Development 🛠️

### Building

```bash
# Build Rust binary
cargo build

# Run tests
cargo test

```
<!-- # # Build Python package -->
<!-- # maturin develop -->

### Project Structure

```
Omnithread/
├── src/                    # Rust source code
│   ├── main.rs            # CLI entry point
│   ├── lib.rs             # Core functionality
│   ├── mqtt/              # MQTT implementation
│   └── commands/          # CLI commands
├── python/                # Python bindings
├── scripts/
├── tests/
└── README.md
```

## Contributing 🤝

Contributions are welcome! Please feel free to submit a Pull Request.
