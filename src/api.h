#pragma once

#if defined _WIN32 || defined __CYGWIN__
#  define JRLTask_DLLIMPORT __declspec(dllimport)
#  define JRLTask_DLLEXPORT __declspec(dllexport)
#  define JRLTask_DLLLOCAL
#else
// On Linux, for GCC >= 4, tag symbols using GCC extension.
#  if __GNUC__ >= 4
#    define JRLTask_DLLIMPORT __attribute__((visibility("default")))
#    define JRLTask_DLLEXPORT __attribute__((visibility("default")))
#    define JRLTask_DLLLOCAL __attribute__((visibility("hidden")))
#  else
// Otherwise (GCC < 4 or another compiler is used), export everything.
#    define JRLTask_DLLIMPORT
#    define JRLTask_DLLEXPORT
#    define JRLTask_DLLLOCAL
#  endif // __GNUC__ >= 4
#endif // defined _WIN32 || defined __CYGWIN__

#ifdef JRLTask_STATIC
// If one is using the library statically, get rid of
// extra information.
#  define JRLTask_DLLAPI
#  define JRLTask_LOCAL
#else
// Depending on whether one is building or using the
// library define DLLAPI to import or export.
#  ifdef JRLTask_EXPORTS
#    define JRLTask_DLLAPI JRLTask_DLLEXPORT
#  else
#    define JRLTask_DLLAPI JRLTask_DLLIMPORT
#  endif // JRLTask_EXPORTS
#  define JRLTask_LOCAL JRLTask_DLLLOCAL
#endif // JRLTask_STATIC