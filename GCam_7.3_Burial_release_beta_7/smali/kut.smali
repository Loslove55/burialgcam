.class final Lkut;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/Map;

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Lkur;

.field public f:Landroid/content/ComponentName;

.field final synthetic g:Lkuu;


# direct methods
.method public constructor <init>(Lkuu;Lkur;)V
    .locals 0

    iput-object p1, p0, Lkut;->g:Lkuu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkut;->e:Lkur;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lkut;->a:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lkut;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V
    .locals 1

    iget-object v0, p0, Lkut;->e:Lkur;

    invoke-virtual {v0}, Lkur;->a()Landroid/content/Intent;

    iget-object v0, p0, Lkut;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lkut;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lkut;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lkut;->b:I

    iget-object v0, p0, Lkut;->g:Lkuu;

    iget-object v0, v0, Lkuu;->d:Landroid/content/Context;

    iget-object v1, p0, Lkut;->e:Lkur;

    invoke-virtual {v1}, Lkur;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lkvz;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result v0

    iput-boolean v0, p0, Lkut;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkut;->g:Lkuu;

    iget-object v0, v0, Lkuu;->e:Landroid/os/Handler;

    iget-object v1, p0, Lkut;->e:Lkur;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lkut;->g:Lkuu;

    iget-object v2, v1, Lkuu;->e:Landroid/os/Handler;

    iget-wide v3, v1, Lkuu;->f:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lkut;->b:I

    :try_start_0
    iget-object v0, p0, Lkut;->g:Lkuu;

    iget-object v0, v0, Lkuu;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lkut;->g:Lkuu;

    iget-object v0, v0, Lkuu;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkut;->g:Lkuu;

    iget-object v1, v1, Lkuu;->e:Landroid/os/Handler;

    iget-object v2, p0, Lkut;->e:Lkur;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lkut;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lkut;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lkut;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lkut;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lkut;->g:Lkuu;

    iget-object v0, v0, Lkuu;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkut;->g:Lkuu;

    iget-object v1, v1, Lkuu;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lkut;->e:Lkur;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkut;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lkut;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lkut;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lkut;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
