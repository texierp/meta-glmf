FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
	file://psplash-colors.h \
	file://psplash-config.h \
	file://radeon-font.h \
	file://logo.png \
	"

SPLASH_IMAGES = "file://logo.png;outsuffix=default"

do_configure_append () {
    # If a psplash-colors.h is provided, use it
    if [ -e ${WORKDIR}/psplash-colors.h ]; then
        cp ${WORKDIR}/psplash-colors.h ${S}
        cp ${WORKDIR}/psplash-config.h ${S}
        cp ${WORKDIR}/radeon-font.h ${S}
    fi
}

