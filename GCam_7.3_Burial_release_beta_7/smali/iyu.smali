.class public final Liyu;
.super Ljava/lang/Object;

# interfaces
.implements Liyt;


# instance fields
.field private final a:Ldhy;

.field private final b:Ldeg;

.field private final c:Ldev;


# direct methods
.method public constructor <init>(Ldhy;Ldev;Ldeg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liyu;->a:Ldhy;

    iput-object p2, p0, Liyu;->c:Ldev;

    iput-object p3, p0, Liyu;->b:Ldeg;

    const-string p1, "tracking-meta"

    invoke-virtual {p2, p1}, Ldev;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    iget-object v0, p0, Liyu;->b:Ldeg;

    invoke-virtual {v0}, Ldeg;->a()Lhjx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lhjx;->c:J

    const-wide/32 v3, 0x2faf080

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget v0, v0, Lhjx;->e:I

    int-to-long v0, v0

    const-wide/16 v2, 0x15e

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized a(Lluo;J)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liyu;->a:Ldhy;

    invoke-virtual {v0}, Ldhy;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lluo;

    iget v1, p1, Lluo;->a:I

    iget p1, p1, Lluo;->b:I

    invoke-direct {v0, v1, p1}, Lluo;-><init>(II)V

    iget-object p1, p0, Liyu;->a:Ldhy;

    invoke-virtual {p1}, Ldhy;->a()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Liyu;->a:Ldhy;

    const-string v2, "trk-gyro-session"

    invoke-virtual {p1, v0, v1, v2}, Ldhy;->a(Lluo;ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Liyu;->b:Ldeg;

    invoke-virtual {p1, p2, p3}, Ldeg;->a(J)Lhjx;

    move-result-object p1

    iget-object v0, p0, Liyu;->a:Ldhy;

    invoke-virtual {v0, p2, p3, p1}, Ldhy;->a(JLhjx;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(J)[F
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liyu;->a:Ldhy;

    invoke-virtual {v0}, Ldhy;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p1, 0x9

    new-array p1, p1, [F

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p1, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v1, p1, v0

    const/4 v0, 0x3

    aput v1, p1, v0

    const/4 v0, 0x4

    aput p2, p1, v0

    const/4 v0, 0x5

    aput v1, p1, v0

    const/4 v0, 0x6

    aput v1, p1, v0

    const/4 v0, 0x7

    aput v1, p1, v0

    const/16 v0, 0x8

    aput p2, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Liyu;->b:Ldeg;

    invoke-virtual {v0, p1, p2}, Ldeg;->a(J)Lhjx;

    move-result-object v0

    iget-object v2, p0, Liyu;->a:Ldhy;

    invoke-virtual {v2, p1, p2, v0}, Ldhy;->a(JLhjx;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnci;

    invoke-virtual {p1}, Lnci;->b()[F

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liyu;->a:Ldhy;

    invoke-virtual {v0}, Ldhy;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liyu;->c:Ldev;

    const-string v1, "tracking-meta"

    invoke-virtual {v0, v1}, Ldev;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
