.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageThresholdEdgeDetectionFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;
.source "GPUImageThresholdEdgeDetectionFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;-><init>()V

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGrayscaleFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGrayscaleFilter;-><init>()V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageThresholdEdgeDetectionFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;-><init>()V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageThresholdEdgeDetectionFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    return-void
.end method


# virtual methods
.method public setLineSize(F)V
    .locals 2

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageThresholdEdgeDetectionFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->setLineSize(F)V

    return-void
.end method

.method public setThreshold(F)V
    .locals 2

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageThresholdEdgeDetectionFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;->setThreshold(F)V

    return-void
.end method
