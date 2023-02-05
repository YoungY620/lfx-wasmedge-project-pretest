#!/bin/bash
curl -sLO https://github.com/second-state/WasmEdge-WASINN-examples/raw/master/tflite-birds_v1-image/wasmedge-wasinn-example-tflite-bird-image.wasm
curl -sLO https://github.com/second-state/WasmEdge-WASINN-examples/raw/master/tflite-birds_v1-image/lite-model_aiy_vision_classifier_birds_V1_3.tflite
curl -sLO https://github.com/second-state/WasmEdge-WASINN-examples/raw/master/tflite-birds_v1-image/bird.jpg

# Please check that you've already install the libtensorflowlite_c.so and set the `LD_LIBRARY_PATH`.
wasmedge --dir .:. wasmedge-wasinn-example-tflite-bird-image.wasm lite-model_aiy_vision_classifier_birds_V1_3.tflite bird.jpg
# If you didn't install the project, you should give the `WASMEDGE_PLUGIN_PATH` environment variable for specifying the WASI-NN plugin path.
