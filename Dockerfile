FROM alpine:edge

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# =============================================
# For NeoVim
# =============================================

USER root

# Relevant packages.
RUN apk add alpine-sdk bash lua go python3 git lazygit bottom neovim ripgrep curl gcc tree --update

# # Install Rust.
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="$PATH:$HOME/.cargo/env"

# Clone NeoVim pre-built config.
RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Overwrite files inside (~/.config/nvim)
COPY user/.stylua.toml ~/.config/nvim/.stylua.toml

# Clone NeoVim user custom config.
RUN mkdir -p ~/.config/nvim/lua/user \
    && git clone https://github.com/lioneltayyd/astrovim_user_cfg.git ~/nvim_user_cfg \
    && mv ~/nvim_user_cfg/user/* ~/.config/nvim/lua/user \
    && rm -R ~/nvim_user_cfg
