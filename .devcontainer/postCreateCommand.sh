#! /usr/bin/env sh

./install.sh
pip install -r requirements.txt

# Install optional dependencies:
. open_spiel/scripts/python_extra_deps.sh
pip install \
    $OPEN_SPIEL_PYTHON_JAX_DEPS \
    $OPEN_SPIEL_PYTHON_PYTORCH_DEPS \
    $OPEN_SPIEL_PYTHON_TENSORFLOW_DEPS \
    $OPEN_SPIEL_PYTHON_MISC_DEPS