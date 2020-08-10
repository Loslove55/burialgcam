.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassFilter;
.source "GPUImageTwoPassTextureSamplingFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHorizontalTexelOffsetRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getVerticalTexelOffsetRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected initTexelOffsets()V
    .locals 7

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;->getHorizontalTexelOffsetRatio()F

    move-result v0

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->getProgram()I

    move-result v2

    const-string v3, "texelWidthOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->getProgram()I

    move-result v4

    const-string v5, "texelHeightOffset"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;->getOutputWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    invoke-virtual {v1, v2, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->setFloat(IF)V

    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->setFloat(IF)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;->getVerticalTexelOffsetRatio()F

    move-result v1

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;->getFilters()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->getProgram()I

    move-result v4

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->getProgram()I

    move-result v4

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->setFloat(IF)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;->getOutputHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {v2, v4, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->setFloat(IF)V

    return-void
.end method

.method public onInit()V
    .locals 0

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;->initTexelOffsets()V

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassFilter;->onOutputSizeChanged(II)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;->initTexelOffsets()V

    return-void
.end method
