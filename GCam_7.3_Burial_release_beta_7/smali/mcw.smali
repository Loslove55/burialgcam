.class final Lmcw;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/Set;

.field private final b:Lmmk;

.field private final c:Lmih;

.field private final d:Lmdj;

.field private final e:Llvj;

.field private final f:Llvb;


# direct methods
.method public constructor <init>(Lmih;Lmmk;Lmdj;Llvb;Llvj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmcw;->c:Lmih;

    iput-object p2, p0, Lmcw;->b:Lmmk;

    iput-object p3, p0, Lmcw;->d:Lmdj;

    iput-object p5, p0, Lmcw;->e:Llvj;

    const-string p1, "FrameStreamMap"

    invoke-interface {p4, p1}, Llvb;->a(Ljava/lang/String;)Llvb;

    move-result-object p1

    iput-object p1, p0, Lmcw;->f:Llvb;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lmcw;->a:Ljava/util/Set;

    return-void
.end method

.method private final a(JLohs;)Llnu;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lohs;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p3}, Lohs;->aa()Lold;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmhs;

    iget-object v1, v1, Lmhs;->b:Lmhu;

    iget-object v1, v1, Lmhu;->b:Llnu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lmcw;->b:Lmmk;

    iget-object p3, p3, Lmmk;->a:Llot;

    new-instance v1, Lmcv;

    invoke-direct {v1, p1, p2}, Lmcv;-><init>(J)V

    invoke-static {p3, v1}, Lloi;->a(Llnu;Lnzw;)Llnu;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Luu;->a(Z)V

    invoke-static {v0}, Lloi;->c(Ljava/util/Collection;)Llnu;

    move-result-object p1

    sget-object p2, Lloc;->a:Lnzw;

    invoke-static {p1, p2}, Lloi;->a(Llnu;Lnzw;)Llnu;

    move-result-object p1

    return-object p1
.end method

