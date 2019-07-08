inherit kernel-resin

COMPATIBLE_MACHINE = "ts4900"

FILESEXTRAPATHS_prepend_ts4900 := "${THISDIR}/${PN}:"

EXTRA_OEMAKE = " 'CFLAGS_MODULE=-fno-pic'"

SRC_URI_append_ts4900 = " \
    file://0001-ovl-allow-zero-size-xattr.patch \
    file://0002-ovl-use-a-minimal-buffer-in-ovl_copy_xattr.patch \
    file://0003-ovl-don-t-copy-up-opaqueness.patch \
    file://0004-Modify-the-ts4900-dts-as-per-an-explicit-customer-requirement.patch \
    file://0005-Add-support-for-GCC-7.patch \
    file://0002-NFLX-2019-001-SACK-Panic.patch \
    file://0003-NFLX-2019-001-SACK-Panic-for-lteq-4.14.patch \
    file://0004-NFLX-2019-001-SACK-Slowness.patch \
    file://0005-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
    file://0006-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
    "
