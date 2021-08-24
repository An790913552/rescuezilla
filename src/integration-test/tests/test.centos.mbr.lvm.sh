#!/bin/bash
#
# Rescuezilla integration test: CentOS8 disk is an MBR + LVM (Logical Volume Manager)

# Source in utility function
. $(dirname $(readlink -f "$0"))/utility.fn.sh

ISO_PATH="${1:-$INTEGRATION_TEST_FOLDER/../../build/rescuezilla.amd64.hirsute.iso}"
ISO_CHECK_MATCH="${2:-Ubuntu 21.04}"

backup_restore_test "CentOS.MBR" "Rescuezilla.16gb.BIOS" "$ISO_PATH" "$ISO_CHECK_MATCH" "CentOS Linux 8 (Core)"

