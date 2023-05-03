FROM alpine:edge

# =============================================
# For NeoVim
# =============================================

USER root

# Install relevant packages.
RUN apk add alpine-sdk bash lua go python3 git lazygit bottom neovim ripgrep curl gcc tree --update

# Install Rust.
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="$PATH:/root/.cargo/bin"

# Mason cannot install "rust-analyzer" in Alpine. Use this approach.
RUN rustup component add rust-analyzer

# Clone base Neovim config.
RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Overwrite files inside (~/.config/nvim)
COPY user/.stylua.toml ~/.config/nvim/.stylua.toml

# Clone NeoVim user custom config.
RUN mkdir -p ~/.config/nvim/lua/user \
    && git clone https://github.com/lioneltayyd/astrovim-user-cfg.git ~/nvim_user_cfg \
    && mv ~/nvim_user_cfg/user/* ~/.config/nvim/lua/user \
    && rm -R ~/nvim_user_cfg
