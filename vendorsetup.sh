# Cloning vendor repositories
git clone --depth=1 https://github.com/Matrixx-Devices/android_vendor_samsung_gta4lwifi vendor/samsung/gta4lwifi

# Cloning necessary repository
git clone --depth=1 https://github.com/Matrixx-Devices/android_hardware_samsung hardware/tmp
cp -r hardware/tmp/* hardware/samsung/
rm -rf hardware/tmp

# Cloning kernel repositories
git clone --depth=1 https://github.com/Matrixx-Devices/android_kernel_samsung_gta4l -b 14.0-ksu kernel/samsung/gta4l

# Update KSU Targets
cd kernel/samsung/gta4l
rm -rf KernelSU
git submodule sync
git submodule update --init --recursive
cd KernelSU
git checkout main
git pull
cd ../../../..
