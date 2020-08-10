.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageEmbossFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3ConvolutionFilter;
.source "GPUImageEmbossFilter.java"


# instance fields
.field private intensity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageEmbossFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3ConvolutionFilter;-><init>()V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageEmbossFilter;->intensity:F

    return-void
.end method


# virtual methods
.method public getIntensity()F
    .locals 1

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageEmbossFilter;->intensity:F

    return v0
.end method

.method public onInit()V
    .locals 0

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3ConvolutionFilter;->onInit()V

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3ConvolutionFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageEmbossFilter;->intensity:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageEmbossFilter;->setIntensity(F)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 4

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageEmbossFilter;->intensity:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    neg-float v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    const/4 v1, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/16 v1, 0x8

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageEmbossFilter;->setConvolutionKernel([F)V

    return-void
.end method
