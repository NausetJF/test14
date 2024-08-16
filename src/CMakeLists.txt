
file(GLOB helloworld_SRC CONFIGURE_DEPENDS "*.h" "*.c")

add_executable(${PROJECT_NAME} ${helloworld_SRC})
target_link_libraries(${PROJECT_NAME} raylib)
# find_library(sodium NAMES sodium)
target_link_libraries(${PROJECT_NAME} sodium)
# target_link_libraries(${PROJECT_NAME} ImageMagick)