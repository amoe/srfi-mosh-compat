#!r6rs

(library (srfi private platform-features)
  (export
    expand-time-features
    run-time-features)
  (import
   (only (rnrs) define quote)
    (only (mosh) host-os)
    (srfi private OS-id-features))

  (define (run-time-features)
    (OS-id-features
     (host-os)
     '(("linux" linux posix)
       ("bsd" linux posix)
       ("darwin" darwin posix))))

  (define (expand-time-features)
    '(mosh))
)
