/root/bin/ffmpeg   \
  -hwaccel  cuvid -c:v h264_cuvid  -i /root/tests/video/test.mp4 \
  -acodec  libfdk_aac  -ar 48000 -profile:a  aac_low  -b:a 128K     \
  -c:v h264_nvenc  -strict_gop 1 -g 333 -b:v 400K -muxrate 400K \
   -use_localtime 1 -hls_segment_filename /root/tests/hls/hi-%s.ts -hls_start_number_source epoch  -hls_list_size 1 -hls_time 10 /root/tests/hls/test.m3u8
