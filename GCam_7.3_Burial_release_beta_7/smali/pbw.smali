.class final Lpbw;
.super Lpbx;


# instance fields
.field private final d:Ljava/nio/ByteBuffer;

.field private final e:J

.field private f:J

.field private g:J

.field private final h:J

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpbx;-><init>([B)V

    const v0, 0x7fffffff

    iput v0, p0, Lpbw;->k:I

    iput-object p1, p0, Lpbw;->d:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lpfp;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lpbw;->e:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lpbw;->f:J

    iget-wide v0, p0, Lpbw;->e:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lpbw;->g:J

    iput-wide v0, p0, Lpbw;->h:J

    return-void
.end method

.method private final A()V
    .locals 4

    iget-wide v0, p0, Lpbw;->f:J

    iget v2, p0, Lpbw;->i:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lpbw;->f:J

    iget-wide v2, p0, Lpbw;->h:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    iget v2, p0, Lpbw;->k:I

    if-le v3, v2, :cond_0

    sub-int/2addr v3, v2

    iput v3, p0, Lpbw;->i:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lpbw;->f:J

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lpbw;->i:I

    return-void
.end method

.method private final B()I
    .locals 4

    iget-wide v0, p0, Lpbw;->f:J

    iget-wide v2, p0, Lpbw;->g:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Lpbw;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lpbw;->s()I

    move-result v0

    iput v0, p0, Lpbw;->j:I

    invoke-static {v0}, Lpfx;->b(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lpbw;->j:I

    return v0

    :cond_0
    invoke-static {}, Lpdf;->d()Lpdf;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lpbw;->j:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lpbw;->j:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lpdf;->e()Lpdf;

    move-result-object p1

    throw p1
.end method

.method public final b()D
    .locals 2

    invoke-virtual {p0}, Lpbw;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 7

    invoke-static {p1}, Lpfx;->a(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    nop

    invoke-virtual {p0, v4}, Lpbw;->e(I)V

    return v2

    :cond_0
    invoke-static {}, Lpdf;->f()Lpde;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lpbw;->a()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lpbw;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-static {p1}, Lpfx;->b(I)I

    move-result p1

    invoke-static {p1, v4}, Lpfx;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lpbw;->a(I)V

    return v2

    :cond_4
    invoke-virtual {p0}, Lpbw;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Lpbw;->e(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lpbw;->e(I)V

    return v2

    :cond_6
    invoke-direct {p0}, Lpbw;->B()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_8

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-virtual {p0}, Lpbw;->z()B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-static {}, Lpdf;->c()Lpdf;

    move-result-object p1

    throw p1

    :cond_8
    nop

    :goto_1
    if-ge v1, v0, :cond_a

    iget-wide v3, p0, Lpbw;->g:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lpbw;->g:J

    invoke-static {v3, v4}, Lpfp;->a(J)B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return v2

    :cond_a
    invoke-static {}, Lpdf;->c()Lpdf;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final c()F
    .locals 1

    invoke-virtual {p0}, Lpbw;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lpbw;->y()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lpbw;->k:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lpbw;->k:I

    invoke-direct {p0}, Lpbw;->A()V

    return v0

    :cond_0
    invoke-static {}, Lpdf;->a()Lpdf;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lpdf;->b()Lpdf;

    move-result-object p1

    throw p1
.end method

.method public final d()J
    .locals 2

    invoke-virtual {p0}, Lpbw;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lpbw;->k:I

    invoke-direct {p0}, Lpbw;->A()V

    return-void
.end method

.method public final e()J
    .locals 2

    invoke-virtual {p0}, Lpbw;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(I)V
    .locals 4

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lpbw;->B()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lpbw;->g:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lpbw;->g:J

    return-void

    :cond_1
    :goto_0
    if-ltz p1, :cond_2

    invoke-static {}, Lpdf;->a()Lpdf;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lpdf;->b()Lpdf;

    move-result-object p1

    throw p1
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lpbw;->s()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    invoke-virtual {p0}, Lpbw;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lpbw;->v()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 5

    invoke-virtual {p0}, Lpbw;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lpbw;->s()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lpbw;->B()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    int-to-long v2, v0

    iget-wide v4, p0, Lpbw;->g:J

    invoke-static {v4, v5, v1, v2, v3}, Lpfp;->a(J[BJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v4, Lpdd;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v4, p0, Lpbw;->g:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lpbw;->g:J

    return-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lpdf;->b()Lpdf;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lpdf;->a()Lpdf;

    move-result-object v0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lpbw;->s()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lpbw;->B()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-wide v1, p0, Lpbw;->g:J

    iget-wide v3, p0, Lpbw;->e:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iget-object v1, p0, Lpbw;->d:Ljava/nio/ByteBuffer;

    sget-object v3, Lpfu;->a:Lpfq;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    add-int/2addr v4, v2

    invoke-virtual {v3, v1, v4, v0}, Lpfq;->b([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1, v2, v0}, Lpfq;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2, v0}, Lpfq;->b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-wide v2, p0, Lpbw;->g:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lpbw;->g:J

    return-object v1

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    return-object v0

    :cond_3
    if-gtz v0, :cond_4

    invoke-static {}, Lpdf;->b()Lpdf;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {}, Lpdf;->a()Lpdf;

    move-result-object v0

    throw v0
.end method

.method public final l()Lpbu;
    .locals 6

    invoke-virtual {p0}, Lpbw;->s()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lpbw;->B()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    int-to-long v2, v0

    iget-wide v4, p0, Lpbw;->g:J

    invoke-static {v4, v5, v1, v2, v3}, Lpfp;->a(J[BJ)V

    iget-wide v4, p0, Lpbw;->g:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lpbw;->g:J

    invoke-static {v1}, Lpbu;->b([B)Lpbu;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Lpbu;->b:Lpbu;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lpdf;->b()Lpdf;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lpdf;->a()Lpdf;

    move-result-object v0

    throw v0
.end method

.method public final m()I
    .locals 1

    invoke-virtual {p0}, Lpbw;->s()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    invoke-virtual {p0}, Lpbw;->s()I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 1

    invoke-virtual {p0}, Lpbw;->v()I

    move-result v0

    return v0
.end method

.method public final p()J
    .locals 2

    invoke-virtual {p0}, Lpbw;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()I
    .locals 1

    invoke-virtual {p0}, Lpbw;->s()I

    move-result v0

    invoke-static {v0}, Lpbw;->f(I)I

    move-result v0

    return v0
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, Lpbw;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Lpbw;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()I
    .locals 10

    iget-wide v0, p0, Lpbw;->g:J

    iget-wide v2, p0, Lpbw;->f:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_6

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lpfp;->a(J)B

    move-result v0

    if-gez v0, :cond_5

    iget-wide v6, p0, Lpbw;->f:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-ltz v1, :cond_6

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-gez v0, :cond_3

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_1

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v1

    if-gez v1, :cond_0

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v1

    if-gez v1, :cond_1

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v1

    if-gez v1, :cond_0

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v1

    if-gez v1, :cond_1

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v1

    if-ltz v1, :cond_6

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_3
    xor-int/lit16 v0, v0, 0x3f80

    :goto_0
    move-wide v6, v4

    goto :goto_1

    :cond_4
    xor-int/lit8 v0, v0, -0x80

    :goto_1
    iput-wide v6, p0, Lpbw;->g:J

    return v0

    :cond_5
    iput-wide v4, p0, Lpbw;->g:J

    return v0

    :cond_6
    invoke-virtual {p0}, Lpbw;->u()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final t()J
    .locals 11

    iget-wide v0, p0, Lpbw;->g:J

    iget-wide v2, p0, Lpbw;->f:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_9

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lpfp;->a(J)B

    move-result v0

    if-gez v0, :cond_8

    iget-wide v6, p0, Lpbw;->f:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-ltz v1, :cond_9

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-ltz v0, :cond_7

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-gez v0, :cond_6

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    add-long v4, v6, v2

    int-to-long v0, v0

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    add-long v8, v4, v2

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-ltz v4, :cond_3

    add-long v4, v8, v2

    invoke-static {v8, v9}, Lpfp;->a(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    add-long v8, v4, v2

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-ltz v4, :cond_1

    add-long v4, v8, v2

    invoke-static {v8, v9}, Lpfp;->a(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_0

    add-long/2addr v2, v4

    invoke-static {v4, v5}, Lpfp;->a(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_9

    move-wide v6, v2

    goto :goto_4

    :cond_0
    goto :goto_2

    :cond_1
    const-wide v2, -0x1fc07f01fc080L

    goto :goto_0

    :cond_2
    const-wide v2, 0x3f80fe03f80L

    goto :goto_1

    :cond_3
    const-wide v2, -0x7f01fc080L

    :goto_0
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_4

    :cond_4
    const-wide/32 v2, 0xfe03f80

    :goto_1
    xor-long/2addr v0, v2

    goto :goto_2

    :cond_5
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_3

    :cond_6
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :goto_2
    move-wide v6, v4

    goto :goto_4

    :cond_7
    xor-int/lit8 v0, v0, -0x80

    :goto_3
    int-to-long v0, v0

    :goto_4
    iput-wide v6, p0, Lpbw;->g:J

    return-wide v0

    :cond_8
    iput-wide v4, p0, Lpbw;->g:J

    int-to-long v0, v0

    return-wide v0

    :cond_9
    invoke-virtual {p0}, Lpbw;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method final u()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lpbw;->z()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    invoke-static {}, Lpdf;->c()Lpdf;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final v()I
    .locals 7

    iget-wide v0, p0, Lpbw;->g:J

    iget-wide v2, p0, Lpbw;->f:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lpbw;->g:J

    invoke-static {v0, v1}, Lpfp;->a(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lpfp;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lpfp;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Lpfp;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    :cond_0
    invoke-static {}, Lpdf;->a()Lpdf;

    move-result-object v0

    throw v0
.end method

.method public final w()J
    .locals 9

    iget-wide v0, p0, Lpbw;->g:J

    iget-wide v2, p0, Lpbw;->f:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lpbw;->g:J

    invoke-static {v0, v1}, Lpfp;->a(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lpfp;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Lpfp;->a(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {}, Lpdf;->a()Lpdf;

    move-result-object v0

    throw v0
.end method

.method public final x()Z
    .locals 5

    iget-wide v0, p0, Lpbw;->g:J

    iget-wide v2, p0, Lpbw;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y()I
    .locals 4

    iget-wide v0, p0, Lpbw;->g:J

    iget-wide v2, p0, Lpbw;->h:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final z()B
    .locals 5

    iget-wide v0, p0, Lpbw;->g:J

    iget-wide v2, p0, Lpbw;->f:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lpbw;->g:J

    invoke-static {v0, v1}, Lpfp;->a(J)B

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lpdf;->a()Lpdf;

    move-result-object v0

    throw v0
.end method
