.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;
.source "GPUImageSmoothToonFilter.java"


# instance fields
.field private blurFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

.field private toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;-><init>()V

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->onInitialized()V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->setBlurSize(F)V

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->setThreshold(F)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->setQuantizationLevels(F)V

    return-void
.end method

.method public setBlurSize(F)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;->setBlurSize(F)V

    return-void
.end method

.method public setQuantizationLevels(F)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setQuantizationLevels(F)V

    return-void
.end method

.method public setTexelHeight(F)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setTexelHeight(F)V

    return-void
.end method

.method public setTexelWidth(F)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setTexelWidth(F)V

    return-void
.end method

.method public setThreshold(F)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setThreshold(F)V

    return-void
.end method
