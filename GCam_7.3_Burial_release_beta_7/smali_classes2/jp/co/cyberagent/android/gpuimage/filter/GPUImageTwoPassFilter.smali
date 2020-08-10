.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;
.source "GPUImageTwoPassFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;-><init>(Ljava/util/List;)V

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {v0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    new-instance p1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {p1, p3, p4}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    return-void
.end method
