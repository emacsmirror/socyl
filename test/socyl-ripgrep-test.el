;;; socyl-ripgrep-test.el --- Tests for Socyl ripgrep backend

;; Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
;; 02110-1301, USA.

;;; Commentary:

;;; Code:


(ert-deftest test-socyl-ripgrep-backend ()
  :tags '(backend ripgrep)
  (with-test-sandbox
   ;; (message "All backends: %s" socyl-backends)
   (let ((socyl-backend 'ripgrep))
     (should (equal 'ripgrep (car (socyl--get-backend))))
     (message "Search : %s" (socyl-backend-search))
     (should (equal 'socyl--ripgrep-regexp (socyl-backend-search))))))


(provide 'socyl-ripgrep-test)
;;; socyl-ripgrep-test.el ends here
