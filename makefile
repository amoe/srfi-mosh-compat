prefix = /usr/local
srfi_dir = $(prefix)/share/scheme/r6rs/srfi

objects = %3a19/time/compat.mosh.sls \
  private/platform-features.mosh.sls \
  private/include/compat.mosh.sls \
  %3a6/basic-string-ports/compat.mosh.sls \
  %3a48/intermediate-format-strings/compat.mosh.sls \
  %3a78/lightweight-testing/compat.mosh.sls \
  %3a98/os-environment-variables.mosh.sls \
  %3a38/with-shared-structure.mosh.sls

install:
	for file in $(objects); do cp -v "$$file" $(srfi_dir)/$$file; done

