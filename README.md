**HOW TO PREPARE A WORK ENVIRONMENT FOR FRESHTOMATO-AX COMPILATION**
  
1. Base is FreshTomato ARM - see https://github.com/FreshTomato-Project/freshtomato-arm/blob/arm-master/README.md
  
2. git clone https://github.com/FreshTomato-Project/freshtomato-ax
  
3. Toolchain (--> adjust to your path/folder)
    ```sh
    sudo ln -s ~/[your_folder]/freshtomato-ax/release/src-rt-5.04axhnd.675x/toolchains/brcm /opt/toolchains
    ```
   Example:
    ```sh
    sudo ln -s ~/freshtomato-repos/freshtomato-ax/release/src-rt-5.04axhnd.675x/toolchains/brcm /opt/toolchains
    ```
  
4. Packages
    ```sh
    sudo apt-get install liblzo2-dev uuid-dev docbook-xsl libtool-bin bc rsync gdisk xxd
    ```
  
5. Compiling for Asus TUF-AX3000_V2 (Note: bash as the default shell - required by the build system for the HND router models)
    ```sh
    cd ~/[your_folder]/freshtomato-ax/release/src-rt-5.04axhnd.675x/
    export PATH=$PATH:/opt/toolchains/crosstools-aarch64-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin
    export PATH=$PATH:/opt/toolchains/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/toolchains/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/lib
    make tuf-ax3000_v2 SHELL=/bin/bash
    ```
