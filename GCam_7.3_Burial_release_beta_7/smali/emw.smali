.class final Lemw;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lemu;

.field private final b:Leru;

.field private final c:Lmpy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LenslitePP"

    invoke-static {v0}, Lijd;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lemu;Leru;Lmpy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lemw;->a:Lemu;

    iput-object p2, p0, Lemw;->b:Leru;

    iput-object p3, p0, Lemw;->c:Lmpy;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;Lmte;I)V
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lemw;->a:Lemu;

    iget-object v3, v2, Lemu;->b:Llon;

    invoke-interface {v3}, Llon;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    iget-object v3, v2, Lemu;->b:Llon;

    iget-object v2, v2, Lemu;->a:Lmpy;

    invoke-interface {v2}, Lmpy;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Llon;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object v2, Losi;->e:Losi;

    invoke-virtual {v2}, Lpcu;->f()Lpcp;

    move-result-object v2

    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getResultType()I

    move-result v4

    aget v3, v3, v4

    iget-boolean v4, v2, Lpcp;->c:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lpcp;->b()V

    iput-boolean v5, v2, Lpcp;->c:Z

    :goto_1
    iget-object v4, v2, Lpcp;->b:Lpcu;

    check-cast v4, Losi;

    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1a

    iput v6, v4, Losi;->b:I

    iget v3, v4, Losi;->a:I

    const/4 v6, 0x1

    or-int/2addr v3, v6

    iput v3, v4, Losi;->a:I

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getActionType()I

    move-result v8

    aget v4, v4, v8

    iget-boolean v8, v2, Lpcp;->c:Z

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lpcp;->b()V

    iput-boolean v5, v2, Lpcp;->c:Z

    :goto_2
    iget-object v8, v2, Lpcp;->b:Lpcu;

    check-cast v8, Losi;

    add-int/lit8 v9, v4, -0x1

    if-eqz v4, :cond_19

    iput v9, v8, Losi;->c:I

    iget v4, v8, Losi;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v8, Losi;->a:I

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getCenterpoint()Landroid/graphics/Point;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v4, Lorr;->d:Lorr;

    invoke-virtual {v4}, Lpcu;->f()Lpcp;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getCenterpoint()Landroid/graphics/Point;

    move-result-object v8

    invoke-static {v8}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget-boolean v9, v4, Lpcp;->c:Z

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Lpcp;->b()V

    iput-boolean v5, v4, Lpcp;->c:Z

    :goto_3
    iget-object v9, v4, Lpcp;->b:Lpcu;

    check-cast v9, Lorr;

    iget v10, v9, Lorr;->a:I

    or-int/2addr v10, v6

    iput v10, v9, Lorr;->a:I

    iput v8, v9, Lorr;->b:F

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getCenterpoint()Landroid/graphics/Point;

    move-result-object p1

    invoke-static {p1}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-boolean v8, v4, Lpcp;->c:Z

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Lpcp;->b()V

    iput-boolean v5, v4, Lpcp;->c:Z

    :goto_4
    iget-object v8, v4, Lpcp;->b:Lpcu;

    check-cast v8, Lorr;

    iget v9, v8, Lorr;->a:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v8, Lorr;->a:I

    iput p1, v8, Lorr;->c:F

    invoke-virtual {v4}, Lpcp;->f()Lpcu;

    move-result-object p1

    check-cast p1, Lorr;

    iget-boolean v4, v2, Lpcp;->c:Z

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lpcp;->b()V

    iput-boolean v5, v2, Lpcp;->c:Z

    :goto_5
    iget-object v4, v2, Lpcp;->b:Lpcu;

    check-cast v4, Losi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v4, Losi;->d:Lorr;

    iget p1, v4, Losi;->a:I

    or-int/2addr p1, v3

    iput p1, v4, Losi;->a:I

    :cond_7
    invoke-virtual {v2}, Lpcp;->f()Lpcu;

    move-result-object p1

    check-cast p1, Losi;

    iget-object v2, p0, Lemw;->a:Lemu;

    iget-object v2, v2, Lemu;->b:Llon;

    invoke-interface {v2}, Llon;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v8, v0

    if-eqz v2, :cond_8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Loac;->b(Ljava/lang/Object;)Loac;

    move-result-object v0

    goto :goto_6

    :cond_8
    sget-object v0, Lnzl;->a:Lnzl;

    :goto_6
    sget-object v1, Losf;->h:Losf;

    invoke-virtual {v1}, Lpcu;->f()Lpcp;

    move-result-object v1

    iget-boolean v2, v1, Lpcp;->c:Z

    if-nez v2, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v1}, Lpcp;->b()V

    iput-boolean v5, v1, Lpcp;->c:Z

    :goto_7
    iget-object v2, v1, Lpcp;->b:Lpcu;

    check-cast v2, Losf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v2, Losf;->b:Losi;

    iget p1, v2, Losf;->a:I

    or-int/2addr p1, v6

    iput p1, v2, Losf;->a:I

    add-int/lit8 p3, p3, -0x1

    iput p3, v2, Losf;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v2, Losf;->a:I

    iget-object p1, p0, Lemw;->c:Lmpy;

    invoke-interface {p1}, Lmpy;->a()J

    move-result-wide v8

    iget-boolean p1, v1, Lpcp;->c:Z

    if-nez p1, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v1}, Lpcp;->b()V

    iput-boolean v5, v1, Lpcp;->c:Z

    :goto_8
    iget-object p1, v1, Lpcp;->b:Lpcu;

    check-cast p1, Losf;

    iget p3, p1, Losf;->a:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p1, Losf;->a:I

    iput-wide v8, p1, Losf;->f:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p3, p2, Lmte;->b:Lmtd;

    if-eqz p3, :cond_b

    goto :goto_9

    :cond_b
    sget-object p3, Lmtd;->b:Lmtd;

    :goto_9
    iget-wide v8, p3, Lmtd;->a:J

    invoke-virtual {p1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    iget-boolean p1, v1, Lpcp;->c:Z

    if-nez p1, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Lpcp;->b()V

    iput-boolean v5, v1, Lpcp;->c:Z

    :goto_a
    iget-object p1, v1, Lpcp;->b:Lpcu;

    check-cast p1, Losf;

    iget p3, p1, Losf;->a:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p1, Losf;->a:I

    iput-wide v8, p1, Losf;->g:J

    invoke-virtual {v0}, Loac;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Loac;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-boolean p1, v1, Lpcp;->c:Z

    if-nez p1, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v1}, Lpcp;->b()V

    iput-boolean v5, v1, Lpcp;->c:Z

    :goto_b
    iget-object p1, v1, Lpcp;->b:Lpcu;

    check-cast p1, Losf;

    iget p3, p1, Losf;->a:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p1, Losf;->a:I

    iput-wide v8, p1, Losf;->e:J

    :cond_e
    iget-object p1, p2, Lmte;->c:Lmtc;

    if-eqz p1, :cond_f

    goto :goto_c

    :cond_f
    sget-object p1, Lmtc;->b:Lmtc;

    :goto_c
    iget-object p1, p1, Lmtc;->a:Lnsf;

    if-eqz p1, :cond_10

    goto :goto_d

    :cond_10
    sget-object p1, Lnsf;->b:Lnsf;

    :goto_d
    iget-object p1, p1, Lnsf;->a:Lpdc;

    invoke-interface {p1}, Lpdc;->size()I

    move-result p1

    if-gtz p1, :cond_11

    goto :goto_13

    :cond_11
    iget-object p1, p2, Lmte;->c:Lmtc;

    if-eqz p1, :cond_12

    goto :goto_e

    :cond_12
    sget-object p1, Lmtc;->b:Lmtc;

    :goto_e
    iget-object p1, p1, Lmtc;->a:Lnsf;

    if-eqz p1, :cond_13

    goto :goto_f

    :cond_13
    sget-object p1, Lnsf;->b:Lnsf;

    :goto_f
    iget-object p1, p1, Lnsf;->a:Lpdc;

    invoke-interface {p1, v5}, Lpdc;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnsd;

    iget p1, p1, Lnsd;->a:I

    invoke-static {p1}, Luo;->a(I)I

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_10

    :cond_14
    nop

    const/4 p1, 0x1

    :goto_10
    add-int/lit8 p1, p1, -0x1

    invoke-static {}, Losd;->b()[I

    move-result-object p2

    array-length p2, p2

    if-ge p1, p2, :cond_15

    invoke-static {}, Losd;->b()[I

    move-result-object p2

    aget v6, p2, p1

    goto :goto_11

    :cond_15
    nop

    nop

    :goto_11
    iget-boolean p1, v1, Lpcp;->c:Z

    if-nez p1, :cond_16

    goto :goto_12

    :cond_16
    invoke-virtual {v1}, Lpcp;->b()V

    iput-boolean v5, v1, Lpcp;->c:Z

    :goto_12
    iget-object p1, v1, Lpcp;->b:Lpcu;

    check-cast p1, Losf;

    add-int/lit8 p2, v6, -0x1

    if-eqz v6, :cond_18

    iput p2, p1, Losf;->d:I

    iget p2, p1, Losf;->a:I

    or-int/2addr p2, v3

    iput p2, p1, Losf;->a:I

    :goto_13
    iget-object p1, p0, Lemw;->b:Leru;

    sget-object p2, Losj;->e:Losj;

    invoke-virtual {p2}, Lpcu;->f()Lpcp;

    move-result-object p2

    invoke-virtual {v1}, Lpcp;->f()Lpcu;

    move-result-object p3

    check-cast p3, Losf;

    iget-boolean v0, p2, Lpcp;->c:Z

    if-nez v0, :cond_17

    goto :goto_14

    :cond_17
    invoke-virtual {p2}, Lpcp;->b()V

    iput-boolean v5, p2, Lpcp;->c:Z

    :goto_14
    iget-object v0, p2, Lpcp;->b:Lpcu;

    check-cast v0, Losj;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, v0, Losj;->c:Losf;

    iget p3, v0, Losj;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, v0, Losj;->a:I

    invoke-virtual {p2}, Lpcp;->f()Lpcu;

    move-result-object p2

    check-cast p2, Losj;

    invoke-interface {p1, p2}, Leru;->a(Losj;)V

    return-void

    :cond_18
    nop

    throw v7

    :cond_19
    nop

    throw v7

    :cond_1a
    nop

    throw v7

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method
