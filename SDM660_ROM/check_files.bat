@ECHO OFF
cd /d "%~dp0"
set firehose=prog_emmc_ufs_firehose_Sdm660_ddr.elf
set boot=boot.img
set xbl=xbl.elf
set system=system.img
set vendor=vendor.img
set tz=tz.mbn
set abl=abl.elf
set devcfg=devcfg.mbn
set rpm=rpm.mbn
set pmic=pmic.elf
set hyp=hyp.mbn
set cmnlib=cmnlib.mbn
set cmnlib64=cmnlib64.mbn
set dsp=dspso.bin
set modem=NON-HLOS.bin
set bluetooth=BTFM.bin
if not exist ROM\abl.elf goto UNPACK_FAILED
if not exist ROM\boot.img goto UNPACK_FAILED
if not exist ROM\BTFM.bin goto UNPACK_FAILED
if not exist ROM\cmnlib.mbn goto UNPACK_FAILED
if not exist ROM\cmnlib64.mbn goto UNPACK_FAILED
if not exist ROM\devcfg.mbn goto UNPACK_FAILED
if not exist ROM\dspso.bin goto UNPACK_FAILED
if not exist ROM\hyp.mbn goto UNPACK_FAILED
if not exist ROM\NON-HLOS.bin goto UNPACK_FAILED
if not exist ROM\pmic.elf goto UNPACK_FAILED
if not exist ROM\prog_emmc_ufs_firehose_Sdm660_ddr.elf goto UNPACK_FAILED
if not exist ROM\rpm.mbn goto UNPACK_FAILED
if not exist ROM\system.img goto UNPACK_FAILED
if not exist ROM\tz.mbn goto UNPACK_FAILED
if not exist ROM\vendor.img goto UNPACK_FAILED
if not exist ROM\xbl.elf goto UNPACK_FAILED
