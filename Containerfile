FROM ghcr.io/projectbluefin/common:latest AS bluefin-common

# Copy all system files
COPY --from=bluefin-common /system_files /

FROM quay.io/pocketblue/oneplus-sdm845-gnome-desktop

RUN rm -rf /var/* && mkdir /var/tmp && bootc container lint
