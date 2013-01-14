;;  Copyright (C) 2013
;;      "Mu Lei" known as "NalaGinrut" <NalaGinrut@gmail.com>
;;  Screaming-fist is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.

;;  Screaming-fist is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU General Public License for more details.

;;  You should have received a copy of the GNU General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.

(define-module (sf md)
  #:use-module (srfi srfi-9))

(export-module-all! (current-module))

;; machine-description instruction
(define-record-type md-insn
  (make-md-insn )
  md-insn?
  (name md-insn-name)
  (pattern md-insn-pattern)
  (pred md-insn-pred) ; the extra pred to recognite the pattern
  (proc md-insn-proc) ; the action while pred is true
  (options md-insn-options))


