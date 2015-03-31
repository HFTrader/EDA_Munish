project( camera )
find_package( OpenCV REQUIRED )
add_executable( camera camera )
target_link_libraries( camera ${OpenCV_LIBS} )