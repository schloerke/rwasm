PKG_CPPFLAGS = -I../src -DSTRICT_R_HEADERS -I$(WASM)/include
PKG_LIBS = -L$(WASM)/lib -lssl -lcrypto

CXX_STD = CXX11

ABSL_LIBS = absl/base/internal/cycleclock.o \
    absl/base/internal/low_level_alloc.o \
    absl/base/internal/raw_logging.o \
    absl/base/internal/scoped_set_env.o \
    absl/base/internal/spinlock_wait.o \
    absl/base/internal/spinlock.o \
    absl/base/internal/strerror.o \
    absl/base/internal/sysinfo.o \
    absl/base/internal/thread_identity.o \
    absl/base/internal/throw_delegate.o \
    absl/base/internal/unscaledcycleclock.o \
    absl/base/log_severity.o \
    absl/container/internal/hashtablez_sampler_force_weak_definition.o \
    absl/container/internal/hashtablez_sampler.o \
    absl/container/internal/raw_hash_set.o \
    absl/debugging/failure_signal_handler.o \
    absl/debugging/internal/address_is_readable.o \
    absl/debugging/internal/demangle.o \
    absl/debugging/internal/elf_mem_image.o \
    absl/debugging/internal/examine_stack.o \
    absl/debugging/internal/stack_consumption.o \
    absl/debugging/internal/vdso_support.o \
    absl/debugging/leak_check.o \
    absl/debugging/stacktrace.o \
    absl/debugging/symbolize.o \
    absl/numeric/int128.o \
    absl/profiling/internal/exponential_biased.o \
    absl/profiling/internal/periodic_sampler.o \
    absl/strings/ascii.o \
    absl/strings/charconv.o \
    absl/strings/cord_analysis.o \
    absl/strings/cord_buffer.o \
    absl/strings/cord.o \
    absl/strings/escaping.o \
    absl/strings/internal/charconv_bigint.o \
    absl/strings/internal/charconv_parse.o \
    absl/strings/internal/cord_internal.o \
    absl/strings/internal/cord_rep_btree_navigator.o \
    absl/strings/internal/cord_rep_btree_reader.o \
    absl/strings/internal/cord_rep_btree.o \
    absl/strings/internal/cord_rep_consume.o \
    absl/strings/internal/cord_rep_crc.o \
    absl/strings/internal/cord_rep_ring.o \
    absl/strings/internal/cordz_functions.o \
    absl/strings/internal/cordz_handle.o \
    absl/strings/internal/cordz_info.o \
    absl/strings/internal/cordz_sample_token.o \
    absl/strings/internal/escaping.o \
    absl/strings/internal/memutil.o \
    absl/strings/internal/ostringstream.o \
    absl/strings/internal/pow10_helper.o \
    absl/strings/internal/str_format/arg.o \
    absl/strings/internal/str_format/bind.o \
    absl/strings/internal/str_format/extension.o \
    absl/strings/internal/str_format/float_conversion.o \
    absl/strings/internal/str_format/output.o \
    absl/strings/internal/str_format/parser.o \
    absl/strings/internal/utf8.o \
    absl/strings/match.o \
    absl/strings/numbers.o \
    absl/strings/str_cat.o \
    absl/strings/str_replace.o \
    absl/strings/str_split.o \
    absl/strings/string_view.o \
    absl/strings/substitute.o \
    absl/synchronization/barrier.o \
    absl/synchronization/blocking_counter.o \
    absl/synchronization/internal/create_thread_identity.o \
    absl/synchronization/internal/graphcycles.o \
    absl/synchronization/internal/per_thread_sem.o \
    absl/synchronization/internal/waiter.o \
    absl/synchronization/mutex.o \
    absl/synchronization/notification.o \
    absl/time/civil_time.o \
    absl/time/clock.o \
    absl/time/duration.o \
    absl/time/format.o \
    absl/time/internal/cctz/src/civil_time_detail.o \
    absl/time/internal/cctz/src/time_zone_fixed.o \
    absl/time/internal/cctz/src/time_zone_format.o \
    absl/time/internal/cctz/src/time_zone_if.o \
    absl/time/internal/cctz/src/time_zone_impl.o \
    absl/time/internal/cctz/src/time_zone_info.o \
    absl/time/internal/cctz/src/time_zone_libc.o \
    absl/time/internal/cctz/src/time_zone_lookup.o \
    absl/time/internal/cctz/src/time_zone_posix.o \
    absl/time/internal/cctz/src/zone_info_source.o \
    absl/time/time.o \
    absl/types/bad_any_cast.o \
    absl/types/bad_optional_access.o \
    absl/types/bad_variant_access.o

