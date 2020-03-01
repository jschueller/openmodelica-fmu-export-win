@echo imported_fmu_mo_file:=importFMU("%1.fmu"); getErrorString(); > sim.mos
@echo loadFile(imported_fmu_mo_file); getErrorString(); >> sim.mos
@echo simulate(%1); getErrorString(); >> sim.mos

omc sim.mos
