.class public final Laeq;
.super Ljava/lang/Object;


# static fields
.field private static a:[B

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Laeq;->a:[B

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Laeq;->b:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Laeq;->b:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    sget-object v0, Laeq;->a:[B

    array-length v2, v0

    if-ge v1, v2, :cond_1

    sget-object v2, Laeq;->b:[B

    aget-byte v0, v0, v1

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Laeq;->b:[B

    const/16 v1, 0x9

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static final a([B)[B
    .locals 9

    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    add-int/lit8 v6, v3, 0x3

    if-gt v6, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    aget-byte v5, p0, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    add-int/lit8 v5, v4, 0x1

    sget-object v6, Laeq;->a:[B

    shr-int/lit8 v8, v3, 0x12

    aget-byte v8, v6, v8

    aput-byte v8, v2, v4

    add-int/lit8 v4, v5, 0x1

    shr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v8, v3, 0xfc0

    shr-int/lit8 v8, v8, 0x6

    aget-byte v8, v6, v8

    aput-byte v8, v2, v4

    add-int/lit8 v4, v5, 0x1

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v2, v5

    move v3, v7

    goto :goto_0

    :cond_0
    sub-int/2addr v5, v3

    const/16 v0, 0x3d

    const/4 v6, 0x1

    if-ne v5, v1, :cond_1

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v3, v6

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    add-int/lit8 v1, v4, 0x1

    sget-object v3, Laeq;->a:[B

    shr-int/lit8 v5, p0, 0x12

    aget-byte v5, v3, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, p0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v3, v5

    aput-byte v5, v2, v1

    and-int/lit16 p0, p0, 0xfc0

    shr-int/lit8 p0, p0, 0x6

    aget-byte p0, v3, p0

    aput-byte p0, v2, v4

    add-int/2addr v4, v6

    aput-byte v0, v2, v4

    goto :goto_1

    :cond_1
    if-ne v5, v6, :cond_2

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    add-int/lit8 v1, v4, 0x1

    sget-object v3, Laeq;->a:[B

    shr-int/lit8 v5, p0, 0x12

    aget-byte v5, v3, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, v3, p0

    aput-byte p0, v2, v1

    aput-byte v0, v2, v4

    add-int/2addr v4, v6

    aput-byte v0, v2, v4

    :cond_2
    :goto_1
    return-object v2
.end method
