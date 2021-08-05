# MFiX-TFM-frictional-solids-stress-model-by-GZPXKB
Necessary udfs bulit into MFiX for a new frictional solids stress model that can capture structured bubbling in fluidized bed with vertical vibration or gas flow oscillation

All files here are based on MFiX-19.3.1. For other versions of MFiX, some small changes may be needed.

The three files with an extension name of .f (calc_grbdry.f, calc_k_cp.f, and calc_mu_s.f) are udfs that incorporate the new model into MFiX. This new model uses a new formulation of the frictional solids pressure at the critical state derived from a dilation law (Pouliquen et al., J. Stat. Mech., 2006, P07020) to replace the original formulation used in the Srivastava and Sundaresan model (Srivastava and Sundaresan, Powder Technol., 2003, 72-85). Additional transition factors are added to ensure continuity across solids volume fraction and the formulation of the Schaeffer model (Syamlal et al., MFIX Documentation Theory Guide, 1993) is added when the solids volume fraction is larger than the packing limit to prevent over-packing. All other equations are the same as those in the Srivastava and Sundaresan model (Srivastava and Sundaresan, Powder Technol., 2003, 72-85).

![image](https://user-images.githubusercontent.com/59145233/128274746-e3ed7a20-e434-4b8b-a085-63f5dd8d74b0.png)

rb_1.mfx is the case file for the structured bubbling in fluidized bed induced by vertical vibration. The vibration is added by oscillating gravity, as in the usr1.f. ALLrun.sh is the script to run the simulation in parallel with 8 processors. The video structured_bubbling.avi shows results for the solids volume fraction (blue = 0.63 and white = 0) in 9-12 s (playback speed = 0.5x).

To use this new model, the keyword "friction_model" in the mfx case file should be specified as "SRIVASTAVA" and the above three .f files needs to be included in the case directory.

We encourage all to test our new model in their TFM modeling projects. If you find this model is useful for your research, please cite the following paper:

Guo, Q., Zhang, Y., Padash, A., Xi, K., Kovar, T., & Boyce, C. M. (2021). Dynamically Structured Bubbling in Vibrated Gas-Fluidized Granular Materials. PNAS. In press.
