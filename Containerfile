FROM ghcr.io/projectbluefin/common:latest AS bluefin-common

# Copy all system files
COPY --from=bluefin-common /system_files /
COPY cosign.pub /files/etc/pki/containers/zirconium.pub

FROM quay.io/pocketblue/oneplus-sdm845-gnome-desktop

RUN rm -rf /var/* && mkdir /var/tmp && bootc container lint
