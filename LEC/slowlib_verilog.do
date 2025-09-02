set log file lib_v.log -replace
read library /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib -liberty
write library slowlib_verilog_generated.v -verilog -replace