.method private final a(Ljava/util/Set;)Lohs;
    .locals 5

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lohs;->b:I

    sget-object p1, Lojy;->a:Lojy;

    return-object p1

    :cond_0
    invoke-static {}, Lohs;->l()Lohq;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llzk;

    iget-object v2, p0, Lmcw;->d:Lmdj;

    iget-object v3, v1, Llzk;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Lmdj;->a(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmcw;->f:Llvb;

    iget-object v1, v1, Llzk;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ignoring blacklisted parameter: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Llvb;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lohq;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lohq;->a()Lohs;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/util/Set;Ljava/util/Set;)Llzb;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lmcw;->e:Llvj;

    const-string v2, "createFrameStream"

    invoke-interface {v1, v2}, Llvj;->b(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lohs;->a(Ljava/util/Collection;)Lohs;

    move-result-object v1

    iget-object v2, v0, Lmcw;->c:Lmih;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llzs;

    const-string v5, "Streams cannot be null."

    invoke-static {v4, v5}, Luu;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v2, Lmih;->a:Lohs;

    invoke-virtual {v5, v4}, Lohs;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, " is not available on this FrameServer."

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Luu;->a(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lmij;->a(Ljava/util/Collection;)J

    move-result-wide v10

    iget-object v2, v0, Lmcw;->b:Lmmk;

    invoke-virtual {v2}, Lmmk;->a()J

    move-result-wide v2

    invoke-static {v1}, Lmij;->a(Ljava/util/Collection;)J

    move-result-wide v4

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llzs;

    instance-of v14, v9, Lmhs;

    if-eqz v14, :cond_1

    check-cast v9, Lmhs;

    iget v9, v9, Lmhs;->e:I

    if-lez v9, :cond_2

    goto :goto_2

    :cond_2
    nop

    const/4 v12, 0x0

    :goto_2
    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "Stream capacity must be > 0"

    invoke-static {v12, v14, v13}, Lobd;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1

    :cond_3
    nop

    const-wide/16 v14, 0x0

    cmp-long v6, v4, v14

    if-lez v6, :cond_5

    :cond_4
    goto :goto_3

    :cond_5
    nop

    if-ne v8, v7, :cond_4

    const/4 v2, -0x1

    goto :goto_5

    :goto_3
    cmp-long v6, v4, v14

    if-lez v6, :cond_6

    div-long/2addr v2, v4

    long-to-int v7, v2

    goto :goto_4

    :cond_6
    nop

    nop

    :goto_4
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_5
    invoke-static {}, Lohs;->l()Lohq;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llzs;

    instance-of v6, v5, Lmhs;

    if-eqz v6, :cond_7

    check-cast v5, Lmhs;

    invoke-virtual {v3, v5}, Lohq;->c(Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Lohq;->a()Lohs;

    move-result-object v5

    invoke-direct {v0, v10, v11, v5}, Lmcw;->a(JLohs;)Llnu;

    move-result-object v9

    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Lmcw;->a(Ljava/util/Set;)Lohs;

    move-result-object v7

    new-instance v14, Lmcu;

    invoke-static {}, Lohs;->l()Lohq;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llzs;

    instance-of v8, v6, Lmhv;

    if-eqz v8, :cond_9

    check-cast v6, Lmhv;

    invoke-virtual {v3, v6}, Lohq;->c(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Lohq;->a()Lohs;

    move-result-object v6

    move-object v3, v14

    move-object v4, v1

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lmcu;-><init>(Lohs;Lohs;Lohs;Lohs;ILlnu;)V

    iget-object v3, v0, Lmcw;->e:Llvj;

    invoke-interface {v3}, Llvj;->a()V

    iget-object v3, v0, Lmcw;->a:Ljava/util/Set;

    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lmcw;->f:Llvb;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v14, v5, v13

    aput-object v1, v5, v12

    const/4 v1, 0x2

    long-to-double v6, v10

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v1

    if-lez v2, :cond_b

    iget v1, v14, Lmcu;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x1b

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "with "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frames max"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_b
    const-string v1, ""

    :goto_8
    const/4 v2, 0x3

    aput-object v1, v5, v2

    const-string v1, "Created %-10s from %s %.2f using MiB/frame%s"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Llvb;->d(Ljava/lang/String;)V

    return-object v14
.end method

.method public final a(Llzs;Ljava/util/Set;)Llzb;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lmcw;->e:Llvj;

    const-string v3, "createFrameStream"

    invoke-interface {v2, v3}, Llvj;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lmcw;->b:Lmmk;

    invoke-virtual {v2}, Lmmk;->a()J

    move-result-wide v2

    move-object v4, v1

    check-cast v4, Lmif;

    invoke-virtual {v4}, Lmif;->e()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    cmp-long v11, v5, v8

    if-ltz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    nop

    const/4 v11, 0x0

    :goto_0
    new-array v12, v10, [Ljava/lang/Object;

    const-string v13, "bytesPerImage() must be >= 0"

    invoke-static {v11, v13, v12}, Lobd;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    instance-of v11, v1, Lmhs;

    const v12, 0x7fffffff

    if-eqz v11, :cond_2

    move-object v13, v1

    check-cast v13, Lmhs;

    iget v13, v13, Lmhs;->e:I

    if-lez v13, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    nop

    const/4 v14, 0x0

    :goto_1
    new-array v15, v10, [Ljava/lang/Object;

    const-string v7, "Stream capacity must be > 0"

    invoke-static {v14, v7, v15}, Lobd;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    nop

    const v13, 0x7fffffff

    :goto_2
    cmp-long v7, v5, v8

    if-eqz v7, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    nop

    if-ne v13, v12, :cond_3

    const/4 v2, -0x1

    const/16 v21, -0x1

    goto :goto_5

    :goto_3
    cmp-long v7, v5, v8

    if-lez v7, :cond_5

    div-long/2addr v2, v5

    long-to-int v12, v2

    goto :goto_4

    :cond_5
    nop

    nop

    :goto_4
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v21, v2

    :goto_5
    if-nez v11, :cond_6

    sget v2, Lohs;->b:I

    sget-object v2, Lojy;->a:Lojy;

    goto :goto_6

    :cond_6
    move-object v2, v1

    check-cast v2, Lmhs;

    invoke-static {v2}, Lohs;->c(Ljava/lang/Object;)Lohs;

    move-result-object v2

    :goto_6
    invoke-virtual {v4}, Lmif;->e()J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v2}, Lmcw;->a(JLohs;)Llnu;

    move-result-object v22

    move-object/from16 v5, p2

    invoke-direct {v0, v5}, Lmcw;->a(Ljava/util/Set;)Lohs;

    move-result-object v20

    new-instance v5, Lmcu;

    invoke-static/range {p1 .. p1}, Lohs;->c(Ljava/lang/Object;)Lohs;

    move-result-object v17

    instance-of v6, v1, Lmhv;

    if-eqz v6, :cond_7

    move-object v6, v1

    check-cast v6, Lmhv;

    invoke-static {v6}, Lohs;->c(Ljava/lang/Object;)Lohs;

    move-result-object v6

    move-object/from16 v19, v6

    goto :goto_7

    :cond_7
    sget-object v6, Lojy;->a:Lojy;

    move-object/from16 v19, v6

    :goto_7
    move-object/from16 v16, v5

    move-object/from16 v18, v2

    invoke-direct/range {v16 .. v22}, Lmcu;-><init>(Lohs;Lohs;Lohs;Lohs;ILlnu;)V

    iget-object v2, v0, Lmcw;->e:Llvj;

    invoke-interface {v2}, Llvj;->a()V

    iget-object v2, v0, Lmcw;->a:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lmcw;->f:Llvb;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v10

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v1, 0x2

    long-to-double v3, v3

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v1

    const-string v1, "Created %-10s from [%s] %6.2f MiB/frame"

    invoke-static {v6, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Llvb;->d(Ljava/lang/String;)V

    return-object v5
.end method
