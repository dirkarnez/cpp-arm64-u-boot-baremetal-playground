set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")

set(CMAKE_C_COMPILER_ID GNU)
set(CMAKE_CXX_COMPILER_ID GNU)

set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_MAKE_PROGRAM mingw32-make)

set(CMAKE_C_COMPILER_FORCED TRUE)
set(CMAKE_CXX_COMPILER_FORCED TRUE)


# set(CMAKE_ASM_COMPILER  arm-none-eabi-gcc)
# set(CMAKE_AR arm-none-eabi-ar)
# set(CMAKE_OBJCOPY arm-none-eabi-objcopy)
# set(CMAKE_OBJDUMP arm-none-eabi-objdump)
# set(SIZE arm-none-eabi-size)

# set(CMAKE_C_LINK_EXECUTABLE ld)
# set(CMAKE_CXX_LINK_EXECUTABLE ld)