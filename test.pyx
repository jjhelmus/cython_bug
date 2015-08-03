# distutils: sources = c_funcs.c

cimport _c_funcs_h

cpdef scale(v, scaling_type):
    cdef (float (*)(_c_funcs_h.unscaled)) * SCALE_FUNCS = [
            _c_funcs_h.scale_a, _c_funcs_h.scale_b]
    return SCALE_FUNCS[scaling_type](v)

print scale(1, 0)
print scale(1, 1)
