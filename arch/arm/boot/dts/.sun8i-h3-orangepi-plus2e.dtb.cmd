cmd_arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dtb := mkdir -p arch/arm/boot/dts/ ; arm-linux-gnueabihf-gcc -E -Wp,-MD,arch/arm/boot/dts/.sun8i-h3-orangepi-plus2e.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.sun8i-h3-orangepi-plus2e.dtb.dts.tmp arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dtb -b 0 -i arch/arm/boot/dts/ -Wno-unit_address_vs_reg -d arch/arm/boot/dts/.sun8i-h3-orangepi-plus2e.dtb.d.dtc.tmp arch/arm/boot/dts/.sun8i-h3-orangepi-plus2e.dtb.dts.tmp ; cat arch/arm/boot/dts/.sun8i-h3-orangepi-plus2e.dtb.d.pre.tmp arch/arm/boot/dts/.sun8i-h3-orangepi-plus2e.dtb.d.dtc.tmp > arch/arm/boot/dts/.sun8i-h3-orangepi-plus2e.dtb.d

source_arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dtb := arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dts

deps_arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dtb := \
  arch/arm/boot/dts/sun8i-h3-orangepi-pc-plus.dts \
  arch/arm/boot/dts/sun8i-h3-orangepi-pc.dts \
  arch/arm/boot/dts/sun8i-h3.dtsi \
  arch/arm/boot/dts/skeleton.dtsi \
  arch/arm/boot/dts/include/dt-bindings/clock/sun8i-h3-ccu.h \
  arch/arm/boot/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/boot/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/boot/dts/include/dt-bindings/pinctrl/sun4i-a10.h \
  arch/arm/boot/dts/include/dt-bindings/reset/sun8i-h3-ccu.h \
  arch/arm/boot/dts/sunxi-common-regulators.dtsi \
  arch/arm/boot/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/include/dt-bindings/input/input.h \
  arch/arm/boot/dts/include/dt-bindings/input/linux-event-codes.h \

arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dtb: $(deps_arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dtb)

$(deps_arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dtb):
