.class public LUltra/NMS5KHMX;
.super Ljava/lang/Object;
.source "NMS5KHMX.java"


# static fields
.field private static NUM_COL_CHN:I

.field private static Noise_Profile_0:D

.field private static Noise_Profile_S:D

.field private static noise_profile:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    sput v0, LUltra/NMS5KHMX;->NUM_COL_CHN:I

    const-wide/16 v0, 0x0

    sput-wide v0, LUltra/NMS5KHMX;->Noise_Profile_S:D

    sput-wide v0, LUltra/NMS5KHMX;->Noise_Profile_0:D

    sget v0, LUltra/NMS5KHMX;->NUM_COL_CHN:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    sput-object v0, LUltra/NMS5KHMX;->noise_profile:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GenerateModel()V
    .locals 5

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v0

    const-string v1, "Walleye"

    invoke-static {v0, v1}, LUltra/NMS5KHMX;->computeNoiseModelS(ILjava/lang/String;)D

    move-result-wide v0

    sput-wide v0, LUltra/NMS5KHMX;->Noise_Profile_S:D

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v0

    const-string v1, "Walleye"

    invoke-static {v0, v1}, LUltra/NMS5KHMX;->computeNoiseModelO(ILjava/lang/String;)D

    move-result-wide v0

    sput-wide v0, LUltra/NMS5KHMX;->Noise_Profile_0:D

    const/4 v0, 0x0

    :goto_0
    sget v1, LUltra/NMS5KHMX;->NUM_COL_CHN:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object v1, LUltra/NMS5KHMX;->noise_profile:[D

    sget-wide v2, LUltra/NMS5KHMX;->Noise_Profile_S:D

    aput-wide v2, v1, v0

    sget-object v1, LUltra/NMS5KHMX;->noise_profile:[D

    add-int/lit8 v2, v0, 0x1

    sget-wide v3, LUltra/NMS5KHMX;->Noise_Profile_S:D

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static ISO()I
    .locals 1

    invoke-static {}, Lcom/BlackLevel;->getISOResult()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static NR_Offset()F
    .locals 4

    const-string v0, "Deez Noise Modeler ISO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Scale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v2

    const-string v3, "IMX363_GOOGLE"

    invoke-static {v2, v3}, LUltra/NMS5KHMX;->computeNoiseModelO(ILjava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v0

    const-string v1, "IMX363_GOOGLE"

    invoke-static {v0, v1}, LUltra/NMS5KHMX;->computeNoiseModelO(ILjava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static NR_Offset(Ljava/lang/String;)F
    .locals 2

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v0

    invoke-static {v0, p0}, LUltra/NMS5KHMX;->computeNoiseModelO(ILjava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static NR_Offset(Ljava/lang/String;I)F
    .locals 2

    invoke-static {p1, p0}, LUltra/NMS5KHMX;->computeNoiseModelO(ILjava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static NR_Scale()F
    .locals 4

    const-string v0, "Deez Noise Modeler ISO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Scale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v2

    const-string v3, "IMX363_GOOGLE"

    invoke-static {v2, v3}, LUltra/NMS5KHMX;->computeNoiseModelS(ILjava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v0

    const-string v1, "IMX363_GOOGLE"

    invoke-static {v0, v1}, LUltra/NMS5KHMX;->computeNoiseModelS(ILjava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static NR_Scale(Ljava/lang/String;)F
    .locals 2

    invoke-static {}, LUltra/NMS5KHMX;->ISO()I

    move-result v0

    invoke-static {v0, p0}, LUltra/NMS5KHMX;->computeNoiseModelS(ILjava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static NR_Scale(Ljava/lang/String;I)F
    .locals 2

    invoke-static {p1, p0}, LUltra/NMS5KHMX;->computeNoiseModelS(ILjava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static computeNoiseModelO(ILjava/lang/String;)D
    .locals 5

    invoke-static {p1}, LUltra/NMS5KHMX;->preComputedModels(Ljava/lang/String;)[D

    move-result-object v0

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    int-to-double v3, p0

    mul-double v1, v1, v3

    invoke-static {p1}, LUltra/NMS5KHMX;->preComputedModels(Ljava/lang/String;)[D

    move-result-object v0

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    const-wide/high16 p0, 0x4069000000000000L    # 200.0

    mul-double v3, v3, p0

    add-double/2addr v1, v3

    return-wide v1
.end method

.method private static computeNoiseModelS(ILjava/lang/String;)D
    .locals 5

    invoke-static {p1}, LUltra/NMS5KHMX;->preComputedModels(Ljava/lang/String;)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    int-to-double v3, p0

    mul-double v1, v1, v3

    invoke-static {p1}, LUltra/NMS5KHMX;->preComputedModels(Ljava/lang/String;)[D

    move-result-object v0

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-double/2addr v1, v3

    return-wide v1
.end method

.method private static preComputedModels(Ljava/lang/String;)[D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "IMX355_GOOGLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "IMX179_GOOGLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "IMX586"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "IMX586_ASUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "IMX363_GOOGLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "IMX363_MEME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "IMX363_ASUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v0, "OV5647_GOOGLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "OV4668_GOOGLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v0, "IMX586_OP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_a
    const-string v0, "IMX519_OP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v0, "IMX378_GOOGLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_c
    const-string v0, "IMX345_SAM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_d
    const-string v0, "IMX362_GOOGLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    return-object v0

    :pswitch_0
    new-array v0, v1, [D

    fill-array-data v0, :array_1

    return-object v0

    :pswitch_1
    new-array v0, v1, [D

    fill-array-data v0, :array_2

    return-object v0

    :pswitch_2
    new-array v0, v1, [D

    fill-array-data v0, :array_3

    return-object v0

    :pswitch_3
    new-array v0, v1, [D

    fill-array-data v0, :array_4

    return-object v0

    :pswitch_4
    new-array v0, v1, [D

    fill-array-data v0, :array_5

    return-object v0

    :pswitch_5
    new-array v0, v1, [D

    fill-array-data v0, :array_6

    return-object v0

    :pswitch_6
    new-array v0, v1, [D

    fill-array-data v0, :array_7

    return-object v0

    :pswitch_7
    new-array v0, v1, [D

    fill-array-data v0, :array_8

    return-object v0

    :pswitch_8
    new-array v0, v1, [D

    fill-array-data v0, :array_9

    return-object v0

    :pswitch_9
    new-array v0, v1, [D

    fill-array-data v0, :array_a

    return-object v0

    :pswitch_a
    new-array v0, v1, [D

    fill-array-data v0, :array_b

    return-object v0

    :pswitch_b
    new-array v0, v1, [D

    fill-array-data v0, :array_c

    return-object v0

    :pswitch_c
    new-array v0, v1, [D

    fill-array-data v0, :array_d

    return-object v0

    :pswitch_d
    new-array v0, v1, [D

    fill-array-data v0, :array_e

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2374ef03 -> :sswitch_d
        -0x2360d340 -> :sswitch_c
        -0x1fe972c8 -> :sswitch_b
        0x12a134f7 -> :sswitch_a
        0x13027c61 -> :sswitch_9
        0x14d645cd -> :sswitch_8
        0x1950edad -> :sswitch_7
        0x1da146b3 -> :sswitch_6
        0x1da68593 -> :sswitch_5
        0x446c3ddc -> :sswitch_4
        0x5c4ea0d0 -> :sswitch_3
        0x5c53dfb0 -> :sswitch_2
        0x5f64d7d9 -> :sswitch_1
        0x7fea2899 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_1
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_2
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_3
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_4
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_5
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_6
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_7
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_8
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_9
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_a
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_b
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_c
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_d
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data

    :array_e
    .array-data 8
        0x3eb93fb839269156L    # 1.504952E-6
        0x3eee4d40d027bec2L    # 1.444901E-5
        0x3d9da7c5e7529abbL    # 6.742849E-12
        0x3ea57362e2a5ea4eL    # 6.392815E-7
    .end array-data
.end method
