.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;
.source "GPUImageMixBlendFilter.java"


# instance fields
.field private mix:F

.field private mixLocation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;-><init>(Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;-><init>(Ljava/lang/String;)V

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;->mix:F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;->getProgram()I

    move-result v0

    const-string v1, "mixturePercent"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;->mixLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;->mix:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;->setMix(F)V

    return-void
.end method

.method public setMix(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;->mix:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;->mixLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageMixBlendFilter;->setFloat(IF)V

    return-void
.end method
