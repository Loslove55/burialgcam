.class public Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;
.super Ljava/lang/Object;
.source "TextureRotationUtil.java"


# static fields
.field public static final TEXTURE_NO_ROTATION:[F

.field public static final TEXTURE_ROTATED_180:[F

.field public static final TEXTURE_ROTATED_270:[F

.field public static final TEXTURE_ROTATED_90:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_ROTATED_90:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_ROTATED_180:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_ROTATED_270:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static flip(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    return v0
.end method

.method public static getRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)[F
    .locals 10

    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil$1;->$SwitchMap$jp$co$cyberagent$android$gpuimage$util$Rotation:[I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    sget-object p0, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    goto :goto_0

    :cond_0
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_ROTATED_270:[F

    goto :goto_0

    :cond_1
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_ROTATED_180:[F

    goto :goto_0

    :cond_2
    sget-object p0, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_ROTATED_90:[F

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    new-array p1, v3, [F

    aget v9, p0, v8

    invoke-static {v9}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->flip(F)F

    move-result v9

    aput v9, p1, v8

    aget v9, p0, v2

    aput v9, p1, v2

    aget v9, p0, v1

    invoke-static {v9}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->flip(F)F

    move-result v9

    aput v9, p1, v1

    aget v9, p0, v0

    aput v9, p1, v0

    aget v9, p0, v7

    invoke-static {v9}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->flip(F)F

    move-result v9

    aput v9, p1, v7

    aget v9, p0, v6

    aput v9, p1, v6

    aget v9, p0, v5

    invoke-static {v9}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->flip(F)F

    move-result v9

    aput v9, p1, v5

    aget p0, p0, v4

    aput p0, p1, v4

    move-object p0, p1

    :cond_3
    if-eqz p2, :cond_4

    new-array p1, v3, [F

    aget p2, p0, v8

    aput p2, p1, v8

    aget p2, p0, v2

    invoke-static {p2}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->flip(F)F

    move-result p2

    aput p2, p1, v2

    aget p2, p0, v1

    aput p2, p1, v1

    aget p2, p0, v0

    invoke-static {p2}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->flip(F)F

    move-result p2

    aput p2, p1, v0

    aget p2, p0, v7

    aput p2, p1, v7

    aget p2, p0, v6

    invoke-static {p2}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->flip(F)F

    move-result p2

    aput p2, p1, v6

    aget p2, p0, v5

    aput p2, p1, v5

    aget p0, p0, v4

    invoke-static {p0}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->flip(F)F

    move-result p0

    aput p0, p1, v4

    move-object p0, p1

    :cond_4
    return-object p0
.end method
