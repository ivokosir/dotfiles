(package-initialize)

(cua-mode t)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1)
(setq cua-keep-region-after-copy t)

(setq-default cursor-type 'bar)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq frame-title-format "%b %*")

(setq inhibit-default-init t)
(setq inhibit-startup-buffer-menu t)
(setq inhibit-startup-echo-area-message "ivo")
(setq inhibit-startup-screen t)
(setq initial-major-mode (quote fundamental-mode))
(setq initial-scratch-message "")

(setq backup-inhibited t)
(setq auto-save-default nil)

(global-linum-mode t)

(setq column-number-mode t)
(setq line-number-mode t)

(load-theme 'atom-one-dark t)
(set-background-color "#21242b")
(set-face-background 'fringe "#21242b")
(set-face-background 'linum "#21242b")
