.class public Lcom/google/googlex/gcam/InterleavedReadViewU8;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedReadViewU8__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedReadViewU8;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->b:Z

    iput-wide p1, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->b:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_InterleavedReadViewU8(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Loyy;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedReadViewU8_data(JLcom/google/googlex/gcam/InterleavedReadViewU8;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v2, Loyy;

    invoke-direct {v2, v0, v1}, Loyy;-><init>(J)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedReadViewU8_width(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedReadViewU8_height(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedReadViewU8_channels(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedReadViewU8_x_stride(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a()V

    return-void
.end method

.method public final g()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedReadViewU8_y_stride(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedReadViewU8_c_stride(JLcom/google/googlex/gcam/InterleavedReadViewU8;)I

    move-result v0

    return v0
.end method
