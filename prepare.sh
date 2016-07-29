cd lib

files=(\
  "libopencv_cudafilters.a" \
  "libopencv_cudafilters.so.3.1.0" \
  )
length=${#files[@]}
for ((i = 0; i < ${length}; ++i))
do
  file=${files[$i]}
  #split -b 100MB ${file} ${file}_
  cat ${file}_ > ${file}
done


cd -
