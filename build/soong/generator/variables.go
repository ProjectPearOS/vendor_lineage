package generator

import (
	"fmt"

	"android/soong/android"
)

func pearExpandVariables(ctx android.ModuleContext, in string) string {
	pearVars := ctx.Config().VendorConfig("pearVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if pearVars.IsSet(name) {
			return pearVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
