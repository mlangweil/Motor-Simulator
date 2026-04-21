# 2026-04-16T21:50:16.307094700
import vitis

client = vitis.create_client()
client.set_workspace(path="C:/Motor-Simulator")

comp = client.create_hls_component(name = "PWM",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

