.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;
.source "GPUImageBoxBlurFilter.java"


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\n\nuniform sampler2D inputImageTexture;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\nlowp vec4 fragmentColor = texture2D(inputImageTexture, centerTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepRightTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsRightTextureCoordinate) * 0.2;\n\ngl_FragColor = fragmentColor;\n}\n"

.field public static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 firstOffset = vec2(1.5 * texelWidthOffset, 1.5 * texelHeightOffset);\nvec2 secondOffset = vec2(3.5 * texelWidthOffset, 3.5 * texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepLeftTextureCoordinate = inputTextureCoordinate - firstOffset;\ntwoStepsLeftTextureCoordinate = inputTextureCoordinate - secondOffset;\noneStepRightTextureCoordinate = inputTextureCoordinate + firstOffset;\ntwoStepsRightTextureCoordinate = inputTextureCoordinate + secondOffset;\n}\n"


# instance fields
.field private blurSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const-string v0, "precision highp float;\n\nuniform sampler2D inputImageTexture;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\nlowp vec4 fragmentColor = texture2D(inputImageTexture, centerTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepRightTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsRightTextureCoordinate) * 0.2;\n\ngl_FragColor = fragmentColor;\n}\n"

    const-string v1, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 firstOffset = vec2(1.5 * texelWidthOffset, 1.5 * texelHeightOffset);\nvec2 secondOffset = vec2(3.5 * texelWidthOffset, 3.5 * texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepLeftTextureCoordinate = inputTextureCoordinate - firstOffset;\ntwoStepsLeftTextureCoordinate = inputTextureCoordinate - secondOffset;\noneStepRightTextureCoordinate = inputTextureCoordinate + firstOffset;\ntwoStepsRightTextureCoordinate = inputTextureCoordinate + secondOffset;\n}\n"

    invoke-direct {p0, v1, v0, v1, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;->blurSize:F

    return-void
.end method


# virtual methods
.method public getHorizontalTexelOffsetRatio()F
    .locals 1

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;->blurSize:F

    return v0
.end method

.method public getVerticalTexelOffsetRatio()F
    .locals 1

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;->blurSize:F

    return v0
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;->blurSize:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;->setBlurSize(F)V

    return-void
.end method

.method public setBlurSize(F)V
    .locals 0

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;->blurSize:F

    new-instance p1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter$1;

    invoke-direct {p1, p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter$1;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;)V

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
