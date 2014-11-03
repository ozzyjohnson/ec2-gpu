# Versions and strings.
CUDA_DRIVER=340.46
CUDA_INSTALL=http://us.download.nvidia.com/XFree86/Linux-x86_64/${CUDA_DRIVER}/NVIDIA-Linux-x86_64-${CUDA_DRIVER}.run

# Install prereqs.
yum groupinstall \
      -y \
      "Development tools"

yum install \
      -y \
    docker \
    git \
    wget

# Install CUDA drivers.
wget \
      $CUDA_INSTALL \
        -P /tmp \
        --no-verbose \
      && chmod +x /tmp/NVIDIA-Linux-x86_64-${CUDA_DRIVER}.run \
      && /tmp/NVIDIA-Linux-x86_64-${CUDA_DRIVER}.run \
        -s \
        -N \
        --no-kernel-module \
      && rm -rf /tmp/*
