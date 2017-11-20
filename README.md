# Running ARM binaries on x86 Linux

The aim is to run ARM Linux binary just like the x86 Linux binary on x86 Linux system:

```sh
./some_binary_to_run
```

It is possible using _binfmt_misc_.

On Ubuntu it is installed as follows:

```sh
sudo apt install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
sudo apt install qemu-user # or qemu-user-static
```

You may need to install some additional arm-linux-gnueabihf libraries.

Then build binary statically for this architecture. After that You should be able to run it directly, hardware emulation is then implicitly enabled.

<img src="results/Zrzut ekranu z 2017-11-20 22-40-23__.png" width="640px" vspace="16">
