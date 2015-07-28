if (DEFINED CFG_USE_CITYGML)
    set(CITYGML_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/citygml/libcitygml-master")
    set(CITYGML_INCLUDE_DIR "${CMAKE_BINARY_DIR}/share/citygml/include;${CURL_SOURCE_DIR}/sources/include")
    add_definitions(-DLIBCITYGML_STATIC)
endif()

if (DEFINED CFG_USE_CURL)
    set(CURL_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/curl/curl-7.39.0")
    set(CURL_INCLUDE_DIR "${CMAKE_BINARY_DIR}/share/curl;${CMAKE_BINARY_DIR}/share/curl/include;${CURL_SOURCE_DIR}/include")
    set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${CURL_INCLUDE_DIR})
    add_definitions(-DCURL_STATICLIB)
endif()

if (DEFINED CFG_USE_FLTK)
    set(FLTK_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/fltk/fltk-1.3.3")
    set(FLTK_INCLUDE_DIR "${FLTK_SOURCE_DIR}")
    set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${FLTK_INCLUDE_DIR})
endif()

if (DEFINED CFG_USE_FREETYPE)
    set(FREETYPE_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/freetype/freetype-2.5.3")
    set(FREETYPE_INCLUDE_DIR "${FREETYPE_SOURCE_DIR}/include")
    set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${FREETYPE_INCLUDE_DIR})
endif()

if (DEFINED CFG_USE_GDAL)
    set(GDAL_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/gdal/gdal-1.11.1")
    set(GDAL_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/share/gdal;${GDAL_SOURCE_DIR}/port;${GDAL_SOURCE_DIR}/gcore;${GDAL_SOURCE_DIR}/ogr;${GDAL_SOURCE_DIR}/ogr/ogrsf_frmts;${GDAL_SOURCE_DIR}/alg;${GDAL_SOURCE_DIR}/frmts/vrt")
    add_definitions(-DCPL_DISABLE_DLL)
endif()

if (DEFINED CFG_USE_GETOPT)
    set(GETOPT_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/share/getopt")
    add_definitions(-DSTATIC_GETOPT)
endif()

if (DEFINED CFG_USE_GFX)
    set(GFX_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/gfx/libgfx-1.1.0")
    set(GFX_INCLUDE_DIR "${GFX_SOURCE_DIR}/include;${GFX_SOURCE_DIR}/share/gfx")
endif()

if (DEFINED CFG_USE_GIFLIB)
    set(GIFLIB_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/giflib/giflib-5.1.0")
    set(GIFLIB_INCLUDE_DIR "${GIFLIB_SOURCE_DIR}/lib")
    set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${GIFLIB_INCLUDE_DIR})
endif()

if (DEFINED CFG_USE_GLEW)
    set(GLEW_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/glew/glew-1.12.0")
    set(GLEW_INCLUDE_DIR "${GLEW_SOURCE_DIR}/include")
    add_definitions(-DGLEW_STATIC)
endif()

if (DEFINED CFG_USE_JPEG)
    set(JPEG_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/jpeg/jpeg-6b")
    set(JPEG_INCLUDE_DIR "${CMAKE_BINARY_DIR}/share/jpeg;${JPEG_SOURCE_DIR}")
    set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${JPEG_INCLUDE_DIR})
endif()

if (DEFINED CFG_USE_MESH)
    set(MESH_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/mesh/Mesh-1.13")
    set(MESH_INCLUDE_DIR "${MESH_SOURCE_DIR};${MESH_SOURCE_DIR}/lib3d/include")
endif()

if (DEFINED CFG_USE_MIXKIT)
    set(MIXKIT_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/mixkit/mixkit-1.1")
    set(MIXKIT_INCLUDE_DIR "${MIXKIT_SOURCE_DIR}/src")
endif()

if (DEFINED CFG_USE_OPENSCENEGRAPH)
    set(OPENSCENEGRAPH_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/openscenegraph/OpenSceneGraph-3.2.1")
    set(OPENSCENEGRAPH_INCLUDE_DIR "${CMAKE_BINARY_DIR}/share/openscenegraph/include;${OPENSCENEGRAPH_SOURCE_DIR}/include")
    set(OSG_INCLUDE_DIR ${OPENSCENEGRAPH_INCLUDE_DIR})
    add_definitions(-DOSG_LIBRARY_STATIC)
endif()

if (DEFINED CFG_USE_OSGEARTH)
    set(OSGEARTH_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/osgearth/gwaldron-osgearth-350f1a0")
    set(OSGEARTH_INCLUDE_DIR "${CMAKE_BINARY_DIR}/share/osgearth;${OSGEARTH_SOURCE_DIR}/src")
    add_definitions(-DOSGEARTH_LIBRARY_STATIC -DOSGEARTHANNO_LIBRARY_STATIC -DOSGEARTHFEATURES_LIBRARY_STATIC -DOSGEARTHUTIL_LIBRARY_STATIC -DOSGEARTHSYMBOLOGY_LIBRARY_STATIC)
endif()

if (DEFINED CFG_USE_OSGVDPM)
    set(OSGVDPM_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/osgvdpm/src")
    set(OSGVDPM_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/share/osgvdpm/include")
endif()

if (DEFINED CFG_USE_PNG)
    set(PNG_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/png/lpng1614")
    set(PNG_INCLUDE_DIR "${CMAKE_BINARY_DIR}/share/png;${PNG_SOURCE_DIR}")
    set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${PNG_INCLUDE_DIR})
endif()

if (DEFINED CFG_USE_PROJ)
    set(PROJ_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/proj/proj-4.8.0")
    set(PROJ_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/share/proj;${PROJ_SOURCE_DIR}/src")
endif()

if (DEFINED CFG_USE_TIFF)
    set(TIFF_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/tiff/tiff-4.0.3")
    set(TIFF_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/share/tiff;${TIFF_SOURCE_DIR}/libtiff")
    set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${TIFF_INCLUDE_DIR})
endif()

if (DEFINED CFG_USE_VDPM)
    set(VDPM_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/vdpm/src")
    set(VDPM_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/share/vdpm/include")
endif()

if (DEFINED CFG_USE_VIRTUALPLANETBUILDER)
    set(VIRTUALPLANETBUILDER_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/virtualplanetbuilder/VirtualPlanetBuilder-master")
    set(VIRTUALPLANETBUILDER_INCLUDE_DIR "${CMAKE_BINARY_DIR}/share/virtualplanetbuilder/include;${VIRTUALPLANETBUILDER_SOURCE_DIR}/include")
    add_definitions(-DVPB_LIBRARY_STATIC)
endif()

if (DEFINED CFG_USE_XERCESC)
    set(XERCESC_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/xercesc/xerces-c-3.1.2")
    set(XERCESC_INCLUDE_DIR "${CMAKE_BINARY_DIR}/share/xercesc/src;${XERCESC_SOURCE_DIR}/src")
    add_definitions(-DXERCES_STATIC_LIBRARY)
endif()

if (DEFINED CFG_USE_ZLIB)
    set(ZLIB_SOURCE_DIR "${CMAKE_SOURCE_DIR}/share/zlib/zlib-1.2.8")
    set(ZLIB_INCLUDE_DIR "${CMAKE_BINARY_DIR}/share/zlib;${ZLIB_SOURCE_DIR}")
    set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${ZLIB_INCLUDE_DIR})
endif()