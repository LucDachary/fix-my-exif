#
# Declares formatting procedures to use in tests.
#

# More logs if DEBUG is set.
if { [info exists ::env(DEBUG)] } {
	puts "Toggling DEBUG logs on…"
	exp_internal -f /tmp/exp_runtime.log 0
	log_user 1
} else {
	log_user 0
}

# Semantic
proc emphasis {text} { return "\033\[3m$text\033\[m" }

# The following procedures cannot be nested properly because each one adds the \033[m reset code.
# One way to improve this could be to accept a context as argument, that would be restored after
# the reset code.

# Log levels
# TODO improve these methods to accept a indeterminate number of arguments.
proc dbg {text {prefix ""}} { return "$prefix\033\[38;5;7m$text\033\[m" }
proc info {text {prefix ""}} { return "$prefix\033\[38;5;12m$text\033\[m" }
proc warning {args} {
	return "\033\[38;5;11m[join $args ""]\033\[m"
}
proc error {text {prefix ""}} { return "$prefix\033\[38;5;9m$text\033\[m" }
proc success {text {prefix ""}} { return "$prefix\033\[38;5;15m\033\[48;5;22m$text\033\[m" }

# Formatting
proc bold {text} { return "\033\[1m$text\033\[m" }
proc underline {text} { return "\033\[4m$text\033\[m" }

set ansi_warning "\033\[38;5;11m"
set ansi_underline "\033\[4m"
set ansi_reset "\[m"

# Tests hierarchy
proc title {text} {
	puts [ bold $text ]
	puts [ exec -keepnewline -- date --rfc-email ]
} 

proc iam {text} {
	puts $text
}