OBJECTS = $(ABSL_LIBS) \
     cpp-compat.o \
     s2-accessors.o \
     s2-bounds.o \
     s2-cell.o \
     s2-cell-union.o \
     s2-constructors-formatters.o \
     s2-predicates.o \
     s2-transformers.o \
     init.o \
     RcppExports.o \
     s2-geography.o \
     s2-lnglat.o \
     s2-matrix.o \
     wk-impl.o \
     s2geography/accessors.o \
     s2geography/accessors-geog.o \
     s2geography/linear-referencing.o \
     s2geography/distance.o \
     s2geography/build.o \
     s2geography/coverings.o \
     s2geography/geography.o \
     s2geography/predicates.o \
     s2/base/stringprintf.o \
     s2/base/strtoint.o \
     s2/encoded_s2cell_id_vector.o \
     s2/encoded_s2point_vector.o \
     s2/encoded_s2shape_index.o \
     s2/encoded_string_vector.o \
     s2/id_set_lexicon.o \
     s2/mutable_s2shape_index.o \
     s2/r2rect.o \
     s2/s1angle.o \
     s2/s1chord_angle.o \
     s2/s1interval.o \
     s2/s2boolean_operation.o \
     s2/s2builder_graph.o \
     s2/s2builder.o \
     s2/s2builderutil_closed_set_normalizer.o \
     s2/s2builderutil_find_polygon_degeneracies.o \
     s2/s2builderutil_lax_polygon_layer.o \
     s2/s2builderutil_s2point_vector_layer.o \
     s2/s2builderutil_s2polygon_layer.o \
     s2/s2builderutil_s2polyline_layer.o \
     s2/s2builderutil_s2polyline_vector_layer.o \
     s2/s2builderutil_snap_functions.o \
     s2/s2builderutil_testing.o \
     s2/s2cap.o \
     s2/s2cell_id.o \
     s2/s2cell_index.o \
     s2/s2cell_union.o \
     s2/s2cell.o \
     s2/s2centroids.o \
     s2/s2closest_cell_query.o \
     s2/s2closest_edge_query.o \
     s2/s2closest_point_query.o \
     s2/s2contains_vertex_query.o \
     s2/s2convex_hull_query.o \
     s2/s2coords.o \
     s2/s2crossing_edge_query.o \
     s2/s2debug.o \
     s2/s2earth.o \
     s2/s2edge_clipping.o \
     s2/s2edge_crosser.o \
     s2/s2edge_crossings.o \
     s2/s2edge_distances.o \
     s2/s2edge_tessellator.o \
     s2/s2error.o \
     s2/s2furthest_edge_query.o \
     s2/s2latlng_rect_bounder.o \
     s2/s2latlng_rect.o \
     s2/s2latlng.o \
     s2/s2lax_loop_shape.o \
     s2/s2lax_polygon_shape.o \
     s2/s2lax_polyline_shape.o \
     s2/s2loop_measures.o \
     s2/s2loop.o \
     s2/s2max_distance_targets.o \
     s2/s2measures.o \
     s2/s2metrics.o \
     s2/s2min_distance_targets.o \
     s2/s2padded_cell.o \
     s2/s2point_compression.o \
     s2/s2point_region.o \
     s2/s2pointutil.o \
     s2/s2polygon.o \
     s2/s2polyline_alignment.o \
     s2/s2polyline_measures.o \
     s2/s2polyline_simplifier.o \
     s2/s2polyline.o \
     s2/s2predicates.o \
     s2/s2projections.o \
     s2/s2r2rect.o \
     s2/s2region_coverer.o \
     s2/s2region_intersection.o \
     s2/s2region_term_indexer.o \
     s2/s2region_union.o \
     s2/s2region.o \
     s2/s2shape_index_buffered_region.o \
     s2/s2shape_index_measures.o \
     s2/s2shape_index.o \
     s2/s2shape_measures.o \
     s2/s2shapeutil_build_polygon_boundaries.o \
     s2/s2shapeutil_coding.o \
     s2/s2shapeutil_contains_brute_force.o \
     s2/s2shapeutil_edge_iterator.o \
     s2/s2shapeutil_get_reference_point.o \
     s2/s2shapeutil_range_iterator.o \
     s2/s2shapeutil_visit_crossing_edge_pairs.o \
     s2/s2testing.o \
     s2/s2text_format.o \
     s2/s2wedge_relations.o \
     s2/strings/ostringstream.o \
     s2/strings/serialize.o \
     s2/util/bits/bit-interleave.o \
     s2/util/bits/bits.o \
     s2/util/coding/coder.o \
     s2/util/coding/varint.o \
     s2/util/math/exactfloat/exactfloat.o \
     s2/util/math/mathutil.o \
     s2/util/units/length-units.o
