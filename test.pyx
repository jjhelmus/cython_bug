# distutils: sources = c_funcs.c

cimport _c_funcs_h

cpdef scale(v, scaling_type):
    #cdef (float (*)(_c_funcs_h.unscaled)) * SCALE_FUNCS = [
    #        _c_funcs_h.scale_a, _c_funcs_h.scale_b]
    cdef (float (*)(_c_funcs_h.unscaled)) SCALE_FUNCS[2]
    SCALE_FUNCS[0] = _c_funcs_h.scale_a
    SCALE_FUNCS[1] = _c_funcs_h.scale_b

    return SCALE_FUNCS[scaling_type](v)

print scale(1, 0)
print scale(1, 1)
