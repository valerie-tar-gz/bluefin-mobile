FROM scratch AS ctx

COPY --from=ghcr.io/projectbluefin/common:latest /system_files /files
COPY cosign.pub /files/etc/pki/containers/zirconium.pub

FROM quay.io/pocketblue/oneplus-sdm845-gnome-desktop:43

RUN rm -rf /var/* && mkdir /var/tmp && bootc container lint

