.class final synthetic Lhdo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/base/function/LongFloatConsumer;


# instance fields
.field private final a:Lheu;


# direct methods
.method public constructor <init>(Lheu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhdo;->a:Lheu;

    return-void
.end method


# virtual methods
.method public final accept(JF)V
    .locals 4

    iget-object v0, p0, Lhdo;->a:Lheu;

    sget-object v1, Lhdw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x47

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Portrait progress: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " progress = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1}, Lijd;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x0

    cmpl-float v1, p3, p2

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    nop

    invoke-static {p1}, Luu;->a(Z)V

    cmpl-float p1, p3, p2

    if-nez p1, :cond_2

    move-object p1, v0

    check-cast p1, Ldpl;

    iget-object p1, p1, Ldpl;->b:Ldpq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Ldpq;->f:J

    :cond_2
    check-cast v0, Ldpl;

    iget-object p1, v0, Ldpl;->a:Lgia;

    sget-object p2, Ldmg;->a:Lkak;

    invoke-interface {p1, p2, p3}, Lgia;->a(Lkak;F)V

    :cond_3
    return-void
.end method
