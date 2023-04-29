FROM alpine:edge

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# =============================================
# For NeoVim
# =============================================

# Relevant packages.
RUN apk add alpine-sdk bash lua go python3 git lazygit bottom neovim ripgrep curl gcc --update

# # Install Rust.
RUN apk add curl curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="$PATH:$HOME/.cargo/env"

# Clone NeoVim pre-built config.
RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Clone NeoVim user custom config.
RUN git clone https://github.com/lioneltayyd/astrovim_user_cfg ~/.config/nvim/lua/user
