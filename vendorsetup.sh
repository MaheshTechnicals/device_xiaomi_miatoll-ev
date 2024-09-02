#!/bin/bash

# Clone the Kernel Tree
echo "Cloning Kernel Tree..."
git clone https://github.com/clarencekopitiam/kernel_xiaomi_sm6250.git kernel/xiaomi/sm6250 --depth=1

# Clone the Vendor Tree
echo "Cloning Vendor Tree..."
git clone https://github.com/clarencekopitiam/vendor_xiaomi_miatoll.git vendor/xiaomi/miatoll --depth=1

# Clone the hardware/xiaomi repository
echo "Cloning hardware/xiaomi..."
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi --depth=1

# Clone the hardware/sony/timekeep repository
echo "Cloning hardware/sony/timekeep..."
git clone https://github.com/LineageOS/android_hardware_sony_timekeep.git hardware/sony/timekeep --depth=1

# Clone the vendor/xiaomi/miuicamera repository
echo "Cloning vendor/xiaomi/miuicamera..."
git clone https://github.com/MaheshTechnicals/vendor_lineage-priv.git vendor/xiaomi/miuicamera --depth=1

echo "All repositories have been successfully cloned!"
