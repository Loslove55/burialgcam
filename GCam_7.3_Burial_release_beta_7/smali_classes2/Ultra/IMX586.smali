.class public LUltra/IMX586;
.super Ljava/lang/Object;
.source "IMX586.java"


# static fields
.field static FACING:I


# direct methods
.method public static 586Offset(I)F
    .locals 3

    const-string v0, "NR Channel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/BlackLevel;->getISOResult()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const-string v0, "pref_48mp_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, LUltra/IMX586;->compute_noise_model_entry_O_48(II)D

    :cond_0
    invoke-static {p0, v0}, LUltra/IMX586;->compute_noise_model_entry_O_AVERAGE(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static 586Scale(I)F
    .locals 3

    const-string v0, "NR Channel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/BlackLevel;->getISOResult()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const-string v0, "pref_48mp_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, LUltra/IMX586;->compute_noise_model_entry_S_48(II)D

    :cond_0
    invoke-static {p0, v0}, LUltra/IMX586;->compute_noise_model_entry_S_AVERAGE(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, LUltra/IMX586;->FACING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compute_noise_model_entry_O_48(II)D
    .locals 13

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    int-to-double v2, p1

    invoke-static {}, LUltra/IMX586;->getDIGTALGain()D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v2, p1

    invoke-static {}, LUltra/IMX586;->getDIGTALGain()D

    move-result-wide v4

    div-double v4, v2, v4

    :goto_0
    move-wide v2, v4

    aget-wide v4, v1, p0

    aget-wide v6, v0, p0

    int-to-double v8, p1

    mul-double v8, v8, v4

    int-to-double v10, p1

    mul-double v8, v8, v10

    mul-double v10, v6, v2

    mul-double v10, v10, v2

    add-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpg-double v12, v8, v10

    if-gez v12, :cond_1

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_1
    return-wide v10

    :array_0
    .array-data 8
        0x3dd925bc13c00000L    # 9.148571218078536E-11
        0x3ddf60f281d40000L    # 1.1415504692308749E-10
        0x3de15463cf160000L    # 1.260897840504253E-10
        0x3dd1238f3df80000L    # 6.235097116754794E-11
    .end array-data

    :array_1
    .array-data 8
        0x3ebeee553acb9cc6L    # 1.8436305523840734E-6
        0x3e965059cfa09f2dL    # 3.325025798050419E-7
        0x3eb226d145d6da53L    # 1.0819215029274746E-6
        0x3ea7e8e88ec15d34L    # 7.125675245506507E-7
    .end array-data
.end method

.method static compute_noise_model_entry_O_AVERAGE(II)D
    .locals 13

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    int-to-double v2, p1

    invoke-static {}, LUltra/IMX586;->getDIGTALGain()D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v2, p1

    invoke-static {}, LUltra/IMX586;->getDIGTALGain()D

    move-result-wide v4

    div-double v4, v2, v4

    :goto_0
    move-wide v2, v4

    aget-wide v4, v1, p0

    aget-wide v6, v0, p0

    int-to-double v8, p1

    mul-double v8, v8, v4

    int-to-double v10, p1

    mul-double v8, v8, v10

    mul-double v10, v6, v2

    mul-double v10, v10, v2

    add-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpg-double v12, v8, v10

    if-gez v12, :cond_1

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_1
    return-wide v10

    :array_0
    .array-data 8
        0x3d6d7d80da000000L    # 8.381632417471269E-13
        0x3d6db40860c00000L    # 8.442172212727963E-13
        0x3d5bb33b14000000L
        0x3d5f0e6244000000L    # 4.4133496024932085E-13
    .end array-data

    :array_1
    .array-data 8
        0x3e9e09b5f4c46d68L    # 4.4760007679593486E-7
        0x3e9b7fd1cfb3fbb5L    # 4.0977143074543986E-7
        0x3e96896422daf9d0L    # 3.358227641351291E-7
        0x3e94b76e32d8bd20L    # 3.0870028208930106E-7
    .end array-data
.end method

.method static compute_noise_model_entry_O_SUM(II)D
    .locals 13

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    div-int/lit16 v2, p1, 0xc8

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit16 v2, p1, 0xc8

    int-to-double v4, v2

    :goto_0
    move-wide v2, v4

    aget-wide v4, v1, p0

    aget-wide v6, v0, p0

    int-to-double v8, p1

    mul-double v8, v8, v4

    int-to-double v10, p1

    mul-double v8, v8, v10

    mul-double v10, v6, v2

    mul-double v10, v10, v2

    add-double/2addr v8, v10

    const-string v10, "UltraM8 model NR Offset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    nop

    :array_0
    .array-data 8
        0x3d6d7d80da000000L    # 8.381632417471269E-13
        0x3d6db40860c00000L    # 8.442172212727963E-13
        0x3d5bb33b14000000L
        0x3d5f0e6244000000L    # 4.4133496024932085E-13
    .end array-data

    :array_1
    .array-data 8
        0x3e9e09b5f4c46d68L    # 4.4760007679593486E-7
        0x3e9b7fd1cfb3fbb5L    # 4.0977143074543986E-7
        0x3e96896422daf9d0L    # 3.358227641351291E-7
        0x3e94b76e32d8bd20L    # 3.0870028208930106E-7
    .end array-data
.end method

.method static compute_noise_model_entry_S_48(II)D
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    aget-wide v2, v1, p0

    aget-wide v4, v0, p0

    int-to-double v6, p1

    mul-double v6, v6, v2

    add-double/2addr v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v10, v6, v8

    if-gez v10, :cond_0

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    return-wide v8

    :array_0
    .array-data 8
        0x3ee9fd9ea2dd9654L    # 1.2393332408054649E-5
        0x3ee99ec6e9cc11b2L    # 1.2216674173178746E-5
        0x3edc376d478c9d09L    # 6.727340512913872E-6
        0x3edcee57ff6cf137L    # 6.897695121573913E-6
    .end array-data

    :array_1
    .array-data 8
        -0x40ed733061812530L    # -7.076279837190812E-5
        0x3ef89c5366d753b1L    # 2.3470542535114918E-5
        -0x4117e8c9383b45a4L    # -1.1487331214779846E-5
        0x3ee56ffce3bcf517L    # 1.022217394785556E-5
    .end array-data
.end method

.method static compute_noise_model_entry_S_AVERAGE(II)D
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    aget-wide v2, v1, p0

    aget-wide v4, v0, p0

    int-to-double v6, p1

    mul-double v6, v6, v2

    add-double/2addr v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v10, v6, v8

    if-gez v10, :cond_0

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    return-wide v8

    :array_0
    .array-data 8
        0x3ea7a2ed6eaff616L    # 7.044206687953447E-7
        0x3ea72f47da3b4fbaL    # 6.909576097621178E-7
        0x3e9910553ed8fe12L    # 3.734797350031254E-7
        0x3e9cd2717bafe845L    # 4.294819253011343E-7
    .end array-data

    :array_1
    .array-data 8
        -0x410e7003f41fecd7L    # -1.674884764925607E-5
        0x3ec85904c6b6d33aL    # 2.9024754916957858E-6
        0x3ef40137085b2349L    # 1.9078012448745037E-5
        0x3efc8cc162a2546dL    # 2.7227235627498245E-5
    .end array-data
.end method

.method static compute_noise_model_entry_S_SUM(II)D
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    aget-wide v2, v1, p0

    aget-wide v4, v0, p0

    int-to-double v6, p1

    mul-double v6, v6, v2

    add-double/2addr v6, v4

    const-string v8, "UltraM8 model NR Scale"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v6

    :array_0
    .array-data 8
        0x3ea7a2ed6eaff616L    # 7.044206687953447E-7
        0x3ea72f47da3b4fbaL    # 6.909576097621178E-7
        0x3e9910553ed8fe12L    # 3.734797350031254E-7
        0x3e9cd2717bafe845L    # 4.294819253011343E-7
    .end array-data

    :array_1
    .array-data 8
        -0x410e7003f41fecd7L    # -1.674884764925607E-5
        0x3ec85904c6b6d33aL    # 2.9024754916957858E-6
        0x3ef40137085b2349L    # 1.9078012448745037E-5
        0x3efc8cc162a2546dL    # 2.7227235627498245E-5
    .end array-data
.end method

.method public static getDIGTALGain()D
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "raphaels"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "raphaelin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, 0x40b9000000000000L    # 6400.0

    return-wide v0
.end method
