import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddArgsForSetPermission(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "set_perm(" in edify.script[i] and "/system/xbin/lbesec" in edify.script[i]:
      edify.script[i] = 'set_perm(0, 0, 06755, "/system/xbin/lbesec");'
      return

def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
      edify.script[i] = 'delete_recursive("/system");'
      return

def AddArgsForUnmountSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "unmount" in edify.script[i] and "/system" in edify.script[i]:
      edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "/system");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def FullOTA_InstallEnd(info):
    WritePolicyConfig(info)
    AddArgsForSetPermission(info)
    AddArgsForFormatSystem(info)
    AddArgsForUnmountSystem(info)

def IncrementalOTA_InstallEnd(info):
    AddArgsForSetPermission(info)
