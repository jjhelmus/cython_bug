cdef extern from "c_funcs.h":
    ctypedef unsigned short unscaled
    float scale_a(unscaled v)
    float scale_b(unscaled v)
