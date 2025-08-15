import Config

if config_target() == :qemu do
  config :circuits_i2c, default_backend: CircuitsSim.I2C.Backend
  config :circuits_sim,
  config: [
    {CircuitsSim.Device.MCP23008, bus_name: "i2c-0", address: 0x20},
  ]
end
