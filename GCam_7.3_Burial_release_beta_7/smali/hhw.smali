.class public final Lhhw;
.super Lhhe;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field private final d:Loac;

.field private final e:Lery;

.field private f:Lhhr;

.field private g:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LkyShtImgFltr"

    invoke-static {v0}, Lijd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhhw;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lhhb;Lhiq;Loac;Lery;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lhhe;-><init>(Lhhb;Lhiq;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lhhw;->f:Lhhr;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lhhw;->g:D

    iput-object p3, p0, Lhhw;->d:Loac;

    iput-object p4, p0, Lhhw;->e:Lery;

    return-void
.end method

.method public static a(Lhgy;Ljava/util/concurrent/Executor;Loac;Lltz;Lhhy;Llvj;)Lhhw;
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    new-instance p3, Lery;

    invoke-direct {p3}, Lery;-><init>()V

    new-instance v0, Lhic;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lhic;-><init>(Lhhp;Ljava/util/concurrent/Executor;Lhhy;Lery;Llvj;)V

    new-instance p1, Lhhw;

    invoke-direct {p1, p0, v0, p2, p3}, Lhhw;-><init>(Lhhb;Lhiq;Loac;Lery;)V

    iput-object p1, v0, Lhic;->c:Lhhw;

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized a(Lhhr;D)Lhhr;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhhw;->f:Lhhr;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lhhw;->g:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    :try_start_1
    iput-object p1, p0, Lhhw;->f:Lhhr;

    iput-wide p2, p0, Lhhw;->g:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Loxo;
    .locals 3

    iget-object v0, p0, Lhhw;->e:Lery;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lery;->d:J

    invoke-super {p0}, Lhhe;->a()Loxo;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/util/Set;Lhpq;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p2, Lhhw;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Filtered Image future failed to return a single image. There are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " images.  No Image produced."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lijd;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lhhw;->e:Lery;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lery;->e:J

    sget-object v0, Lhhw;->c:Ljava/lang/String;

    iget-object v1, p0, Lhhw;->e:Lery;

    iget-wide v2, v1, Lery;->e:J

    iget-wide v4, v1, Lery;->d:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x36

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "LS calculation session time (ms)= "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lijd;->f(Ljava/lang/String;)V

    invoke-interface {p2}, Lhpq;->a()Liio;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Liio;->a()Liir;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lhhw;->e:Lery;

    iget-wide v2, v1, Lery;->d:J

    iput-wide v2, v0, Liir;->b:J

    iget-wide v2, v1, Lery;->e:J

    iput-wide v2, v0, Liir;->c:J

    iget-object v2, v1, Lery;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, v1, Lery;->f:Ljava/util/List;

    if-nez v1, :cond_1

    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    nop

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    :goto_0
    nop

    :try_start_3
    iput-object v1, v0, Liir;->d:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :cond_2
    :goto_1
    iget-object v0, p0, Lhhw;->d:Loac;

    check-cast v0, Loag;

    iget-object v0, v0, Loag;->a:Ljava/lang/Object;

    check-cast v0, Lhhv;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhhr;

    iget-object v1, p0, Lhhw;->e:Lery;

    invoke-interface {v0, p1, p2, v1}, Lhhv;->a(Lhhr;Lhpq;Lery;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :cond_3
    :try_start_6
    sget-object p2, Lhhw;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Filtered Image return multiple images. There are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " images.  No Image produced."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lijd;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Lucky Shot Filter returned multiple images."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    invoke-super {p0}, Lhhe;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
