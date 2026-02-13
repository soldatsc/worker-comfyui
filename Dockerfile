FROM runpod/worker-comfyui:5.5.1-base

# All custom nodes
RUN cd /comfyui/custom_nodes && \
    git clone https://github.com/rgthree/rgthree-comfy && \
    git clone https://github.com/yolain/ComfyUI-Easy-Use && \
    git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts && \
    git clone https://github.com/city96/ComfyUI-GGUF && \
    git clone https://github.com/JPS-GER/ComfyUI_JPS-Nodes && \
    git clone https://github.com/chflame163/ComfyUI_LayerStyle && \
    git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack && \
    git clone https://github.com/1038lab/ComfyUI-QwenVL && \
    git clone https://github.com/WASasquatch/was-node-suite-comfyui && \
    git clone https://github.com/crystian/ComfyUI-Crystools && \
    git clone https://github.com/Jonseed/ComfyUI-Detail-Daemon

# Install dependencies
RUN cd /comfyui/custom_nodes/ComfyUI-Easy-Use && pip install -r requirements.txt 2>/dev/null || true && \
    cd /comfyui/custom_nodes/ComfyUI-Impact-Pack && pip install -r requirements.txt 2>/dev/null || true && \
    cd /comfyui/custom_nodes/ComfyUI_LayerStyle && pip install -r requirements.txt 2>/dev/null || true && \
    cd /comfyui/custom_nodes/was-node-suite-comfyui && pip install -r requirements.txt 2>/dev/null || true && \
    cd /comfyui/custom_nodes/ComfyUI-QwenVL && pip install -r requirements.txt 2>/dev/null || true && \
    cd /comfyui/custom_nodes/ComfyUI-GGUF && pip install -r requirements.txt 2>/dev/null || true && \
    cd /comfyui/custom_nodes/ComfyUI-Crystools && pip install -r requirements.txt 2>/dev/null || true
