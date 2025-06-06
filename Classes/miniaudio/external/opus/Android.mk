LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := opus
TARGET_FORMAT_STRING_CFLAGS := 

LOCAL_MODULE_FILENAME := libopus
ARM_FILES := \
    celt/arm/celt_neon_intr.c celt/arm/pitch_neon_intr.c
    
    
LOCAL_SRC_FILES := \
    src/opus.c \
    src/opus_decoder.c \
    src/opus_multistream.c \
    src/opus_multistream_decoder.c \
    \
    celt/bands.c \
    celt/celt.c \
    celt/celt_decoder.c \
    celt/celt_lpc.c \
    celt/cwrs.c \
    celt/entcode.c \
    celt/entdec.c \
    celt/entenc.c \
    celt/kiss_fft.c \
    celt/laplace.c \
    celt/mathops.c \
    celt/mdct.c \
    celt/modes.c \
    celt/pitch.c \
    celt/quant_bands.c \
    celt/rate.c \
    celt/vq.c \
    \
    silk/bwexpander.c \
    silk/bwexpander_32.c \
    silk/CNG.c \
    silk/code_signs.c \
    silk/dec_API.c \
    silk/decode_core.c \
    silk/decode_frame.c \
    silk/decode_indices.c \
    silk/decode_parameters.c \
    silk/decode_pitch.c \
    silk/decode_pulses.c \
    silk/decoder_set_fs.c \
    silk/gain_quant.c \
    silk/init_decoder.c \
    silk/lin2log.c \
    silk/log2lin.c \
    silk/LPC_analysis_filter.c \
    silk/LPC_fit.c \
    silk/LPC_inv_pred_gain.c \
    silk/NLSF_decode.c \
    silk/NLSF_stabilize.c \
    silk/NLSF_unpack.c \
    silk/NLSF2A.c \
    silk/pitch_est_tables.c \
    silk/PLC.c \
    silk/resampler.c \
    silk/resampler_private_AR2.c \
    silk/resampler_private_down_FIR.c \
    silk/resampler_private_IIR_FIR.c \
    silk/resampler_private_up2_HQ.c \
    silk/resampler_rom.c \
    silk/shell_coder.c \
    silk/sort.c \
    silk/stereo_decode_pred.c \
    silk/stereo_MS_to_LR.c \
    silk/sum_sqr_shift.c \
    silk/table_LSF_cos.c \
    silk/tables_gain.c \
    silk/tables_LTP.c \
    silk/tables_NLSF_CB_NB_MB.c \
    silk/tables_NLSF_CB_WB.c \
    silk/tables_other.c \
    silk/tables_pitch_lag.c \
    silk/tables_pulses_per_block.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/android \

#LOCAL_CFLAGS    := 

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(BUILD_STATIC_LIBRARY)

