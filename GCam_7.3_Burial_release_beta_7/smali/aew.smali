.class public final Laew;
.super Ljava/lang/Object;


# static fields
.field private static a:[Z

.field private static b:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x100

    new-array v1, v0, [Z

    sput-object v1, Laew;->b:[Z

    new-array v0, v0, [Z

    sput-object v0, Laew;->a:[Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Laew;->b:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_c

    sget-object v2, Laew;->a:[Z

    const/16 v3, 0xf6

    const/16 v4, 0xd6

    const/16 v5, 0xd8

    const/16 v6, 0xc0

    const/16 v7, 0x5f

    const/16 v8, 0x5a

    const/16 v9, 0x3a

    const/16 v10, 0x7a

    const/16 v11, 0x41

    const/16 v12, 0x61

    const/4 v13, 0x1

    if-lt v1, v12, :cond_1

    if-gt v1, v10, :cond_1

    :cond_0
    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    nop

    if-lt v1, v11, :cond_2

    if-le v1, v8, :cond_0

    :cond_2
    if-eq v1, v9, :cond_0

    if-eq v1, v7, :cond_0

    if-lt v1, v6, :cond_3

    if-le v1, v4, :cond_0

    :cond_3
    if-lt v1, v5, :cond_4

    if-le v1, v3, :cond_0

    :cond_4
    const/4 v14, 0x0

    :goto_1
    aput-boolean v14, v2, v1

    sget-object v2, Laew;->b:[Z

    if-lt v1, v12, :cond_6

    if-gt v1, v10, :cond_6

    :cond_5
    :goto_2
    goto :goto_4

    :cond_6
    if-ge v1, v11, :cond_8

    :cond_7
    goto :goto_3

    :cond_8
    nop

    if-gt v1, v8, :cond_7

    goto :goto_2

    :goto_3
    const/16 v8, 0x30

    if-lt v1, v8, :cond_9

    const/16 v8, 0x39

    if-le v1, v8, :cond_5

    :cond_9
    if-eq v1, v9, :cond_5

    if-eq v1, v7, :cond_5

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_5

    const/16 v7, 0x2e

    if-eq v1, v7, :cond_5

    const/16 v7, 0xb7

    if-eq v1, v7, :cond_5

    if-lt v1, v6, :cond_a

    if-le v1, v4, :cond_5

    :cond_a
    if-lt v1, v5, :cond_b

    if-le v1, v3, :cond_5

    :cond_b
    const/4 v13, 0x0

    :goto_4
    aput-boolean v13, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_c
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "x-default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    const/16 v5, 0x5f

    if-eq v3, v5, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    nop

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x26

    const/16 v8, 0x3e

    const/16 v9, 0x3c

    if-ne v2, v9, :cond_0

    goto :goto_3

    :cond_0
    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-nez p1, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    if-eq v2, v3, :cond_2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_3

    goto :goto_6

    :cond_3
    if-eq v2, v5, :cond_9

    if-eq v2, v4, :cond_9

    if-eq v2, v3, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v8, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_4
    nop

    const-string v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_5
    nop

    const-string v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_6
    nop

    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_7
    if-eqz p1, :cond_8

    const-string v2, "&quot;"

    goto :goto_5

    :cond_8
    const-string v2, "\""

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_9
    :goto_6
    nop

    const-string v10, "&#x"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_b
    return-object p0
.end method

.method static a(C)Z
    .locals 1

    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0xff

    if-gt p0, v0, :cond_1

    sget-object v0, Laew;->a:[Z

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x3f

    if-ne v2, v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    nop

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    new-instance v7, Ljava/lang/StringBuffer;

    sub-int v0, v6, v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_1
    :goto_1
    if-ge v4, v6, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-array p0, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, p0, v0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    return-object p0
.end method

.method private static c(C)Z
    .locals 1

    const/16 v0, 0xff

    if-gt p0, v0, :cond_1

    sget-object v0, Laew;->b:[Z

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static c(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x12

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    const/4 p0, 0x4

    if-ne v4, p0, :cond_7

    const/16 p0, 0x24

    if-ne v2, p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Laew;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    nop

    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Laew;->c(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Laew;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    nop

    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Laew;->c(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p0, v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Laew;->a(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
