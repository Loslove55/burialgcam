.class public Lcom/google/android/apps/camera/stats/ViewfinderJankSession;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/camera/stats/timing/TimingSession;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field private h:Lorh;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->d:I

    iput v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->e:I

    iput v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->f:I

    iput v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->g:I

    return-void
.end method

.method public static final a(Lmpf;DD)Lorh;
    .locals 7

    sget-object v0, Lorh;->i:Lorh;

    invoke-virtual {v0}, Lpcu;->f()Lpcp;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iget-boolean v3, v0, Lpcp;->c:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lpcp;->b()V

    iput-boolean v4, v0, Lpcp;->c:Z

    :goto_0
    iget-object v3, v0, Lpcp;->b:Lpcu;

    check-cast v3, Lorh;

    iget v5, v3, Lorh;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lorh;->a:I

    iput-wide v1, v3, Lorh;->b:J

    invoke-interface {p0}, Lmpf;->d()J

    move-result-wide v1

    iget-boolean v3, v0, Lpcp;->c:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lpcp;->b()V

    iput-boolean v4, v0, Lpcp;->c:Z

    :goto_1
    iget-object v3, v0, Lpcp;->b:Lpcu;

    check-cast v3, Lorh;

    iget v5, v3, Lorh;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Lorh;->a:I

    iput-wide v1, v3, Lorh;->d:J

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v1}, Lmpf;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v2}, Lmpf;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v3}, Lmpf;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-boolean v1, v0, Lpcp;->c:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lpcp;->b()V

    iput-boolean v4, v0, Lpcp;->c:Z

    :goto_2
    iget-object v1, v0, Lpcp;->b:Lpcu;

    check-cast v1, Lorh;

    iget v3, v1, Lorh;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Lorh;->a:I

    iput-wide v5, v1, Lorh;->c:J

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkbg;->a(J)I

    move-result v1

    iget-boolean v2, v0, Lpcp;->c:Z

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lpcp;->b()V

    iput-boolean v4, v0, Lpcp;->c:Z

    :goto_3
    iget-object v2, v0, Lpcp;->b:Lpcu;

    check-cast v2, Lorh;

    iget v3, v2, Lorh;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lorh;->a:I

    iput v1, v2, Lorh;->e:I

    :cond_5
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkbg;->a(J)I

    move-result p0

    iget-boolean v1, v0, Lpcp;->c:Z

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lpcp;->b()V

    iput-boolean v4, v0, Lpcp;->c:Z

    :goto_4
    iget-object v1, v0, Lpcp;->b:Lpcu;

    check-cast v1, Lorh;

    iget v2, v1, Lorh;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorh;->a:I

    iput p0, v1, Lorh;->f:I

    :cond_7
    const-wide/16 v1, 0x0

    cmpl-double p0, p1, v1

    if-lez p0, :cond_9

    invoke-static {p1, p2}, Lkbg;->a(D)I

    move-result p0

    iget-boolean p1, v0, Lpcp;->c:Z

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lpcp;->b()V

    iput-boolean v4, v0, Lpcp;->c:Z

    :goto_5
    iget-object p1, v0, Lpcp;->b:Lpcu;

    check-cast p1, Lorh;

    iget p2, p1, Lorh;->a:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p1, Lorh;->a:I

    iput p0, p1, Lorh;->h:I

    :cond_9
    cmpl-double p0, p3, v1

    if-lez p0, :cond_b

    invoke-static {p3, p4}, Lkbg;->a(D)I

    move-result p0

    iget-boolean p1, v0, Lpcp;->c:Z

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lpcp;->b()V

    iput-boolean v4, v0, Lpcp;->c:Z

    :goto_6
    iget-object p1, v0, Lpcp;->b:Lpcu;

    check-cast p1, Lorh;

    iget p2, p1, Lorh;->a:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Lorh;->a:I

    iput p0, p1, Lorh;->g:I

    :cond_b
    invoke-virtual {v0}, Lpcp;->f()Lpcu;

    move-result-object p0

    check-cast p0, Lorh;

    return-object p0
.end method


# virtual methods
.method public final a(Lorh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->h:Lorh;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->h:Lorh;

    :cond_0
    return-void
.end method

.method public getDelay150PctCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->f:I

    return v0
.end method

.method public getDelay500PctCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->g:I

    return v0
.end method

.method public getDelay50PctCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->e:I

    return v0
.end method
