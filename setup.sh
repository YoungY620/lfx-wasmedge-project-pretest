#!/bin/bash
echo "Installing the TensorFlow-Lite dependency..."
curl -s -L -O --remote-name-all https://github.com/second-state/WasmEdge-tensorflow-deps/releases/download/0.11.2/WasmEdge-tensorflow-deps-TFLite-0.11.2-manylinux2014_x86_64.tar.gz
tar -zxf WasmEdge-tensorflow-deps-TFLite-0.11.2-manylinux2014_x86_64.tar.gz
rm -f WasmEdge-tensorflow-deps-TFLite-0.11.2-manylinux2014_x86_64.tar.gz
echo "export LD_LIBRARY_PATH=$(pwd):${LD_LIBRARY_PATH}" >> ~/.bashrc

echo "Getting the WasmEdge and the WASI-NN plug-in with TensorFlow-Lite backend..."
curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash -s -- -v 0.11.2 --plugins wasi_nn-tensorflowlite
source ~/.bashrc

echo "completed"