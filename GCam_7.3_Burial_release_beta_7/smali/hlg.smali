.class public final Lhlg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lffx;

.field private b:Lhjx;


# direct methods
.method public constructor <init>(Lffx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lhlg;->a:Lffx;

    return-void
.end method

.method private final declared-synchronized a(J)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhlg;->b:Lhjx;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lhjx;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const-wide/32 v2, -0x5f5e0ff

    add-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Lhjx;)F
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p1, Lhjx;->b:J

    invoke-direct {p0, v0, v1}, Lhlg;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhlg;->a:Lffx;

    iget-object v1, p0, Lhlg;->b:Lhjx;

    invoke-interface {v0, v1, p1}, Lffx;->a(Lhjx;Lhjx;)F

    move-result v0

    iget-wide v1, p1, Lhjx;->b:J

    iget-object v3, p0, Lhlg;->b:Lhjx;

    iget-wide v3, v3, Lhjx;->b:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    const v1, -0x42b33333    # -0.05f

    mul-float v0, v0, v1

    iget-wide v1, p1, Lhjx;->c:J

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lhjx;->b:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x42

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not find previous metadata for frame at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "GlobalMotionSharpnessFrameQualityScorer"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhlg;->b:Lhjx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
