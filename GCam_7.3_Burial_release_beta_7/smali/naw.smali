.class final Lnaw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnag;

.field final synthetic b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lnbd;

.field final synthetic d:Lnag;

.field final synthetic e:Lnbd;

.field final synthetic f:Lncl;


# direct methods
.method public constructor <init>(Lnbd;Lnag;Ljava/util/concurrent/Executor;Lnbd;Lncl;Lnag;[B)V
    .locals 0

    iput-object p1, p0, Lnaw;->e:Lnbd;

    iput-object p2, p0, Lnaw;->a:Lnag;

    iput-object p3, p0, Lnaw;->b:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lnaw;->c:Lnbd;

    iput-object p5, p0, Lnaw;->f:Lncl;

    iput-object p6, p0, Lnaw;->d:Lnag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lnaw;->e:Lnbd;

    iget-object v0, v0, Lnbd;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnaw;->e:Lnbd;

    iget-object v0, v0, Lnbd;->b:Lnad;

    iget-object v1, p0, Lnaw;->d:Lnag;

    iget-object v2, p0, Lnaw;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lnaw;->c:Lnbd;

    :try_start_0
    invoke-interface {v1, v0, v2}, Lnag;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lnac;

    move-result-object v0

    sget-object v1, Lowu;->a:Lowu;

    new-instance v2, Lnbb;

    invoke-direct {v2, v3}, Lnbb;-><init>(Lnbd;)V

    new-instance v4, Lnba;

    invoke-direct {v4, v3}, Lnba;-><init>(Lnbd;)V

    invoke-interface {v0, v1, v2, v4}, Lnac;->a(Ljava/util/concurrent/Executor;Lmyp;Lmyp;)Lnac;

    move-result-object v0

    sget-object v1, Lmzd;->a:Lmzd;

    invoke-interface {v0, v1}, Lnac;->a(Lmyo;)V
    :try_end_0
    .catch Lnad; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lnad;->a(Ljava/lang/Throwable;)Lnad;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnbd;->a(Lnad;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Lnbd;->a(Lnad;)V

    return-void

    :cond_0
    iget-object v1, p0, Lnaw;->a:Lnag;

    iget-object v2, p0, Lnaw;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lnaw;->c:Lnbd;

    invoke-static {v0, v1, v2, v3}, Lnbd;->a(Ljava/lang/Object;Lnag;Ljava/util/concurrent/Executor;Lnbd;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lnaw;->e:Lnbd;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnaw;->a:Lnag;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnaw;->d:Lnag;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "then["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
