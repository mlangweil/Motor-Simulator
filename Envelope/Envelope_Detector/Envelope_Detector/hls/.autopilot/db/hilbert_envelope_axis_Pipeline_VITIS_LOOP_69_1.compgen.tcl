# This script segment is generated automatically by AutoPilot

set name hilbert_envelope_axis_sitofp_64ns_32_4_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sitofp} IMPL {auto} LATENCY 3 ALLOW_PRAGMA 1
}


set name hilbert_envelope_axis_fsqrt_32ns_32ns_32_8_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsqrt} IMPL {fabric} LATENCY 7 ALLOW_PRAGMA 1
}


set name hilbert_envelope_axis_mul_32s_32s_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 308 \
    name in_stream_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TVALID { I 1 bit } in_stream_TDATA { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 309 \
    name in_stream_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TKEEP { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 310 \
    name in_stream_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TSTRB { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 311 \
    name in_stream_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TUSER { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 312 \
    name in_stream_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 313 \
    name in_stream_V_id_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TID { I 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 314 \
    name in_stream_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {in_stream} \
    metadata {  } \
    op interface \
    ports { in_stream_TREADY { O 1 bit } in_stream_TDEST { I 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_stream_V_dest_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 315 \
    name out_stream_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TREADY { I 1 bit } out_stream_TDATA { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 316 \
    name out_stream_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TKEEP { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 317 \
    name out_stream_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TSTRB { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 318 \
    name out_stream_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TUSER { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 319 \
    name out_stream_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 320 \
    name out_stream_V_id_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TID { O 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 321 \
    name out_stream_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TVALID { O 1 bit } out_stream_TDEST { O 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name x_load_298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_298 \
    op interface \
    ports { x_load_298 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name x_load_297 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_297 \
    op interface \
    ports { x_load_297 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name x_load_296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_296 \
    op interface \
    ports { x_load_296 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name x_load_295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_295 \
    op interface \
    ports { x_load_295 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name x_load_294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_294 \
    op interface \
    ports { x_load_294 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name x_load_293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_293 \
    op interface \
    ports { x_load_293 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name x_load_292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_292 \
    op interface \
    ports { x_load_292 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name x_load_291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_291 \
    op interface \
    ports { x_load_291 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name x_load_290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_290 \
    op interface \
    ports { x_load_290 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name x_load_289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_289 \
    op interface \
    ports { x_load_289 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name x_load_288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_288 \
    op interface \
    ports { x_load_288 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name x_load_287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_287 \
    op interface \
    ports { x_load_287 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name x_load_286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_286 \
    op interface \
    ports { x_load_286 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name x_load_285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_285 \
    op interface \
    ports { x_load_285 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name x_load_284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_284 \
    op interface \
    ports { x_load_284 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name x_load_283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_283 \
    op interface \
    ports { x_load_283 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name x_load_282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_282 \
    op interface \
    ports { x_load_282 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name x_load_281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_281 \
    op interface \
    ports { x_load_281 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name x_load_280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_280 \
    op interface \
    ports { x_load_280 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name x_load_279 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_279 \
    op interface \
    ports { x_load_279 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name x_load_278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_278 \
    op interface \
    ports { x_load_278 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name x_load_277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_277 \
    op interface \
    ports { x_load_277 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name x_load_276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_276 \
    op interface \
    ports { x_load_276 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name x_load_275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_275 \
    op interface \
    ports { x_load_275 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name x_load_274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_274 \
    op interface \
    ports { x_load_274 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name x_load_273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_273 \
    op interface \
    ports { x_load_273 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name x_load_272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_272 \
    op interface \
    ports { x_load_272 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name x_load_271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_271 \
    op interface \
    ports { x_load_271 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name x_load_270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_270 \
    op interface \
    ports { x_load_270 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name x_load_269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_269 \
    op interface \
    ports { x_load_269 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name x_load_268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_268 \
    op interface \
    ports { x_load_268 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name x_load_267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_267 \
    op interface \
    ports { x_load_267 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name x_load_266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_266 \
    op interface \
    ports { x_load_266 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name x_load_265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_265 \
    op interface \
    ports { x_load_265 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name x_load_264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_264 \
    op interface \
    ports { x_load_264 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name x_load_263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_263 \
    op interface \
    ports { x_load_263 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name x_load_262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_262 \
    op interface \
    ports { x_load_262 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name x_load_261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_261 \
    op interface \
    ports { x_load_261 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name x_load_260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_260 \
    op interface \
    ports { x_load_260 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name x_load_259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_259 \
    op interface \
    ports { x_load_259 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name x_load_258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_258 \
    op interface \
    ports { x_load_258 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name x_load_257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_257 \
    op interface \
    ports { x_load_257 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name x_load_256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_256 \
    op interface \
    ports { x_load_256 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name x_load_255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_255 \
    op interface \
    ports { x_load_255 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name x_load_254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_254 \
    op interface \
    ports { x_load_254 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name x_load_253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_253 \
    op interface \
    ports { x_load_253 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name x_load_252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_252 \
    op interface \
    ports { x_load_252 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name x_load_251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_251 \
    op interface \
    ports { x_load_251 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name x_load_250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_250 \
    op interface \
    ports { x_load_250 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name x_load_249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_249 \
    op interface \
    ports { x_load_249 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name x_load_248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_248 \
    op interface \
    ports { x_load_248 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name x_load_247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_247 \
    op interface \
    ports { x_load_247 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name x_load_246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_246 \
    op interface \
    ports { x_load_246 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name x_load_245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_245 \
    op interface \
    ports { x_load_245 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name x_load_244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_244 \
    op interface \
    ports { x_load_244 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name x_load_243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_243 \
    op interface \
    ports { x_load_243 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name x_load_242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_242 \
    op interface \
    ports { x_load_242 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name x_load_241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_241 \
    op interface \
    ports { x_load_241 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name x_load_240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_240 \
    op interface \
    ports { x_load_240 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name x_load_239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_239 \
    op interface \
    ports { x_load_239 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name x_load_238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_238 \
    op interface \
    ports { x_load_238 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name x_load_237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_237 \
    op interface \
    ports { x_load_237 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name x_load_236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_236 \
    op interface \
    ports { x_load_236 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name x_load_235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_235 \
    op interface \
    ports { x_load_235 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name x_load_234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_234 \
    op interface \
    ports { x_load_234 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name x_load_233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_233 \
    op interface \
    ports { x_load_233 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name x_load_232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_232 \
    op interface \
    ports { x_load_232 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name x_load_231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_231 \
    op interface \
    ports { x_load_231 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name x_load_230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_230 \
    op interface \
    ports { x_load_230 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name x_load_229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_229 \
    op interface \
    ports { x_load_229 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name x_load_228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_228 \
    op interface \
    ports { x_load_228 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name x_load_227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_227 \
    op interface \
    ports { x_load_227 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name x_load_226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_226 \
    op interface \
    ports { x_load_226 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name x_load_225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_225 \
    op interface \
    ports { x_load_225 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name x_load_224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_224 \
    op interface \
    ports { x_load_224 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name x_load_223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_223 \
    op interface \
    ports { x_load_223 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name x_load_222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_222 \
    op interface \
    ports { x_load_222 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name x_load_221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_221 \
    op interface \
    ports { x_load_221 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name x_load_220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_220 \
    op interface \
    ports { x_load_220 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name x_load_219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_219 \
    op interface \
    ports { x_load_219 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name x_load_218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_218 \
    op interface \
    ports { x_load_218 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name x_load_217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_217 \
    op interface \
    ports { x_load_217 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name x_load_216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_216 \
    op interface \
    ports { x_load_216 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name x_load_215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_215 \
    op interface \
    ports { x_load_215 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name x_load_214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_214 \
    op interface \
    ports { x_load_214 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name x_load_213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_213 \
    op interface \
    ports { x_load_213 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name x_load_212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_212 \
    op interface \
    ports { x_load_212 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name x_load_211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_211 \
    op interface \
    ports { x_load_211 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name x_load_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_210 \
    op interface \
    ports { x_load_210 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name x_load_209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_209 \
    op interface \
    ports { x_load_209 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name x_load_208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_208 \
    op interface \
    ports { x_load_208 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name x_load_207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_207 \
    op interface \
    ports { x_load_207 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name x_load_206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_206 \
    op interface \
    ports { x_load_206 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name x_load_205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_205 \
    op interface \
    ports { x_load_205 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name x_load_204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_204 \
    op interface \
    ports { x_load_204 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name x_load_203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_203 \
    op interface \
    ports { x_load_203 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name x_load_202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_202 \
    op interface \
    ports { x_load_202 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name x_load_201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_201 \
    op interface \
    ports { x_load_201 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name x_load_200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_200 \
    op interface \
    ports { x_load_200 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name x_load_199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_199 \
    op interface \
    ports { x_load_199 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name x_load_198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_198 \
    op interface \
    ports { x_load_198 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name x_load_197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_197 \
    op interface \
    ports { x_load_197 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name x_load_196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_196 \
    op interface \
    ports { x_load_196 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name x_load_195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_195 \
    op interface \
    ports { x_load_195 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name x_load_194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_194 \
    op interface \
    ports { x_load_194 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name x_load_193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_193 \
    op interface \
    ports { x_load_193 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name x_load_192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_192 \
    op interface \
    ports { x_load_192 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name x_load_191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_191 \
    op interface \
    ports { x_load_191 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name x_load_190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_190 \
    op interface \
    ports { x_load_190 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name x_load_189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_189 \
    op interface \
    ports { x_load_189 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name x_load_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_188 \
    op interface \
    ports { x_load_188 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name x_load_187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_187 \
    op interface \
    ports { x_load_187 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name x_load_186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_186 \
    op interface \
    ports { x_load_186 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name x_load_185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_185 \
    op interface \
    ports { x_load_185 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name x_load_184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_184 \
    op interface \
    ports { x_load_184 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name x_load_183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_183 \
    op interface \
    ports { x_load_183 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name x_load_182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_182 \
    op interface \
    ports { x_load_182 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name x_load_181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_181 \
    op interface \
    ports { x_load_181 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name x_load_180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_180 \
    op interface \
    ports { x_load_180 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name x_load_179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_179 \
    op interface \
    ports { x_load_179 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name x_load_178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_178 \
    op interface \
    ports { x_load_178 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name x_load_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_177 \
    op interface \
    ports { x_load_177 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name x_load_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_176 \
    op interface \
    ports { x_load_176 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name x_load_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_175 \
    op interface \
    ports { x_load_175 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name x_load_174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_174 \
    op interface \
    ports { x_load_174 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name x_load_173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_173 \
    op interface \
    ports { x_load_173 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name x_load_172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_172 \
    op interface \
    ports { x_load_172 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name x_load_171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_171 \
    op interface \
    ports { x_load_171 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name x_load_170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_170 \
    op interface \
    ports { x_load_170 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name x_load_169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_169 \
    op interface \
    ports { x_load_169 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name x_load_168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_168 \
    op interface \
    ports { x_load_168 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name x_load_167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_167 \
    op interface \
    ports { x_load_167 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name x_load_166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_166 \
    op interface \
    ports { x_load_166 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name x_load_165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_165 \
    op interface \
    ports { x_load_165 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name x_load_164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_164 \
    op interface \
    ports { x_load_164 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name x_load_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_163 \
    op interface \
    ports { x_load_163 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name x_load_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_162 \
    op interface \
    ports { x_load_162 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name x_load_161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_161 \
    op interface \
    ports { x_load_161 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name x_load_160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_160 \
    op interface \
    ports { x_load_160 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name x_load_159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_159 \
    op interface \
    ports { x_load_159 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name x_load_158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_158 \
    op interface \
    ports { x_load_158 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name x_load_157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_157 \
    op interface \
    ports { x_load_157 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name x_load_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_156 \
    op interface \
    ports { x_load_156 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name x_load_155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_155 \
    op interface \
    ports { x_load_155 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name x_load_154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_154 \
    op interface \
    ports { x_load_154 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name x_load_153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_153 \
    op interface \
    ports { x_load_153 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name x_load_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_152 \
    op interface \
    ports { x_load_152 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name x_load_151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_151 \
    op interface \
    ports { x_load_151 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name x_load_150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_150 \
    op interface \
    ports { x_load_150 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name x_load_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_149 \
    op interface \
    ports { x_load_149 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name x_load_148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_148 \
    op interface \
    ports { x_load_148 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name x_load_147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_147 \
    op interface \
    ports { x_load_147 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name x_load_146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_146 \
    op interface \
    ports { x_load_146 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name x_load_145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_145 \
    op interface \
    ports { x_load_145 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name x_load_144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_144 \
    op interface \
    ports { x_load_144 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name x_load_143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_143 \
    op interface \
    ports { x_load_143 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name x_load_142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_142 \
    op interface \
    ports { x_load_142 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name x_load_141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_141 \
    op interface \
    ports { x_load_141 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name x_load_140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_140 \
    op interface \
    ports { x_load_140 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name x_load_139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_139 \
    op interface \
    ports { x_load_139 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name x_load_138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_138 \
    op interface \
    ports { x_load_138 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name x_load_137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_137 \
    op interface \
    ports { x_load_137 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name x_load_136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_136 \
    op interface \
    ports { x_load_136 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name x_load_135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_135 \
    op interface \
    ports { x_load_135 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name x_load_134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_134 \
    op interface \
    ports { x_load_134 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name x_load_133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_133 \
    op interface \
    ports { x_load_133 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name x_load_132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_132 \
    op interface \
    ports { x_load_132 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name x_load_131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_131 \
    op interface \
    ports { x_load_131 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name x_load_130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_130 \
    op interface \
    ports { x_load_130 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name x_load_129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_129 \
    op interface \
    ports { x_load_129 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name x_load_128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_128 \
    op interface \
    ports { x_load_128 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name x_load_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_127 \
    op interface \
    ports { x_load_127 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name x_load_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_126 \
    op interface \
    ports { x_load_126 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name x_load_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_125 \
    op interface \
    ports { x_load_125 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name x_load_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_124 \
    op interface \
    ports { x_load_124 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name x_load_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_123 \
    op interface \
    ports { x_load_123 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name x_load_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_122 \
    op interface \
    ports { x_load_122 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name x_load_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_121 \
    op interface \
    ports { x_load_121 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name x_load_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_120 \
    op interface \
    ports { x_load_120 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name x_load_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_119 \
    op interface \
    ports { x_load_119 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name x_load_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_118 \
    op interface \
    ports { x_load_118 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name x_load_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_117 \
    op interface \
    ports { x_load_117 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name x_load_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_116 \
    op interface \
    ports { x_load_116 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name x_load_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_115 \
    op interface \
    ports { x_load_115 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name x_load_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_114 \
    op interface \
    ports { x_load_114 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name x_load_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_113 \
    op interface \
    ports { x_load_113 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name x_load_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_112 \
    op interface \
    ports { x_load_112 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name x_load_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_111 \
    op interface \
    ports { x_load_111 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name x_load_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_110 \
    op interface \
    ports { x_load_110 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name x_load_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_109 \
    op interface \
    ports { x_load_109 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name x_load_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_108 \
    op interface \
    ports { x_load_108 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name x_load_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_107 \
    op interface \
    ports { x_load_107 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name x_load_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_106 \
    op interface \
    ports { x_load_106 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name x_load_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_105 \
    op interface \
    ports { x_load_105 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name x_load_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_104 \
    op interface \
    ports { x_load_104 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name x_load_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_103 \
    op interface \
    ports { x_load_103 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name x_load_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_102 \
    op interface \
    ports { x_load_102 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name x_load_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_101 \
    op interface \
    ports { x_load_101 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name x_load_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_100 \
    op interface \
    ports { x_load_100 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name x_load_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_99 \
    op interface \
    ports { x_load_99 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name x_load_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_98 \
    op interface \
    ports { x_load_98 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name x_load_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_97 \
    op interface \
    ports { x_load_97 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name x_load_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_96 \
    op interface \
    ports { x_load_96 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name x_load_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_95 \
    op interface \
    ports { x_load_95 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name x_load_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_94 \
    op interface \
    ports { x_load_94 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name x_load_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_93 \
    op interface \
    ports { x_load_93 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name x_load_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_92 \
    op interface \
    ports { x_load_92 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name x_load_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_91 \
    op interface \
    ports { x_load_91 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name x_load_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_90 \
    op interface \
    ports { x_load_90 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name x_load_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_89 \
    op interface \
    ports { x_load_89 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name x_load_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_88 \
    op interface \
    ports { x_load_88 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name x_load_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_87 \
    op interface \
    ports { x_load_87 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name x_load_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_86 \
    op interface \
    ports { x_load_86 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name x_load_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_85 \
    op interface \
    ports { x_load_85 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name x_load_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_84 \
    op interface \
    ports { x_load_84 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name x_load_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_83 \
    op interface \
    ports { x_load_83 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name x_load_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_82 \
    op interface \
    ports { x_load_82 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name x_load_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_81 \
    op interface \
    ports { x_load_81 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name x_load_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_80 \
    op interface \
    ports { x_load_80 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name x_load_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_79 \
    op interface \
    ports { x_load_79 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name x_load_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_78 \
    op interface \
    ports { x_load_78 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name x_load_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_77 \
    op interface \
    ports { x_load_77 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name x_load_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_76 \
    op interface \
    ports { x_load_76 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name x_load_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_75 \
    op interface \
    ports { x_load_75 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name x_load_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_74 \
    op interface \
    ports { x_load_74 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name x_load_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_73 \
    op interface \
    ports { x_load_73 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name x_load_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_72 \
    op interface \
    ports { x_load_72 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name x_load_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_71 \
    op interface \
    ports { x_load_71 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name x_load_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_70 \
    op interface \
    ports { x_load_70 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name x_load_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_69 \
    op interface \
    ports { x_load_69 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name x_load_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_68 \
    op interface \
    ports { x_load_68 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name x_load_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_67 \
    op interface \
    ports { x_load_67 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name x_load_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_66 \
    op interface \
    ports { x_load_66 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name x_load_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_65 \
    op interface \
    ports { x_load_65 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name x_load_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_64 \
    op interface \
    ports { x_load_64 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name x_load_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_63 \
    op interface \
    ports { x_load_63 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name x_load_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_62 \
    op interface \
    ports { x_load_62 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name x_load_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_61 \
    op interface \
    ports { x_load_61 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name x_load_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_60 \
    op interface \
    ports { x_load_60 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name x_load_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_59 \
    op interface \
    ports { x_load_59 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name x_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_58 \
    op interface \
    ports { x_load_58 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name x_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_57 \
    op interface \
    ports { x_load_57 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name x_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_56 \
    op interface \
    ports { x_load_56 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name x_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_55 \
    op interface \
    ports { x_load_55 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name x_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_54 \
    op interface \
    ports { x_load_54 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name x_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_53 \
    op interface \
    ports { x_load_53 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name x_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_52 \
    op interface \
    ports { x_load_52 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name x_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_51 \
    op interface \
    ports { x_load_51 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name x_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_50 \
    op interface \
    ports { x_load_50 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name x_load_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_49 \
    op interface \
    ports { x_load_49 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name x_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_48 \
    op interface \
    ports { x_load_48 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name x_load_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_47 \
    op interface \
    ports { x_load_47 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name x_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_46 \
    op interface \
    ports { x_load_46 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name x_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_45 \
    op interface \
    ports { x_load_45 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name x_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_44 \
    op interface \
    ports { x_load_44 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name x_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_43 \
    op interface \
    ports { x_load_43 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name x_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_42 \
    op interface \
    ports { x_load_42 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name x_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_41 \
    op interface \
    ports { x_load_41 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name x_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_40 \
    op interface \
    ports { x_load_40 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name x_load_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_39 \
    op interface \
    ports { x_load_39 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name x_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_38 \
    op interface \
    ports { x_load_38 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name x_load_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_37 \
    op interface \
    ports { x_load_37 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name x_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_36 \
    op interface \
    ports { x_load_36 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name x_load_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_35 \
    op interface \
    ports { x_load_35 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name x_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_34 \
    op interface \
    ports { x_load_34 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name x_load_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_33 \
    op interface \
    ports { x_load_33 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name x_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_32 \
    op interface \
    ports { x_load_32 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name x_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_31 \
    op interface \
    ports { x_load_31 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name x_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_30 \
    op interface \
    ports { x_load_30 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name x_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_29 \
    op interface \
    ports { x_load_29 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name x_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_28 \
    op interface \
    ports { x_load_28 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name x_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_27 \
    op interface \
    ports { x_load_27 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name x_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_26 \
    op interface \
    ports { x_load_26 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name x_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_25 \
    op interface \
    ports { x_load_25 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name x_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_24 \
    op interface \
    ports { x_load_24 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name x_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_23 \
    op interface \
    ports { x_load_23 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name x_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_22 \
    op interface \
    ports { x_load_22 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name x_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_21 \
    op interface \
    ports { x_load_21 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name x_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_20 \
    op interface \
    ports { x_load_20 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name x_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_19 \
    op interface \
    ports { x_load_19 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name x_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_18 \
    op interface \
    ports { x_load_18 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name x_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_17 \
    op interface \
    ports { x_load_17 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name x_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_16 \
    op interface \
    ports { x_load_16 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name x_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_15 \
    op interface \
    ports { x_load_15 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name x_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_14 \
    op interface \
    ports { x_load_14 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name x_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_13 \
    op interface \
    ports { x_load_13 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name x_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_12 \
    op interface \
    ports { x_load_12 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name x_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_11 \
    op interface \
    ports { x_load_11 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name x_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_10 \
    op interface \
    ports { x_load_10 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name x_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_9 \
    op interface \
    ports { x_load_9 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name x_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_8 \
    op interface \
    ports { x_load_8 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name x_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_7 \
    op interface \
    ports { x_load_7 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name x_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_6 \
    op interface \
    ports { x_load_6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name x_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_5 \
    op interface \
    ports { x_load_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name x_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_4 \
    op interface \
    ports { x_load_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name x_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_3 \
    op interface \
    ports { x_load_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name x_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_2 \
    op interface \
    ports { x_load_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name x_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load_1 \
    op interface \
    ports { x_load_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name x_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_load \
    op interface \
    ports { x_load { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName hilbert_envelope_axis_flow_control_loop_pipe_sequential_init_U
set CompName hilbert_envelope_axis_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix hilbert_envelope_axis_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


