#! /usr/bin/env sh

./install.sh

# Install optional dependencies:
# Do this before installing `requirements.txt` below, the optional dependencies
# have fixed versions, while `requirements.txt` only has minimum versions.
. open_spiel/scripts/python_extra_deps.sh
pip install \
    $OPEN_SPIEL_PYTHON_JAX_DEPS \
    $OPEN_SPIEL_PYTHON_PYTORCH_DEPS \
    $OPEN_SPIEL_PYTHON_TENSORFLOW_DEPS \
    $OPEN_SPIEL_PYTHON_MISC_DEPS

pip install -r requirements.txt
