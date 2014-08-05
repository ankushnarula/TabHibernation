PATHS = "Chrome" "TabHibernation.safariextension"
FILES = "underscore.js" "hibernationPage/index.html" "icon16.png"

all:
	@mkdir -vp Chrome/lib/hibernationPage
	@mkdir -vp TabHibernation.safariextension/lib/hibernationPage

	@$(foreach path, $(PATHS), \
		$(foreach file, $(FILES), \
			ln -vf lib/$(file) $(path)/lib/$(file); \
		) \
	)

clean:
	@rm -vrf Chrome/lib/
	@rm -vrf TabHibernation.safariextension/lib/

.PHONY: all clean
