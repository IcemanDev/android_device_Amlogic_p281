# android_device_Amlogic_p281 - Amlogic X96mini

Configuration of the device for the creation of TWRP on Amlogic reference cards

# Construction:
- Use minimum manifest repository (https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni).
- This configuration is designed to use twrp-5.1 or twrp6.0 branch
- Copy this project to /device/Amlogic/p281

Configurazione del dispositivo per la creazione di TWRP su schede di riferimento Amlogic

# Costruzione:
- Usare repository minimo manifest (https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni).
- Questa configurazione è progettato per l'utilizzo di branch twrp-5.1 o twrp6.0
- Copia questo progetto in /device/Amlogic/p281


code:

cd <source-dir>

rm -r out

. build/envsetup.sh && lunch

mka recoveryimage 
