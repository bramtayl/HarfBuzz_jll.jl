# Autogenerated wrapper script for HarfBuzz_jll for x86_64-unknown-freebsd11.1
export libharfbuzz, libharfbuzz_gobject, libharfbuzz_icu, libharfbuzz_subset

using Glib_jll
using FreeType2_jll
using Graphite2_jll
using Libffi_jll
using Gettext_jll
using Fontconfig_jll
using Cairo_jll
using ICU_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libharfbuzz`
const libharfbuzz_splitpath = ["lib", "libharfbuzz.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_path = ""

# libharfbuzz-specific global declaration
# This will be filled out by __init__()
libharfbuzz_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz = "libharfbuzz.so.0"


# Relative path to `libharfbuzz_gobject`
const libharfbuzz_gobject_splitpath = ["lib", "libharfbuzz-gobject.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_gobject_path = ""

# libharfbuzz_gobject-specific global declaration
# This will be filled out by __init__()
libharfbuzz_gobject_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz_gobject = "libharfbuzz-gobject.so.0"


# Relative path to `libharfbuzz_icu`
const libharfbuzz_icu_splitpath = ["lib", "libharfbuzz-icu.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_icu_path = ""

# libharfbuzz_icu-specific global declaration
# This will be filled out by __init__()
libharfbuzz_icu_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz_icu = "libharfbuzz-icu.so.0"


# Relative path to `libharfbuzz_subset`
const libharfbuzz_subset_splitpath = ["lib", "libharfbuzz-subset.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_subset_path = ""

# libharfbuzz_subset-specific global declaration
# This will be filled out by __init__()
libharfbuzz_subset_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz_subset = "libharfbuzz-subset.so.0"


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    global PATH_list, LIBPATH_list
    # Initialize PATH and LIBPATH environment variable listings
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Glib_jll.PATH_list, FreeType2_jll.PATH_list, Graphite2_jll.PATH_list, Libffi_jll.PATH_list, Gettext_jll.PATH_list, Fontconfig_jll.PATH_list, Cairo_jll.PATH_list, ICU_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Glib_jll.LIBPATH_list, FreeType2_jll.LIBPATH_list, Graphite2_jll.LIBPATH_list, Libffi_jll.LIBPATH_list, Gettext_jll.LIBPATH_list, Fontconfig_jll.LIBPATH_list, Cairo_jll.LIBPATH_list, ICU_jll.LIBPATH_list,))

    global libharfbuzz_path = normpath(joinpath(artifact_dir, libharfbuzz_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_handle = dlopen(libharfbuzz_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libharfbuzz_path))

    global libharfbuzz_gobject_path = normpath(joinpath(artifact_dir, libharfbuzz_gobject_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_gobject_handle = dlopen(libharfbuzz_gobject_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libharfbuzz_gobject_path))

    global libharfbuzz_icu_path = normpath(joinpath(artifact_dir, libharfbuzz_icu_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_icu_handle = dlopen(libharfbuzz_icu_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libharfbuzz_icu_path))

    global libharfbuzz_subset_path = normpath(joinpath(artifact_dir, libharfbuzz_subset_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_subset_handle = dlopen(libharfbuzz_subset_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libharfbuzz_subset_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()
