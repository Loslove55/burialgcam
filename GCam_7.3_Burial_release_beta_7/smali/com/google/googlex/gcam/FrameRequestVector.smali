.class public Lcom/google/googlex/gcam/FrameRequestVector;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FrameRequestVector__SWIG_0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/FrameRequestVector;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/googlex/gcam/FrameRequestVector;->a:J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/googlex/gcam/FrameRequest;
    .locals 3

    new-instance v0, Lcom/google/googlex/gcam/FrameRequest;

    iget-wide v1, p0, Lcom/google/googlex/gcam/FrameRequestVector;->a:J

    invoke-static {v1, v2, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequestVector_get(JLcom/google/googlex/gcam/FrameRequestVector;I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/googlex/gcam/FrameRequest;-><init>(J)V

    return-object v0
.end method

.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequestVector;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Lcom/google/googlex/gcam/FrameRequestVector;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequestVector;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequestVector_size(JLcom/google/googlex/gcam/FrameRequestVector;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/FrameRequestVector;->a()V

    return-void
.end method
