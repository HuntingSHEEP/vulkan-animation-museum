cmake_minimum_required(VERSION 3.5)

project(VK-lighting-cube)

add_executable(VK-lighting-cube src/VK-lighting_cube.cpp)

# Ustawienie projektu startowego dla Visual Studio
set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT VK-lighting-cube)


target_compile_features(VK-lighting-cube PRIVATE cxx_std_17)
target_compile_options(VK-lighting-cube PRIVATE /EHsc)
target_link_options(VK-lighting-cube PRIVATE /NODEFAULTLIB:MSVCRT)

set(EXTERNAL_LIBS_DIR "${CMAKE_SOURCE_DIR}/src/libraries")


target_include_directories(VK-lighting-cube PRIVATE ${EXTERNAL_LIBS_DIR}/stb)
target_include_directories(VK-lighting-cube PRIVATE ${EXTERNAL_LIBS_DIR}/glfw/include)
target_include_directories(VK-lighting-cube PRIVATE ${EXTERNAL_LIBS_DIR}/glm)
target_include_directories(VK-lighting-cube PRIVATE ${EXTERNAL_LIBS_DIR}/tinyObjLoader)
target_include_directories(VK-lighting-cube PRIVATE ${EXTERNAL_LIBS_DIR}/VulkanSDK/1.3.231.1/Include)

# Zostawiono tylko te biblioteki które są obecnie używane
target_link_libraries(VK-lighting-cube PRIVATE ${EXTERNAL_LIBS_DIR}/VulkanSDK/1.3.231.1/vulkan-1.lib)
target_link_libraries(VK-lighting-cube PRIVATE ${EXTERNAL_LIBS_DIR}/glfw/glfw3.lib)

# Dodajemy niestandardowe polecenie po zbudowaniu projektu, które skopiuje plik wykonywalny do folderu bin
add_custom_command(TARGET VK-lighting-cube POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy
            $<TARGET_FILE:VK-lighting-cube>
            ${CMAKE_SOURCE_DIR}/bin
    COMMENT "Kopiowanie pliku wykonywalnego do folderu bin"
)


# Ukryj projekty ALL_BUILD i ZERO_CHECK w Visual Studio
#set(CMAKE_SUPPRESS_REGENERATION true) #ta linijka usuwa ZERO_CHECK, dlatego wykomentowane
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER "CMakeTargets")

