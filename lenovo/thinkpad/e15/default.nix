{ config, lib, pkgs, ... }:

{
  imports = [
    ../.
    ../../../common/pc/laptop/acpi_call.nix
    ../../../common/pc/laptop/ssd
    ../../../common/cpu/intel/comet-lake
  ];

  boot.kernelParams = [
    # Force use of the thinkpad_acpi driver for backlight control.
    # This allows the backlight save/load systemd service to work.
    "acpi_backlight=native"
  ];
}
