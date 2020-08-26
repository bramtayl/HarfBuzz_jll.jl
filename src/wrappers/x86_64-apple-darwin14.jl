# Autogenerated wrapper script for HarfBuzz_jll for x86_64-apple-darwin14
export libharfbuzz, libharfbuzz_gobject, libharfbuzz_subset

using Glib_jll
using FreeType2_jll
using Graphite2_jll
using Libffi_jll
using Gettext_jll
using Fontconfig_jll
using Cairo_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"
LIBPATH_default = "~/lib:/usr/local/lib:/lib:/usr/lib"

# Relative path to `libharfbuzz`
const libharfbuzz_splitpath = ["lib", "libharfbuzz.0.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_path = ""

# libharfbuzz-specific global declaration
# This will be filled out by __init__()
libharfbuzz_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz = "@rpath/libharfbuzz.0.dylib"


# Relative path to `libharfbuzz_gobject`
const libharfbuzz_gobject_splitpath = ["lib", "libharfbuzz-gobject.0.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_gobject_path = ""

# libharfbuzz_gobject-specific global declaration
# This will be filled out by __init__()
libharfbuzz_gobject_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz_gobject = "@rpath/libharfbuzz-gobject.0.dylib"


# Relative path to `libharfbuzz_subset`
const libharfbuzz_subset_splitpath = ["lib", "libharfbuzz-subset.0.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_subset_path = ""

# libharfbuzz_subset-specific global declaration
# This will be filled out by __init__()
libharfbuzz_subset_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz_subset = "@rpath/libharfbuzz-subset.0.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"HarfBuzz")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Glib_jll.PATH_list, FreeType2_jll.PATH_list, Graphite2_jll.PATH_list, Libffi_jll.PATH_list, Gettext_jll.PATH_list, Fontconfig_jll.PATH_list, Cairo_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Glib_jll.LIBPATH_list, FreeType2_jll.LIBPATH_list, Graphite2_jll.LIBPATH_list, Libffi_jll.LIBPATH_list, Gettext_jll.LIBPATH_list, Fontconfig_jll.LIBPATH_list, Cairo_jll.LIBPATH_list,))

    global libharfbuzz_path = normpath(joinpath(artifact_dir, libharfbuzz_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_handle = dlopen(libharfbuzz_path)
    push!(LIBPATH_list, dirname(libharfbuzz_path))

    global libharfbuzz_gobject_path = normpath(joinpath(artifact_dir, libharfbuzz_gobject_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_gobject_handle = dlopen(libharfbuzz_gobject_path)
    push!(LIBPATH_list, dirname(libharfbuzz_gobject_path))

    global libharfbuzz_subset_path = normpath(joinpath(artifact_dir, libharfbuzz_subset_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_subset_handle = dlopen(libharfbuzz_subset_path)
    push!(LIBPATH_list, dirname(libharfbuzz_subset_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

