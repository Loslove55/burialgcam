.class final Lmlx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lmly;

.field private b:J


# direct methods
.method public synthetic constructor <init>(Lmly;)V
    .locals 2

    iput-object p1, p0, Lmlx;->a:Lmly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lmlx;->b:J

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lmlx;->a:Lmly;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lmlx;->a:Lmly;

    iget-object v3, v2, Lmly;->a:Ljava/util/List;

    iget v2, v2, Lmly;->c:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmlu;

    iget-wide v3, p0, Lmlx;->b:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lmlx;->b:J

    iput-wide v3, v2, Lmlu;->d:J

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, v2, Lmlu;->e:J

    const/4 p1, 0x0

    aget p1, v0, p1

    iput p1, v2, Lmlu;->f:F

    const/4 p1, 0x1

    aget v3, v0, p1

    iput v3, v2, Lmlu;->g:F

    const/4 v3, 0x2

    aget v0, v0, v3

    iput v0, v2, Lmlu;->h:F

    iget-object v0, p0, Lmlx;->a:Lmly;

    iget v2, v0, Lmly;->c:I

    add-int/2addr v2, p1

    rem-int/lit16 v2, v2, 0x1770

    iput v2, v0, Lmly;->c:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
