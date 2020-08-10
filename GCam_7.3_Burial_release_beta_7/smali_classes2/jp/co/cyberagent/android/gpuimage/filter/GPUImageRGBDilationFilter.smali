.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBDilationFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;
.source "GPUImageRGBDilationFilter.java"


# static fields
.field public static final FRAGMENT_SHADER_1:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\n\ngl_FragColor = max(maxValue, oneStepNegativeIntensity);\n}\n"

.field public static final FRAGMENT_SHADER_2:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\n\ngl_FragColor = max(maxValue, twoStepsNegativeIntensity);\n}\n"

.field public static final FRAGMENT_SHADER_3:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\nlowp vec4 threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate);\nlowp vec4 threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\n\ngl_FragColor = max(maxValue, threeStepsNegativeIntensity);\n}\n"

.field public static final FRAGMENT_SHADER_4:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\nlowp vec4 threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate);\nlowp vec4 threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate);\nlowp vec4 fourStepsPositiveIntensity = texture2D(inputImageTexture, fourStepsPositiveTextureCoordinate);\nlowp vec4 fourStepsNegativeIntensity = texture2D(inputImageTexture, fourStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\nmaxValue = max(maxValue, fourStepsPositiveIntensity);\n\ngl_FragColor = max(maxValue, fourStepsNegativeIntensity);\n}\n"

.field public static final VERTEX_SHADER_1:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepNegativeTextureCoordinate = inputTextureCoordinate - offset;\noneStepPositiveTextureCoordinate = inputTextureCoordinate + offset;\n}\n"

.field public static final VERTEX_SHADER_2:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepNegativeTextureCoordinate = inputTextureCoordinate - offset;\noneStepPositiveTextureCoordinate = inputTextureCoordinate + offset;\ntwoStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 2.0);\n}\n"

.field public static final VERTEX_SHADER_3:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepNegativeTextureCoordinate = inputTextureCoordinate - offset;\noneStepPositiveTextureCoordinate = inputTextureCoordinate + offset;\ntwoStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 3.0);\n}\n"

.field public static final VERTEX_SHADER_4:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepNegativeTextureCoordinate = inputTextureCoordinate - offset;\noneStepPositiveTextureCoordinate = inputTextureCoordinate + offset;\ntwoStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 3.0);\nfourStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 4.0);\nfourStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 4.0);\n}\n"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBDilationFilter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBDilationFilter;->getVertexShader(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBDilationFilter;->getFragmentShader(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBDilationFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoPassTextureSamplingFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getFragmentShader(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\nlowp vec4 threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate);\nlowp vec4 threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate);\nlowp vec4 fourStepsPositiveIntensity = texture2D(inputImageTexture, fourStepsPositiveTextureCoordinate);\nlowp vec4 fourStepsNegativeIntensity = texture2D(inputImageTexture, fourStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\nmaxValue = max(maxValue, fourStepsPositiveIntensity);\n\ngl_FragColor = max(maxValue, fourStepsNegativeIntensity);\n}\n"

    return-object p0

    :cond_0
    const-string p0, "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\nlowp vec4 threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate);\nlowp vec4 threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\n\ngl_FragColor = max(maxValue, threeStepsNegativeIntensity);\n}\n"

    return-object p0

    :cond_1
    const-string p0, "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\n\ngl_FragColor = max(maxValue, twoStepsNegativeIntensity);\n}\n"

    return-object p0

    :cond_2
    const-string p0, "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\n\ngl_FragColor = max(maxValue, oneStepNegativeIntensity);\n}\n"

    return-object p0
.end method

.method private static getVertexShader(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepNegativeTextureCoordinate = inputTextureCoordinate - offset;\noneStepPositiveTextureCoordinate = inputTextureCoordinate + offset;\ntwoStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 3.0);\nfourStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 4.0);\nfourStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 4.0);\n}\n"

    return-object p0

    :cond_0
    const-string p0, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepNegativeTextureCoordinate = inputTextureCoordinate - offset;\noneStepPositiveTextureCoordinate = inputTextureCoordinate + offset;\ntwoStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 3.0);\n}\n"

    return-object p0

    :cond_1
    const-string p0, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepNegativeTextureCoordinate = inputTextureCoordinate - offset;\noneStepPositiveTextureCoordinate = inputTextureCoordinate + offset;\ntwoStepsNegativeTextureCoordinate = inputTextureCoordinate - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = inputTextureCoordinate + (offset * 2.0);\n}\n"

    return-object p0

    :cond_2
    const-string p0, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n\nuniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = inputTextureCoordinate;\noneStepNegativeTextureCoordinate = inputTextureCoordinate - offset;\noneStepPositiveTextureCoordinate = inputTextureCoordinate + offset;\n}\n"

    return-object p0
.end method
