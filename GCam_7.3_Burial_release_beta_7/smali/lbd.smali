.class public final Llbd;
.super Llap;


# instance fields
.field public final r:Llbc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lkqe;Lkqf;Ljava/lang/String;Lkue;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Llap;-><init>(Landroid/content/Context;Landroid/os/Looper;Lkqe;Lkqf;Ljava/lang/String;Lkue;)V

    new-instance p1, Llbc;

    iget-object p2, p0, Llbd;->q:Llbi;

    invoke-direct {p1, p2}, Llbc;-><init>(Llbi;)V

    iput-object p1, p0, Llbd;->r:Llbc;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 14

    iget-object v0, p0, Llbd;->r:Llbc;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lktz;->e()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_6

    :try_start_1
    iget-object v1, p0, Llbd;->r:Llbc;

    iget-object v2, v1, Llbc;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v3, v1, Llbc;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llai;

    if-eqz v4, :cond_0

    iget-object v6, v1, Llbc;->a:Llbi;

    check-cast v6, Llao;

    invoke-virtual {v6}, Llao;->b()Llba;

    move-result-object v6

    invoke-static {v4, v5}, Llbg;->a(Llaj;Llay;)Llbg;

    move-result-object v4

    invoke-interface {v6, v4}, Llba;->a(Llbg;)V

    goto :goto_0

    :cond_1
    iget-object v3, v1, Llbc;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, v1, Llbc;->d:Ljava/util/Map;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v3, v1, Llbc;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Llaf;

    if-eqz v11, :cond_2

    iget-object v4, v1, Llbc;->a:Llbi;

    check-cast v4, Llao;

    invoke-virtual {v4}, Llao;->b()Llba;

    move-result-object v4

    new-instance v13, Llbg;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Llbg;-><init>(ILlbe;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v4, v13}, Llba;->a(Llbg;)V

    goto :goto_1

    :cond_3
    iget-object v3, v1, Llbc;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v2, v1, Llbc;->c:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v3, v1, Llbc;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llac;

    if-eqz v4, :cond_4

    iget-object v6, v1, Llbc;->a:Llbi;

    check-cast v6, Llao;

    invoke-virtual {v6}, Llao;->b()Llba;

    move-result-object v6

    new-instance v7, Llas;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v5, v4, v5}, Llas;-><init>(ILlaq;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v6, v7}, Llba;->a(Llas;)V

    goto :goto_2

    :cond_5
    iget-object v1, v1, Llbc;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catch_0
    move-exception v1

    :try_start_c
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    invoke-super {p0}, Llap;->d()V

    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
