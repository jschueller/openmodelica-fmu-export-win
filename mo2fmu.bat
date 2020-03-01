@echo loadFile("%1.mo"); getErrorString(); > mo2fmu.mos
@echo translateModelFMU(%1, version="2.0", fmuType="me_cs"); getErrorString(); >> mo2fmu.mos
omc mo2fmu.mos
