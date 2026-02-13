FROM runpod/worker-comfyui:5.5.1-base

# Кастомные ноды через comfy-cli
RUN comfy-node-install rgthree-comfy comfyui-custom-scripts comfyui-easy-use

# Ноды которых может не быть в реестре — ставим вручную
RUN cd /comfyui/custom_nodes && \
    git clone https://github.com/rgthree/rgthree-comfy 2>/dev/null || true && \
    git clone https://github.com/yolain/ComfyUI-Easy-Use 2>/dev/null || true && \
    git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts 2>/dev/null || true

# Зависимости
RUN cd /comfyui/custom_nodes/ComfyUI-Easy-Use && pip install -r requirements.txt 2>/dev/null || true
