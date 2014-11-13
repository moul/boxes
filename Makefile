VEEWEE := cd veewee && VEEWEE_DIR=.. bundle exec veewee
BOXES := $(addsuffix .box, $(subst definitions/, , $(wildcard definitions/*)))

list:
	$(VEEWEE) vbox list

install:
	git clone https://github.com/jedi4ever/veewee.git
	cd veewee && bundle install

all: $(BOXES)

$(BOXES):
	@for file in template/* ; do ln -s $(PWD)/$$file definitions/$(basename $@) 2> /dev/null || true; done
	$(VEEWEE) vbox build $(basename $@) --force
	$(VEEWEE) vbox export $(basename $@)
	mv veewee/$@ .

# phonies

.PHONY: list
.PHONY: install
.PHONY: all
