.class final Lhdu;
.super Lcom/google/googlex/gcam/PortraitImageCallback;


# instance fields
.field final synthetic a:Lheu;

.field final synthetic b:Lhdv;


# direct methods
.method public constructor <init>(Lhdv;Lheu;)V
    .locals 0

    iput-object p1, p0, Lhdu;->b:Lhdv;

    iput-object p2, p0, Lhdu;->a:Lheu;

    invoke-direct {p0}, Lcom/google/googlex/gcam/PortraitImageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final RgbReady(JLcom/google/googlex/gcam/InterleavedReadViewU8;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    sget-object v1, Lhdw;->a:Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x44

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Portrait debug image (rgb): id = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v5, p1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " description = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1}, Lijd;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lhdu;->a:Lheu;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lhdu;->b:Lhdv;

    iget-object v1, v1, Lhdv;->h:Lozb;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Lozb;->a(Lcom/google/googlex/gcam/InterleavedReadViewU8;)Loac;

    move-result-object v1

    invoke-virtual {v1}, Loac;->a()Z

    move-result v3

    invoke-static {v3}, Luu;->b(Z)V

    iget-object v3, v0, Lhdu;->a:Lheu;

    invoke-virtual {v1}, Loac;->b()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-static/range {p6 .. p7}, Lhdw;->a(Ljava/lang/String;Ljava/lang/String;)Lhet;

    move-result-object v8

    check-cast v3, Ldpl;

    iget-object v1, v3, Ldpl;->b:Ldpq;

    iget-object v1, v1, Ldpq;->c:Lkao;

    invoke-virtual {v1}, Lkao;->a()Lkan;

    move-result-object v12

    nop

    iget-object v4, v3, Ldpl;->b:Ldpq;

    invoke-static {v4}, Ldpq;->a(Ldpq;)I

    move-result v9

    const/4 v10, 0x4

    move-wide v5, p1

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v12}, Ldpq;->a(JLcom/google/googlex/gcam/InterleavedImageU8;Lhet;IILjava/lang/String;Lkan;)V

    :cond_0
    return-void
.end method
