#!/bin/bash

# Clone the Kernel Tree (using branch 15)
if [ ! -d "kernel/xiaomi/sm6250" ]; then
  echo "Cloning Kernel Tree (branch 15)..."
  git clone -b 15 https://github.com/clarencekopitiam/kernel_xiaomi_sm6250.git kernel/xiaomi/sm6250 --depth=1
else
  echo "Kernel Tree already exists, skipping..."
fi

# Clone the Vendor Tree (using branch lineage-21.0)
if [ ! -d "vendor/xiaomi/miatoll" ]; then
  echo "Cloning Vendor Tree (branch lineage-21.0)..."
  git clone -b lineage-21.0 https://github.com/clarencekopitiam/vendor_xiaomi_miatoll.git vendor/xiaomi/miatoll --depth=1
else
  echo "Vendor Tree already exists, skipping..."
fi

# Clone the hardware/xiaomi repository
if [ ! -d "hardware/xiaomi" ]; then
  echo "Cloning hardware/xiaomi..."
  git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi --depth=1
else
  echo "hardware/xiaomi already exists, skipping..."
fi

# Clone the hardware/sony/timekeep repository
if [ ! -d "hardware/sony/timekeep" ]; then
  echo "Cloning hardware/sony/timekeep..."
  git clone https://github.com/LineageOS/android_hardware_sony_timekeep.git hardware/sony/timekeep --depth=1
else
  echo "hardware/sony/timekeep already exists, skipping..."
fi

# Clone the vendor/xiaomi/miuicamera repository
if [ ! -d "vendor/xiaomi/miuicamera" ]; then
  echo "Cloning vendor/xiaomi/miuicamera..."
  git clone https://github.com/clarencelol/vendor_xiaomi_miuicamera.git vendor/xiaomi/miuicamera --depth=1
else
  echo "vendor/xiaomi/miuicamera already exists, skipping..."
fi

echo "All repositories have been successfully cloned!"
