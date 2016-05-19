EXTRA_DIST = \
	16x16/distributor-logo-solus.png \
	16x16/start-here-solus.png \
	24x24/distributor-logo-solus.png \
	24x24/start-here-solus.png \
	32x32/distributor-logo-solus.png \
	32x32/start-here-solus.png \
	48x48/distributor-logo-solus.png \
	48x48/start-here-solus.png \
	64x64/distributor-logo-solus.png \
	64x64/start-here-solus.png \
	96x96/distributor-logo-solus.png \
	96x96/start-here-solus.png \
	256x256/distributor-logo-solus.png \
	256x256/start-here-solus.png \
	512x512/distributor-logo-solus.png \
	512x512/start-here-solus.png \
	scalable/distributor-logo-solus.svg \
	scalable/start-here-solus.svg

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/usr/share/icons/hicolor; \
	for iSize in 16 24 32 48 64 96 256 512; do \
		install -D -m 00644 "$(top_srcdir)/icons/$${iSize}x$${iSize}/start-here-solus.png" "$(DESTDIR)/usr/share/icons/hicolor/$${iSize}x$${iSize}/places/start-here-solus.png" && \
		install -D -m 00644 "$(top_srcdir)/icons/$${iSize}x$${iSize}/distributor-logo-solus.png" "$(DESTDIR)/usr/share/icons/hicolor/$${iSize}x$${iSize}/places/distributor-logo-solus.png"; \
	done; \
	install -D -m 00644 "$(top_srcdir)/icons/scalable/start-here-solus.svg" "$(DESTDIR)/usr/share/icons/hicolor/scalable/places/start-here-solus.svg" && \
	install -D -m 00644 "$(top_srcdir)/icons/scalable/distributor-logo-solus.svg" "$(DESTDIR)/usr/share/icons/hicolor/scalable/places/distributor-logo-solus.svg";

uninstall-hook:
	for iSize in 16 24 32 48 64 96 256 512; do \
		rm -f "$(DESTDIR)/usr/share/icons/hicolor/$${iSize}x$${iSize}/places/start-here-solus.png" && \
		rm -f "$(DESTDIR)/usr/share/icons/hicolor/$${iSize}x$${iSize}/places/distributor-logo-solus.png"; \
	done; \
	rm -f "$(DESTDIR)/usr/share/icons/hicolor/scalable/places/start-here-solus.svg" && \
	rm -f "$(DESTDIR)/usr/share/icons/hicolor/scalable/places/distributor-logo-solus.svg";
