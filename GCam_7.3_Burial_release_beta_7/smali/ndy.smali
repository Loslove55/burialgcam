.class public final Lndy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnib;

.field public static final b:Lnib;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lnib;->a([I)Lnib;

    move-result-object v0

    sput-object v0, Lndy;->a:Lnib;

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lnib;->a([I)Lnib;

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lnib;->a([I)Lnib;

    move-result-object v0

    sput-object v0, Lndy;->b:Lnib;

    return-void

    nop

    :array_0
    .array-data 4
        0x8229
        0x8f94
        0x822d
        0x822e
        0x8232
        0x8231
        0x8234
        0x8233
        0x8236
        0x8235
        0x822b
        0x8f95
        0x822f
        0x8230
        0x8238
        0x8237
        0x823a
        0x8239
        0x823c
        0x823b
        0x8051
        0x8c41
        0x8d62
        0x8f96
        0x8c3a
        0x8c3d
        0x881b
        0x8815
        0x8d7d
        0x8d8f
        0x8d77
        0x8d89
        0x8d71
        0x8d83
        0x8058
        0x8c43
        0x8f97
        0x8057
        0x8056
        0x8059
        0x881a
        0x8814
        0x8d7c
        0x8d8e
        0x906f
        0x8d76
        0x8d88
        0x8d82
        0x8d70
    .end array-data

    :array_1
    .array-data 4
        0x8229
        0x8232
        0x8231
        0x8234
        0x8233
        0x8236
        0x8235
        0x822b
        0x8238
        0x8237
        0x823a
        0x8239
        0x823c
        0x823b
        0x8051
        0x8d62
        0x8058
        0x8c43
        0x8057
        0x8056
        0x8059
        0x8d7c
        0x8d8e
        0x906f
        0x8d76
        0x8d88
        0x8d82
        0x8d70
    .end array-data

    :array_2
    .array-data 4
        0x8229
        0x8f94
        0x822d
        0x822b
        0x8f95
        0x822f
        0x8051
        0x8c41
        0x8d62
        0x8f96
        0x8c3a
        0x8c3d
        0x881b
        0x8058
        0x8c43
        0x8f97
        0x8057
        0x8056
        0x8059
        0x881a
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lndy;->a:Lnib;

    invoke-virtual {v0, p1}, Lnib;->a(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Not a valid GL sized format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Luu;->a(ZLjava/lang/Object;)V

    iput p1, p0, Lndy;->c:I

    return-void
.end method

.method public static a(Lncf;)Lndy;
    .locals 3

    iget-object v0, p0, Lncf;->c:Lnbl;

    iget-object p0, p0, Lncf;->b:[Lnbi;

    array-length p0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    new-instance p0, Lndy;

    const v0, 0x8058

    invoke-direct {p0, v0}, Lndy;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lndz;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported channel count \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\'!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lndz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lndy;

    const v0, 0x8051

    invoke-direct {p0, v0}, Lndy;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance p0, Lndy;

    const v0, 0x822b

    invoke-direct {p0, v0}, Lndy;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance p0, Lndy;

    const v0, 0x8229

    invoke-direct {p0, v0}, Lndy;-><init>(I)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lndy;->c:I

    const v1, 0x8051

    if-eq v0, v1, :cond_0

    const v1, 0x8229

    if-eq v0, v1, :cond_0

    const v1, 0x822b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot extract type from GLFormat!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x8368

    return v0

    :cond_0
    :pswitch_1
    const/16 v0, 0x1401

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8056
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lndy;->c:I

    const v1, 0x8051

    if-eq v0, v1, :cond_2

    const v1, 0x8229

    if-eq v0, v1, :cond_1

    const v1, 0x822b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot extract structure from GLFormat!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1908

    return v0

    :cond_0
    const v0, 0x8227

    return v0

    :cond_1
    const/16 v0, 0x1903

    return v0

    :cond_2
    const/16 v0, 0x1907

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8056
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 2

    sget-object v0, Lndy;->b:Lnib;

    iget v1, p0, Lndy;->c:I

    invoke-virtual {v0, v1}, Lnib;->a(I)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    instance-of v1, p1, Lndy;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lndy;

    iget v1, p0, Lndy;->c:I

    iget p1, p1, Lndy;->c:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lndy;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lndy;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GLFormat["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
